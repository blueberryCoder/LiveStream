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

import com.blueberry.media.utils.Logger;


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
    // video raw data queue
    private LinkedBlockingQueue<byte[]> videoQueue;
    // pcm data queue
    private LinkedBlockingQueue<byte[]> audioQueue;

    private VideoPacketParams currentVideoParams = new VideoPacketParams();
    private AudioPacketParams currentAudioParams= new AudioPacketParams();


    public AudioPacketParams getCurrentAudioParams() {
        return currentAudioParams;
    }

    public VideoPacketParams getCurrentVideoParams() {
        return currentVideoParams;
    }

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
     * init audio encoder
     */
    public void initAudioEncoder(AudioGatherParams audioGatherParams) throws IOException {
        MediaCodec aencoder = MediaCodec.createEncoderByType(MediaFormat.MIMETYPE_AUDIO_AAC);
        MediaFormat format = MediaFormat.createAudioFormat(MediaFormat.MIMETYPE_AUDIO_AAC,
                audioGatherParams.getSampleRate(), audioGatherParams.getChannelCount());

        int bitRate = 30000; // 30k TODO config
        format.setInteger(KEY_MAX_INPUT_SIZE, 0);
        format.setInteger(KEY_BIT_RATE, bitRate);
        aencoder.configure(format, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE);

        this.currentAudioParams.setSampleRate( audioGatherParams.getSampleRate());
        this.currentAudioParams.setSampleSize(audioGatherParams.getSampleSize());
        this.currentAudioParams.setBitRate(bitRate);

        audioQueue = new LinkedBlockingQueue<>();
        aEncoder = aencoder;
    }


    /**
     * init video encoder.
     */
    public int initVideoEncoder(int width, int height, int fps) throws IOException {

        MediaCodecInfo mediaCodecInfo = getMediaCodecInfoByType(MediaFormat.MIMETYPE_VIDEO_AVC);
        int colorFormat = getColorFormat(mediaCodecInfo);
        MediaCodec vencoder = MediaCodec.createByCodecName(mediaCodecInfo.getName());
        MediaFormat format = MediaFormat.createVideoFormat(
                MediaFormat.MIMETYPE_VIDEO_AVC,
                width,
                height);
        format.setInteger(KEY_MAX_INPUT_SIZE, 0);
        format.setInteger(KEY_BIT_RATE, mConfig.bitrate);
        format.setInteger(KEY_COLOR_FORMAT, colorFormat);
        format.setInteger(KEY_FRAME_RATE, fps);
        format.setInteger(KEY_I_FRAME_INTERVAL, 1);
        vencoder.configure(format, null, null, CONFIGURE_FLAG_ENCODE);
        videoQueue = new LinkedBlockingQueue<>();
        vEncoder = vencoder;

        this.currentVideoParams.setWidth(width);
        this.currentVideoParams.setHeight(height);
        this.currentVideoParams.setFrameRate(fps);
        this.currentVideoParams.setBitRate(mConfig.bitrate);

        return colorFormat;
    }

    /**
     * 开始视频编码
     */
    public void startVideoEncode() {
        if (vEncoder == null) {
            throw new IllegalStateException("video encoder is null");
        }
        if (videoEncoderLoop) {
            throw new IllegalStateException("video encoder is running");
        }

        videoEncoderThread = new Thread() {
            @Override
            public void run() {
                presentationTimeUs = System.currentTimeMillis() * 1000;
                vEncoder.start();
                Logger.i(TAG,"video encoder started.");
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
            throw new IllegalStateException("audio Encoder is null");
        }

        if (audioEncoderLoop) {
            throw new IllegalStateException("audio Encoder is running");

        }
        audioEncoderThread = new Thread() {
            @Override
            public void run() {
                presentationTimeUs = System.currentTimeMillis() * 1000;
                aEncoder.start();
                Logger.i(TAG,"audio encoder start.");
                while (audioEncoderLoop && !Thread.interrupted()) {
                    try {
                        byte[] data = audioQueue.take();
                        encodeAudioData(data);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        break;
                    }
                }

                Logger.d(TAG, "quite encoder thread");
            }
        };
        audioEncoderLoop = true;
        audioEncoderThread.start();
    }

    /**
     * add video data
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
        Logger.i(TAG, "encodeVideoData: data.length = " + dstByte.length);
        int timeout = 100;
        int offset = 0;
        while (offset < dstByte.length) {
            int inputBufferId = vEncoder.dequeueInputBuffer(timeout);
            if (inputBufferId >= 0) {
                // fill inputBuffers[inputBufferId] with valid data
                ByteBuffer bb = vEncoder.getInputBuffer(inputBufferId);
                int len = Math.min(bb.limit(), dstByte.length - offset);
                bb.put(dstByte, offset, len);
                long pts = new Date().getTime() * 1000 - presentationTimeUs;
                vEncoder.queueInputBuffer(inputBufferId, 0, dstByte.length, pts, 0);
                offset += len;
            }

            int outputBufferId = vEncoder.dequeueOutputBuffer(vBufferInfo, timeout);
            if (outputBufferId >= 0) {
                // outputBuffers[outputBufferId] is ready to be processed or rendered.
                ByteBuffer bb = vEncoder.getOutputBuffer(outputBufferId);
                if (null != mCallback) {
                    mCallback.outputVideoData(bb, vBufferInfo);
                }
                vEncoder.releaseOutputBuffer(outputBufferId, false);
            }
        }
    }

    /**
     * 音频解码
     *
     * @param data
     */
    private void encodeAudioData(byte[] data) {
        Logger.i(TAG, "encodeAudioData");

        int timeout = 100;
        int offset = 0;
        while (offset < data.length) {
            Logger.i(TAG, "encodeAudioData: offset = " + offset);
            int inputBufferId = aEncoder.dequeueInputBuffer(timeout);
            if (inputBufferId >= 0) {
                ByteBuffer inputBuffer = aEncoder.getInputBuffer(inputBufferId);
                if (inputBuffer == null) {
                    throw new RuntimeException("MediaCodec Error get input buffer is null");
                }
                int limit = inputBuffer.limit();
                int length = Math.min(limit, data.length - offset);
                inputBuffer.put(data, offset, length);
                long pts = new Date().getTime() * 1000 - presentationTimeUs;
                aEncoder.queueInputBuffer(inputBufferId, 0, length, pts, 0);
                offset += length;
            }

            int outputBufferId = aEncoder.dequeueOutputBuffer(aBufferInfo, timeout);
            if (outputBufferId >= 0) {
                Logger.i(TAG, "encodeAudioData: dequeue output buffer" + outputBufferId);
                ByteBuffer bb = aEncoder.getOutputBuffer(outputBufferId);
                if (mCallback != null) {
                    mCallback.outputAudioData(bb, aBufferInfo);
                }
                aEncoder.releaseOutputBuffer(outputBufferId, false);
            }
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
