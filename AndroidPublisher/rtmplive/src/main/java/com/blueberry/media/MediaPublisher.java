package com.blueberry.media;

import android.app.Activity;
import android.media.MediaCodec;
import android.util.Log;
import android.view.SurfaceHolder;
import android.widget.Toast;

import com.blueberry.media.utils.Logger;
import com.blueberry.media.utils.ToastUtil;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.concurrent.LinkedBlockingQueue;


/**
 * Created by blueberry on 3/7/2017.
 */
public class MediaPublisher {
    private static final String TAG = "MediaPublisher";

    private Config mConfig;

    public static final int NAL_SLICE = 1;
    public static final int NAL_SLICE_DPA = 2;
    public static final int NAL_SLICE_DPB = 3;
    public static final int NAL_SLICE_DPC = 4;
    public static final int NAL_SLICE_IDR = 5;
    public static final int NAL_SEI = 6;
    public static final int NAL_SPS = 7;
    public static final int NAL_PPS = 8;
    public static final int NAL_AUD = 9;
    public static final int NAL_FILLER = 12;

    private LinkedBlockingQueue<Runnable> mRunnables = new LinkedBlockingQueue<>();
    private Thread workThread;

    private VideoGatherer mVideoGatherer;
    private AudioGatherer mAudioGatherer;
    private MediaEncoder mMediaEncoder;

    private RtmpPublisher mRtmpPublisher;
    public boolean isPublish;

    private AudioGatherer.Params audioParams;
    private VideoGatherer.Params videoParams;
    private boolean loop;


    public static MediaPublisher newInstance(Config config) {
        return new MediaPublisher(config);
    }

    private MediaPublisher(Config config) {
        this.mConfig = config;
    }

    /**
     * 初始化视频采集器，音频采集器，视频编码器，音频编码器
     */
    public void init() {
        mVideoGatherer = VideoGatherer
                .newInstance(mConfig);
        mAudioGatherer = AudioGatherer.newInstance(mConfig);
        mMediaEncoder = MediaEncoder.newInstance(mConfig);
        mRtmpPublisher = RtmpPublisher.newInstance();
        setListener();

        workThread = new Thread("publish-thread") {
            @Override
            public void run() {
                while (loop && !Thread.interrupted()) {
                    try {
                        Runnable runnable = mRunnables.take();
                        runnable.run();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
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
        audioParams = mAudioGatherer.initAudioDevice();
    }

    /**
     * 初始化摄像头
     *
     * @param act
     * @param holder
     */
    public void initVideoGatherer(Activity act, SurfaceHolder holder) {
        videoParams = mVideoGatherer.initCamera(act, holder);
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
            mMediaEncoder.initAudioEncoder(audioParams.sampleRate, audioParams.channelCount);
        } catch (IOException e) {
            e.printStackTrace();
            Logger.e(TAG, "初始化音频编码器失败");
        }

        try {
            int colorFormat = mMediaEncoder.initVideoEncoder(videoParams.previewWidth,
                    videoParams.previewHeight, mConfig.fps);
            mVideoGatherer.setColorFormat(colorFormat);
        } catch (IOException e) {
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
//            ToastUtil.toast("connect failed");
                    return;
                }
                Logger.i(TAG,"start publish success. ");
                isPublish = true;
            }
        }.start();
    }


    /**
     * 停止发布
     */
    public void stopPublish() {
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                mRtmpPublisher.stop();
                loop = false;
                workThread.interrupt();
            }
        };

