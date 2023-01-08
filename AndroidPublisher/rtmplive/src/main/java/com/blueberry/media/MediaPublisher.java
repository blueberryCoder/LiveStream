package com.blueberry.media;

import android.app.Activity;
import android.media.MediaCodec;
import android.util.Log;
import android.view.SurfaceHolder;

import com.blueberry.media.utils.Logger;

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
    public boolean isPublish;
    private boolean loop;

    private MediaQueueManager mediaQueueManager = MediaQueueManager.newInstance();

    public static MediaPublisher newInstance(Config config) {
        return new MediaPublisher(config);
    }

    private MediaPublisher(Config config) {
        this.mConfig = config;
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
                // wait for MetaData
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

    /**
     * 发布
     */
    public void starPublish() {
        new Thread() {
            @Override
            public void run() {
                if (isPublish) {
                    Logger.i(TAG, "already start published");
                    return;
                }
                Logger.i(TAG, "starPublish: ");
                int ret = mRtmpPublisher.init(
                        mConfig.publishUrl,
                        mConfig.timeOut,
                        mConfig.enableDumpVideo,
                        mConfig.dumpVideoPath,
                        mConfig.enableDumpAudio,
                        mConfig.dumpAudioPath
                );
                if (ret < 0) {
                    Logger.e(TAG, "connect failed");
                    return;
                }
                Logger.i(TAG, "start publish success. ");
                isPublish = true;
            }
        }.start();
    }


    /**
     * 停止发布
     */
    public void stopPublish() {
        new Thread() {
            @Override
            public void run() {
                loop = false;
                mRtmpPublisher.stop();
                workThread.interrupt();
            }
        }.start();
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
        Log.i(TAG, "release: ");
        mMediaEncoder.release();
        mVideoGatherer.release();
        mAudioGatherer.release();

        loop = false;
        if (workThread != null) {
            workThread.interrupt();
        }
    }

    private void setListener() {
        mVideoGatherer.setCallback(new VideoGatherer.Callback() {
            @Override
            public void onReceive(byte[] data, int colorFormat) {
                if (isPublish) {
                    mMediaEncoder.putVideoData(data);
                } else {
//                    Logger.w(TAG, "onReceive: publish is false");
                }
            }
        });

        mAudioGatherer.setCallback(new AudioGatherer.Callback() {
            @Override
            public void audioData(byte[] data) {
                if (isPublish) {
                    mMediaEncoder.putAudioData(data);
                } else {
//                    Logger.w(TAG, "onReceive: publish is false");
                }
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
    private long metaDataTimestamp = 0;


    private void onEncodedAvcFrame(ByteBuffer bb, final MediaCodec.BufferInfo vBufferInfo) {
        Logger.i(TAG, "onEncodedAvcFrame: ");
        tryToSendMetaData();

        // AnnexB : 0 0 0 1
        //          0 0 1
        final byte[] bytes = new byte[vBufferInfo.size];
        bb.get(bytes);
        VideoPacket packet = new VideoPacket();
        packet.setData(bytes);
        packet.setTimestamp(System.currentTimeMillis() - metaDataTimestamp);
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
            Logger.i(TAG, "enqueue metadata: " + metaData);
            mediaQueueManager.enqueueMetaData(metaData);
            isSendMetaData = true;
            metaDataTimestamp = System.currentTimeMillis();
        }
    }

    private void onEncodeAacFrame(ByteBuffer bb, final MediaCodec.BufferInfo aBufferInfo) {
        Logger.d(TAG, "onEncodeAacFrame");
        tryToSendMetaData();

        final byte[] bytes = new byte[aBufferInfo.size];
        bb.get(bytes);

        AudioPacket audioPacket = new AudioPacket();
        audioPacket.setData(bytes);
        audioPacket.setTimestamp(System.currentTimeMillis() - metaDataTimestamp);
        try {
            mediaQueueManager.enqueueAudioPacket(audioPacket);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }
}
