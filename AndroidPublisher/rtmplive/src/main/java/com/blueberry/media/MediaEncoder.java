package com.blueberry.media;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import android.util.Log;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Date;
import java.util.concurrent.LinkedBlockingQueue;

import static android.media.MediaCodec.CONFIGURE_FLAG_ENCODE;
import static android.media.MediaFormat.KEY_BIT_RATE;
import static android.media.MediaFormat.KEY_COLOR_FORMAT;
import static android.media.MediaFormat.KEY_FRAME_RATE;
import static android.media.MediaFormat.KEY_I_FRAME_INTERVAL;
import static android.media.MediaFormat.KEY_MAX_INPUT_SIZE;


/**
 * Created by blueberry on 3/6/2017.
 * <p>
 * 封装音视频解码，对视频进行AVC编码、对音频进行AAC编码。
 */

public class MediaEncoder {
    private static final String TAG = "MediaEncoder";
    private Config mConfig;

    private MediaCodec vEncoder; //视频编码器
    private MediaCodec aEncoder;
    private MediaCodec.BufferInfo vBufferInfo = new MediaCodec.BufferInfo(),
            aBufferInfo = new MediaCodec.BufferInfo();
    private Thread videoEncoderThread, audioEncoderThread;
    private boolean videoEncoderLoop, audioEncoderLoop;
    private long presentationTimeUs;
    private Callback mCallback;
    private LinkedBlockingQueue<byte[]> videoQueue;
    private LinkedBlockingQueue<byte[]> audioQueue;

    public static MediaEncoder newInstance(Config config) {
        return new MediaEncoder(config);
    }

    private MediaEncoder(Config config) {
        this.mConfig = config;
    }

    /**
     * 设置回调
     *
     * @param callback 回调
     */
    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    /**
     * 开始
     */
    public void start() {
        startAudioEncode();
        startVideoEncode();
    }

    /**
     * 停止
     */
    public void stop() {
        stopAudioEncode();
        stopVideoEncode();
    }

    /**
     * 释放
     */
    public void release() {
        releaseAudioEncoder();
        releaseVideoEncoder();
    }

    /**
     * 初始化音频编码器
     *
     * @param sampleRate  音频采样率
     * @param chanelCount 声道数
     * @throws IOException 创建编码器失败
     */
    public void initAudioEncoder(int sampleRate, int chanelCount) throws IOException {
        MediaCodec aencoder = MediaCodec.createEncoderByType(MediaFormat.MIMETYPE_AUDIO_AAC);
        MediaFormat format = MediaFormat.createAudioFormat(MediaFormat.MIMETYPE_AUDIO_AAC,
                sampleRate, chanelCount);
        format.setInteger(KEY_MAX_INPUT_SIZE, 0);
        format.setInteger(KEY_BIT_RATE, sampleRate * chanelCount);
        aencoder.configure(format, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE);
        audioQueue = new LinkedBlockingQueue<>();
        aEncoder = aencoder;
    }


    /**
     * 初始化视频编码器。
     *
     * @param width  视频的宽
     * @param height 视频的高
     * @throws IOException 创建编码器失败
     */
    public int initVideoEncoder(int width, int height, int fps) throws IOException {
        // 初始化
        MediaCodecInfo mediaCodecInfo = getMediaCodecInfoByType(MediaFormat.MIMETYPE_VIDEO_AVC);
        int colorFormat = getColorFormat(mediaCodecInfo);
        MediaCodec vencoder = MediaCodec.createByCodecName(mediaCodecInfo.getName());
        MediaFormat format = MediaFormat.createVideoFormat(MediaFormat.MIMETYPE_VIDEO_AVC,
                width, height);
        format.setInteger(KEY_MAX_INPUT_SIZE, 0);
        format.setInteger(KEY_BIT_RATE, mConfig.bitrate);
        format.setInteger(KEY_COLOR_FORMAT, colorFormat);
        format.setInteger(KEY_FRAME_RATE, fps);
        format.setInteger(KEY_I_FRAME_INTERVAL, 1);
        vencoder.configure(format, null, null, CONFIGURE_FLAG_ENCODE);
        videoQueue = new LinkedBlockingQueue<>();
        vEncoder = vencoder;
        return colorFormat;
    }

    /**
     * 开始视频编码
     */
    public void startVideoEncode() {
        if (vEncoder == null) {
            throw new RuntimeException("请初始化视频编码器");
        }
        if (videoEncoderLoop) {
            throw new RuntimeException("必须先停止");
        }

        videoEncoderThread = new Thread() {
            @Override
            public void run() {
                presentationTimeUs = System.currentTimeMillis() * 1000;
                vEncoder.start();
                while (videoEncoderLoop && !Thread.interrupted()) {
                    try {

                        byte[] data = videoQueue.take(); //待编码的数据
                        encodeVideoData(data);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        break;
                    }
                }

            }
        };
        videoEncoderLoop = true;
        videoEncoderThread.start();
    }

    /**
     * 开始音频编码
     */
    public void startAudioEncode() {
        if (aEncoder == null) {
            throw new RuntimeException("请初始化音频编码器");
        }

        if (audioEncoderLoop) {
            throw new RuntimeException("必须先停止");
        }
        audioEncoderThread = new Thread() {
            @Override
            public void run() {
                presentationTimeUs = System.currentTimeMillis() * 1000;
                aEncoder.start();
                while (audioEncoderLoop && !Thread.interrupted()) {
                    try {
                        byte[] data = audioQueue.take();
                        encodeAudioData(data);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        break;
                    }
                }

            }
        };
        audioEncoderLoop = true;
        audioEncoderThread.start();
    }

