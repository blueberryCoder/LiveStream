package com.blueberry.media;

import android.app.Activity;
import android.media.MediaCodec;
import android.util.Log;
import android.view.SurfaceHolder;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.concurrent.LinkedBlockingQueue;


/**
 * Created by blueberry on 3/7/2017.
 * 发送数据。
 */

public class MediaPublisher {
    private static final String TAG = "MediaPublisher";

    public static final int FPS = 30;

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

    public static final String url = "rtmp://192.168.155.1:1935/live/test";

    /**
     * 初始化
     */
    public void init() {
        mVideoGatherer = new VideoGatherer();
        mAudioGatherer = new AudioGatherer();
        mMediaEncoder = new MediaEncoder();
        mRtmpPublisher = new RtmpPublisher();
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
        mAudioGatherer.start();
    }

    /**
     * 初始化编码器
     */
    public void initEncoders() {
        try {
            mMediaEncoder.initAudioEncoder(audioParams.sampleRate, audioParams.channelCount);
            Log.e(TAG, "初始化音频编码器失败");
        } catch (IOException e) {
            e.printStackTrace();
        }

        try {
            int colorFormat = mMediaEncoder.initVideoEncoder(videoParams.previewWidth, videoParams.previewHeight, FPS);
            mVideoGatherer.setColorFormat(colorFormat);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 开始编码
     */
    public void startEncoder() {
        mMediaEncoder.start();
    }

    /**
     * 发布
     */
    public void starPublish() {
        if (isPublish) {
            return;
        }

        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                //初始化
                int ret = mRtmpPublisher.init(url, videoParams.previewWidth, videoParams.previewHeight, 1000);
                if (ret < 0) {
                    Log.e(TAG, "连接失败");
                    return;
                }

                isPublish = true;
            }
        };
        mRunnables.add(runnable);
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
                }
            }
        });

        mAudioGatherer.setCallback(new AudioGatherer.Callback() {
            @Override
            public void audioData(byte[] data) {
                if (isPublish) {
                    mMediaEncoder.putAudioData(data);
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
        int offset = 4;
        //判断帧的类型
        if (bb.get(2) == 0x01) {
            offset = 3;
        }
        int type = bb.get(offset) & 0x1f;
        Log.d(TAG, "type=" + type);
        if (type == NAL_SPS) {
            //[0, 0, 0, 1, 103, 66, -64, 13, -38, 5, -126, 90, 1, -31, 16, -115, 64, 0, 0, 0, 1, 104, -50, 6, -30]
            //打印发现这里将 SPS帧和 PPS帧合在了一起发送
            // SPS为 [4，len-8]
            // PPS为后4个字节
            final byte[] pps = new byte[4];
            final byte[] sps = new byte[vBufferInfo.size - 12];
            bb.getInt();// 抛弃 0,0,0,1
            bb.get(sps, 0, sps.length);
            bb.getInt();
            bb.get(pps, 0, pps.length);
            Log.d(TAG, "解析得到 sps:" + Arrays.toString(sps) + ",PPS=" + Arrays.toString(pps));
            Runnable runnable = new Runnable() {
                @Override
                public void run() {
                    mRtmpPublisher.sendSpsAndPps(sps, sps.length, pps, pps.length,
                            vBufferInfo.presentationTimeUs / 1000);
                }
            };
            try {
                mRunnables.put(runnable);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

        } else if (type == NAL_SLICE || type == NAL_SLICE_IDR) {
            final byte[] bytes = new byte[vBufferInfo.size];
            bb.get(bytes);
            Runnable runnable = new Runnable() {
                @Override
                public void run() {
                    mRtmpPublisher.sendVideoData(bytes, bytes.length,
                            vBufferInfo.presentationTimeUs / 1000);
                }
            };
            try {
                mRunnables.put(runnable);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

        }

    }

    private void onEncodeAacFrame(ByteBuffer bb, final MediaCodec.BufferInfo aBufferInfo) {
        // 1.界定符 FF F1
        // 2.加上界定符的前7个字节是帧描述信息
        // 3.AudioDecoderSpecificInfo 长度为2个字节如果是44100 改值为0x1210

        //http://blog.csdn.net/avsuper/article/details/24661533
        //http://www.tuicool.com/articles/aYvmua

        if (aBufferInfo.size == 2) {
//            https://my.oschina.net/zhangxu0512/blog/204070
//            faacEncSetConfiguration(m_hEncoder, pConfiguration);
//            int ret = faacEncGetDecoderSpecificInfo(m_hEncoder, &m_pSpc, &m_nSpc);

//            //AAC sequence header
//            int[] mpeg4audio_sample_rates = {
//                    96000, 88200, 64000, 48000, 44100, 32000,
//                    24000, 22050, 16000, 12000, 11025, 8000, 7350
//            };
//
//            int m_keyframe[] = new int[2];
//            //get keyframe info.
//            int index;
//            for (index = 0; index < 16; index++) {
//                if (aSampleRate == mpeg4audio_sample_rates[index]) {
//                    break;
//                }
//            }
//            m_keyframe[0] = 0x02 << 3 | index >> 1;
//            m_keyframe[1] = (index & 0x01) << 7 | aChanelCount << 3;
//
//            Log.d(TAG,"挂件"+Arrays.toString(m_keyframe));
            // 我打印发现，这里应该已经是吧关键帧计算好了，所以我们直接发送
            final byte[] bytes = new byte[2];
            bb.get(bytes);
            Runnable runnable = new Runnable() {
                @Override
                public void run() {
                    mRtmpPublisher.sendAacSpec(bytes, 2);
                }
            };
            try {
                mRunnables.put(runnable);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }


        } else {
            final byte[] bytes = new byte[aBufferInfo.size];
            bb.get(bytes);

            Runnable runnable = new Runnable() {
                @Override
                public void run() {
                    mRtmpPublisher.sendAacData(bytes, bytes.length, aBufferInfo.presentationTimeUs / 1000);
                }
            };
            try {
                mRunnables.put(runnable);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

        }

    }


}
