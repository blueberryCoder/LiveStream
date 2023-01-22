package com.blueberry.media;

import android.app.Activity;
import android.view.SurfaceHolder;

import com.blueberry.media.codec.CodecSendResult;
import com.blueberry.media.rtmp.RtmpCallback;
import com.blueberry.media.rtmp.RtmpError;
import com.blueberry.media.rtmp.RtmpErrorConst;
import com.blueberry.media.utils.Logger;
import com.blueberry.media.utils.ThreadUtils;
import com.blueberry.media.yuv.RotateMode;
import com.blueberry.media.yuv.Yuv420Util;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;


/**
 * Created by blueberry on 3/7/2017.
 */
public class MediaPublisher implements IMetaDataSender {
    private static final String TAG = "MediaPublisher";

    private Config mConfig;

    private Thread publishThread;

    private VideoGatherer mVideoGatherer;
    private AudioGatherer mAudioGatherer;


    private AudioCodecWorker mAudioCodecWorker;
    private VideoCodecWorker mVideoCodecWorker;

    private RtmpPublisher mRtmpPublisher;

    private boolean isPublishing;
    private boolean loop;

    private boolean isSendMetaData = false;
    private boolean rotate90 = true;

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

        mRtmpPublisher = RtmpPublisher.newInstance();
        setListener();


        publishThread = new Thread("publish-thread") {
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
        publishThread.start();
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
        AudioGatherParams currentParams = mAudioGatherer.getCurrentParams();
        mAudioCodecWorker = AudioCodecWorker.newInstance(avSync, mediaQueueManager,
                this,
                currentParams.getSampleRate(),
                currentParams.getChannelCount(),
                true,
                30_000
        );

        VideoGatherParams videoGatherParams = mVideoGatherer.getCurrentParams();

        int width = videoGatherParams.getPreviewWidth();
        int height = videoGatherParams.getPreviewHeight();

        if (rotate90) {
            int tmp = width;
            width = height;
            height = tmp;
        }

        // rotate  90;
        mVideoCodecWorker = VideoCodecWorker.newInstance(avSync,
                mediaQueueManager,
                this,
                width,
                height,
                videoGatherParams.getFrameRate(),
                mConfig.bitrate);
    }

    /**
     * 开始编码
     */
    public void startEncoder() {
        Logger.i(TAG, "start encoder");
        mAudioCodecWorker.start();
        mVideoCodecWorker.start();
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
            avSync = new AVSync();
            callback.onSuccess();
            isPublishing = true;
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
            publishThread.interrupt();
            isPublishing = false;

            callback.onSuccess();
        });
    }

    /**
     * 停止编码
     */
    public void stopEncoder() {
        mAudioCodecWorker.stopEncode();
        mVideoCodecWorker.stopEncode();
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
        Logger.d(TAG, "release: ");
        mAudioCodecWorker.release();
        mVideoCodecWorker.release();

        mVideoGatherer.release();
        mAudioGatherer.release();
        loop = false;
        if (publishThread != null) {
            publishThread.interrupt();
        }
    }

    private void setListener() {
        mVideoGatherer.setCallback((data ) -> {
            if (isPublishing) {
                if (mConfig.enableDumpVideoRaw) {
                    try {
                        of.write(data);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }

                if(rotate90) {
                    byte[] buffer = new byte[data.length];
                    int width = mVideoGatherer.getCurrentParams().getPreviewWidth();
                    int height = mVideoGatherer.getCurrentParams().getPreviewHeight();
                    Yuv420Util.I420Rotate(data, buffer, width, height, RotateMode.DEGREE_90);
                    data = buffer;
                }

                CodecSendResult codecSendResult = mVideoCodecWorker.sendData(data, 0, data.length, false);
                if (codecSendResult.getType() == CodecSendResult.Type.TRY_AGAIN) {
                    // todo more action for send
                    // next
                }
            }
        });

        mAudioGatherer.setCallback(data -> {
            if (isPublishing) {
                CodecSendResult codecSendResult = mAudioCodecWorker.sendData(data, 0, data.length, false);
                if (codecSendResult.getType() == CodecSendResult.Type.TRY_AGAIN) {
                    // todo more action for send
                }
            }
        });
    }


    @Override
    public void tryToSendMetaData() {
        if (!isSendMetaData) {
            MetaData metaData = new MetaData();

            AudioPacketParams audioPacketParams = mAudioCodecWorker.getAudioPacketParams();
            VideoPacketParams videoPacketParams = mVideoCodecWorker.getVideoPacketParams();

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
}
