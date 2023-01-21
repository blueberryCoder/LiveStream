package com.blueberry.media;

import android.app.Activity;
import android.media.MediaCodec;
import android.util.Log;
import android.view.SurfaceHolder;

import com.blueberry.media.rtmp.RtmpCallback;
import com.blueberry.media.rtmp.RtmpError;
import com.blueberry.media.rtmp.RtmpErrorConst;
import com.blueberry.media.utils.HexUtils;
import com.blueberry.media.utils.Logger;
import com.blueberry.media.utils.ThreadUtils;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;


/**
 * Created by blueberry on 3/7/2017.
 */
public class MediaPublisher {
    private static final String TAG = "MediaPublisher";

    private Config mConfig;

    private Thread workThread;
    private VideoGatherer mVideoGatherer;
    private AudioGatherer mAudioGatherer;
    private MediaEncoder mMediaEncoder;

    private RtmpPublisher mRtmpPublisher;
    private boolean isPublishing;
    private boolean loop;

    private final MediaQueueManager mediaQueueManager = MediaQueueManager.newInstance();
    private FileOutputStream of;
    private AVSync avSync;

    public static MediaPublisher newInstance(Config config) {
        return new MediaPublisher(config);
    }

    private MediaPublisher(Config config) {
        this.mConfig = config;
        if (config.enableDumpVideoRaw) {
            try {
                of = new FileOutputStream(config.dumpVideoRawPath);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * init gathers and encoders
     */
    public void init() {
        mVideoGatherer = VideoGatherer.newInstance(mConfig);
        mAudioGatherer = AudioGatherer.newInstance(mConfig);
        mMediaEncoder = MediaEncoder.newInstance(mConfig);
        mRtmpPublisher = RtmpPublisher.newInstance();
        setListener();

        workThread = new Thread("publish-thread") {
            @Override
            public void run() {
                try {
                    MetaData data = mediaQueueManager.takeMetaData();
                    mRtmpPublisher.sendMetaData(
                            data.getWidth(),
                            data.getHeight(),
                            data.getVideoBitRate(),
                            data.getFps(),
                            data.getAudioBitRate(),
                            data.getAudioSampleRate(),
                            data.getAudioSampleSize(),
                            data.isStereo()
                    );
                    Logger.i(TAG, "send metaData " + data.toString());
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                while (loop && !Thread.interrupted()) {
                    // send Video Packet;
                    AudioPacket audioPacket = mediaQueueManager.pollAudioPacket();
                    if (audioPacket != null) {
                        mRtmpPublisher.sendAacData(audioPacket.getData(),
                                audioPacket.getData().length, audioPacket.getTimestamp());
                    }
                    VideoPacket videoPacket = mediaQueueManager.pollVideoPacket();
                    if (videoPacket != null) {
                        mRtmpPublisher.sendVideoData(videoPacket.getData(),
                                videoPacket.getData().length, videoPacket.getTimestamp());
                    }
                }
            }
        };

        loop = true;
        workThread.start();
    }

    /**
     * 初始化音频采集器
     */
    public void initAudioGatherer() {
        Logger.i(TAG, "initAudioGather");
        mAudioGatherer.initAudioDevice();
    }

    /**
     * 初始化摄像头
     *
     * @param act
     * @param holder
     */
    public void initVideoGatherer(Activity act, SurfaceHolder holder) {
        mVideoGatherer.initCamera(act, holder);
    }

    /**
     * 开始采集
     */
    public void startGather() {
        Logger.i(TAG, "start Gather");
        mAudioGatherer.start();
    }

    /**
     * 初始化编码器
     */
    public void initEncoders() {
        Logger.i(TAG, "initEncoders");
        try {
            AudioGatherParams params = mAudioGatherer.getCurrentParams();
            mMediaEncoder.initAudioEncoder(params);
        } catch (IOException e) {
            e.printStackTrace();
            Logger.e(TAG, "init audio encoder failed");
        }

        try {
            VideoGatherParams params = mVideoGatherer.getCurrentParams();
            int colorFormat = mMediaEncoder.initVideoEncoder(
                    params.getPreviewWidth(),
                    params.getPreviewHeight(),
                    params.getFrameRate());
            mVideoGatherer.setColorFormat(colorFormat);
        } catch (IOException e) {
            Logger.e(TAG, "init video encoder failed");
            e.printStackTrace();
        }
    }

    /**
     * 开始编码
     */
    public void startEncoder() {
        Logger.i(TAG, "start encoder");
        mMediaEncoder.start();
    }

    public boolean isPublishing() {
        return isPublishing;
    }

    /**
     * 发布
     */
    public void starPublish(RtmpCallback callback) {
        ThreadUtils.runOnIoThread(() -> {
            if (isPublishing) {
                Logger.w(TAG, "already start published");
                callback.onFailed(RtmpErrorConst.ERR_IS_PUBLISHING);
                return;
            }
            Logger.d(TAG, "starPublish: ");
            int ret = mRtmpPublisher.init(
                    mConfig.publishUrl,
                    mConfig.timeOut,
                    mConfig.enableDumpVideo,
                    mConfig.dumpVideoPath,
                    mConfig.enableDumpAudio,
                    mConfig.dumpAudioPath,
                    mConfig.enableDumpFlv,
                    mConfig.dumpFlvPath
            );
            if (ret < 0) {
                Logger.e(TAG, "connect failed");
                callback.onFailed(new RtmpError(ret, "connect failed"));
                return;
            }
            isPublishing = true;
            avSync = new AVSync();
            callback.onSuccess();
            Logger.d(TAG, "start publish success. ");
        });
    }


    /**
     * 停止发布
     */
    public void stopPublish(RtmpCallback callback) {
        ThreadUtils.runOnIoThread(() -> {
            loop = false;
            mRtmpPublisher.stop();
            workThread.interrupt();
            isPublishing = false;

            callback.onSuccess();
        });
    }

    /**
     * 停止编码
     */
    public void stopEncoder() {
        mMediaEncoder.stop();
    }

    /**
     * 停止采集
     */
    public void stopGather() {
        mAudioGatherer.stop();
    }

    /**
     * 释放
     */
    public void release() {
        Logger.i(TAG, "release: ");
        mMediaEncoder.release();
        mVideoGatherer.release();
        mAudioGatherer.release();
        loop = false;
        if (workThread != null) {
            workThread.interrupt();
        }
    }

    private void setListener() {
        mVideoGatherer.setCallback((data, colorFormat) -> {
            if (isPublishing) {
                if (mConfig.enableDumpVideoRaw) {
                    try {
                        of.write(data);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                mMediaEncoder.putVideoData(data);
            }
        });

        mAudioGatherer.setCallback(data -> {
            if (isPublishing) {
                mMediaEncoder.putAudioData(data);
            }
        });

        mMediaEncoder.setCallback(new MediaEncoder.Callback() {
            @Override
            public void outputVideoData(ByteBuffer bb, MediaCodec.BufferInfo info) {
                onEncodedAvcFrame(bb, info);
            }

            @Override
            public void outputAudioData(ByteBuffer bb, MediaCodec.BufferInfo info) {
                onEncodeAacFrame(bb, info);
            }
        });
    }

    private boolean isSendMetaData = false;

    private void onEncodedAvcFrame(ByteBuffer bb, final MediaCodec.BufferInfo vBufferInfo) {
        tryToSendMetaData();

        // AnnexB : 0 0 0 1
        //          0 0 1
        final byte[] bytes = new byte[vBufferInfo.size];
        bb.get(bytes, vBufferInfo.offset, vBufferInfo.size);
        Logger.i(TAG, "onEncodedAvcFrame: info.offset=" + vBufferInfo.offset +
                ",size=" + vBufferInfo.size + ",data=" + HexUtils.bytes2String(bytes, 4));
        VideoPacket packet = new VideoPacket();
        packet.setData(bytes);
        packet.setTimestamp(avSync.getRelativeTimestamp());
        try {
            mediaQueueManager.enqueueVideoPacket(packet);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    private void tryToSendMetaData() {
        if (!isSendMetaData) {
            MetaData metaData = new MetaData();
            AudioPacketParams audioPacketParams = mMediaEncoder.getCurrentAudioParams();
            VideoPacketParams videoPacketParams = mMediaEncoder.getCurrentVideoParams();

            metaData.setWidth(videoPacketParams.getWidth());
            metaData.setHeight(videoPacketParams.getHeight());
            metaData.setFps(videoPacketParams.getFrameRate());
            metaData.setVideoBitRate(videoPacketParams.getBitRate());
            metaData.setAudioSampleSize(audioPacketParams.getSampleSize());
            metaData.setAudioSampleRate(audioPacketParams.getSampleRate());
            metaData.setAudioBitRate(audioPacketParams.getBitRate());
            metaData.setStereo(audioPacketParams.isStereo());
            Logger.d(TAG, "enqueue metadata: " + metaData);
            mediaQueueManager.enqueueMetaData(metaData);
            isSendMetaData = true;
            avSync.logSetDataFrame();
        }
    }

    private void onEncodeAacFrame(ByteBuffer bb, final MediaCodec.BufferInfo aBufferInfo) {
        Logger.d(TAG, "onEncodeAacFrame");
        tryToSendMetaData();

        final byte[] bytes = new byte[aBufferInfo.size];
        bb.get(bytes);

        AudioPacket audioPacket = new AudioPacket();
        audioPacket.setData(bytes);
        audioPacket.setTimestamp(avSync.getRelativeTimestamp());
        try {
            mediaQueueManager.enqueueAudioPacket(audioPacket);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