    /**
     * 添加视频数据
     *
     * @param data
     */
    public void putVideoData(byte[] data) {
        try {
            videoQueue.put(data);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /**
     * 添加音频数据
     *
     * @param data
     */
    public void putAudioData(byte[] data) {
        try {
            audioQueue.put(data);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /**
     * stop视频编码
     */
    public void stopVideoEncode() {
        videoEncoderLoop = false;
        videoEncoderThread.interrupt();
        vEncoder.stop();
    }

    /**
     * 停止音频编码
     */
    public void stopAudioEncode() {
        audioEncoderLoop = false;
        audioEncoderThread.interrupt();
        Log.i(TAG, "run: 停止音频编码");
        aEncoder.stop();
    }

    /**
     * 释放视频编码器
     */
    public void releaseVideoEncoder() {
        vEncoder.release();
    }

    /**
     * 释放音频编码器
     */
    public void releaseAudioEncoder() {
        aEncoder.release();
    }

    /**
     * 视频编码
     *
     * @param dstByte
     */
    private void encodeVideoData(byte[] dstByte) {
        ByteBuffer[] inputBuffers = vEncoder.getInputBuffers();
        ByteBuffer[] outputBuffers = vEncoder.getOutputBuffers();

        int inputBufferId = vEncoder.dequeueInputBuffer(-1);
        if (inputBufferId >= 0) {
            // fill inputBuffers[inputBufferId] with valid data
            ByteBuffer bb = inputBuffers[inputBufferId];
            bb.clear();
            bb.put(dstByte, 0, dstByte.length);
            long pts = new Date().getTime() * 1000 - presentationTimeUs;
            vEncoder.queueInputBuffer(inputBufferId, 0, dstByte.length, pts, 0);
        }

        int outputBufferId = vEncoder.dequeueOutputBuffer(vBufferInfo, 0);
        if (outputBufferId >= 0) {
            // outputBuffers[outputBufferId] is ready to be processed or rendered.
            ByteBuffer bb = outputBuffers[outputBufferId];
            if (null != mCallback) {
                mCallback.outputVideoData(bb, vBufferInfo);
            }
            vEncoder.releaseOutputBuffer(outputBufferId, false);
        }

    }

    /**
     * 音频解码
     *
     * @param data
     */
    private void encodeAudioData(byte[] data) {
        ByteBuffer[] inputBuffers = aEncoder.getInputBuffers();
        ByteBuffer[] outputBuffers = aEncoder.getOutputBuffers();
        int inputBufferId = aEncoder.dequeueInputBuffer(-1);
        if (inputBufferId >= 0) {
            ByteBuffer bb = inputBuffers[inputBufferId];
            bb.clear();
            bb.put(data, 0, data.length);
            long pts = new Date().getTime() * 1000 - presentationTimeUs;
            aEncoder.queueInputBuffer(inputBufferId, 0, data.length, pts, 0);
        }

        int outputBufferId = aEncoder.dequeueOutputBuffer(aBufferInfo, 0);
        if (outputBufferId >= 0) {
            // outputBuffers[outputBufferId] is ready to be processed or rendered.
            ByteBuffer bb = outputBuffers[outputBufferId];
            if (mCallback != null) {
                mCallback.outputAudioData(bb, aBufferInfo);
            }
            aEncoder.releaseOutputBuffer(outputBufferId, false);
        }

    }


    private static int getColorFormat(MediaCodecInfo mediaCodecInfo) {
        int matchedForamt = 0;
        MediaCodecInfo.CodecCapabilities codecCapabilities =
                mediaCodecInfo.getCapabilitiesForType(MediaFormat.MIMETYPE_VIDEO_AVC);
        for (int i = 0; i < codecCapabilities.colorFormats.length; i++) {
            int format = codecCapabilities.colorFormats[i];
            if (format >= codecCapabilities.COLOR_FormatYUV420Planar &&
                    format <= codecCapabilities.COLOR_FormatYUV420PackedSemiPlanar
                    ) {
                if (format >= matchedForamt) {
                    matchedForamt = format;
                }
            }
        }
        switch (matchedForamt) {
            case MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420Planar:
                Log.i(TAG, "selected yuv420p");
                break;
            case MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420PackedPlanar:
                Log.i(TAG, "selected yuv420pp");
                break;
            case MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420SemiPlanar:
                Log.i(TAG, "selected yuv420sp");
                break;
            case MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420PackedSemiPlanar:
                Log.i(TAG, "selected yuv420psp");
                break;

        }
        return matchedForamt;
    }

    private static MediaCodecInfo getMediaCodecInfoByType(String mimeType) {
        for (int i = 0; i < MediaCodecList.getCodecCount(); i++) {
            MediaCodecInfo codecInfo = MediaCodecList.getCodecInfoAt(i);
            if (!codecInfo.isEncoder()) {
                continue;
            }
            String[] types = codecInfo.getSupportedTypes();
            for (int j = 0; j < types.length; j++) {
                if (types[j].equalsIgnoreCase(mimeType)) {
                    return codecInfo;
                }
            }
        }
        return null;
    }

    public interface Callback {
        void outputVideoData(ByteBuffer bb, MediaCodec.BufferInfo info);

        void outputAudioData(ByteBuffer bb, MediaCodec.BufferInfo info);
    }
}