        mRunnables.add(runnable);
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
                }else {
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

    private void onEncodedAvcFrame(ByteBuffer bb, final MediaCodec.BufferInfo vBufferInfo) {
        Logger.i(TAG, "onEncodedAvcFrame: ");
        // AnnexB : 0 0 0 1
        //          0 0 1

        final byte[] bytes = new byte[vBufferInfo.size];
        bb.get(bytes);
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                Logger.d(TAG, "send video data");
                mRtmpPublisher.sendVideoData(bytes, bytes.length,
                        vBufferInfo.presentationTimeUs / 1000);
            }
        };
        try {
            mRunnables.put(runnable);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        return;

//        int offset = 4;
//        if (bb.get(2) == 0x01) {
//            offset = 3;
//        }
//        int type = bb.get(offset) & 0x1f;
//        Logger.i(TAG, "VIDEO type=" + type);
//        if (type == NAL_SPS) {
//            //[0, 0, 0, 1, 103, 66, -64, 13, -38, 5, -126, 90, 1, -31, 16, -115, 64, 0, 0, 0, 1, 104, -50, 6, -30]
//            //打印发现这里将 SPS帧和 PPS帧合在了一起发送
//            // SPS为 [4，len-8]
//            // PPS为后4个字节
//            final byte[] pps = new byte[4];
//            final byte[] sps = new byte[vBufferInfo.size - 12];
//            bb.getInt();// 抛弃 0,0,0,1
//            bb.get(sps, 0, sps.length);
//            bb.getInt();
//            bb.get(pps, 0, pps.length);
//            Logger.i(TAG, "VIDEO sps:" + Arrays.toString(sps) + ",PPS=" + Arrays.toString(pps));
//            Runnable runnable = new Runnable() {
//                @Override
//                public void run() {
//                    Logger.d(TAG, "send sps pps: ");
//                    mRtmpPublisher.sendSpsAndPps(sps, sps.length, pps, pps.length,
//                            vBufferInfo.presentationTimeUs / 1000);
//                }
//            };
//            try {
//                mRunnables.put(runnable);
//            } catch (InterruptedException e) {
//                e.printStackTrace();
//            }
//
//        } else if (type == NAL_SLICE || type == NAL_SLICE_IDR) {
//            final byte[] bytes = new byte[vBufferInfo.size];
//            bb.get(bytes);
//            Runnable runnable = new Runnable() {
//                @Override
//                public void run() {
//                    Logger.d(TAG,"send video data");
//                    mRtmpPublisher.sendVideoData(bytes, bytes.length,
//                            vBufferInfo.presentationTimeUs / 1000);
//                }
//            };
//            try {
//                mRunnables.put(runnable);
//            } catch (InterruptedException e) {
//                e.printStackTrace();
//            }
//
//        }

    }

    private void onEncodeAacFrame(ByteBuffer bb, final MediaCodec.BufferInfo aBufferInfo) {
        Logger.d(TAG, "onEncodeAacFrame");


        final byte[] bytes = new byte[aBufferInfo.size];
        bb.get(bytes);
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                Logger.d(TAG, "send video data");
                mRtmpPublisher.sendAacData(bytes, bytes.length,
                        aBufferInfo.presentationTimeUs / 1000);
            }
        };
        try {
            mRunnables.put(runnable);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        return;

//        if (aBufferInfo.size == 2) {
//            final byte[] bytes = new byte[2];
//            bb.get(bytes);
//            Runnable runnable = new Runnable() {
//                @Override
//                public void run() {
//                    Logger.d(TAG, "send aac spec");
//                    mRtmpPublisher.sendAacSpec(bytes, 2);
//                }
//            };
//            try {
//                mRunnables.put(runnable);
//            } catch (InterruptedException e) {
//                e.printStackTrace();
//            }
//
//        } else {
//            final byte[] bytes = new byte[aBufferInfo.size];
//            bb.get(bytes);
//
//            Runnable runnable = new Runnable() {
//                @Override
//                public void run() {
//                    Logger.d(TAG, "send aac spec");
//
//                    mRtmpPublisher.sendAacData(bytes, bytes.length, aBufferInfo.presentationTimeUs / 1000);
//                }
//            };
//            try {
//                mRunnables.put(runnable);
//            } catch (InterruptedException e) {
//                e.printStackTrace();
//            }
//
//        }

    }


}
