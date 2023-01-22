package com.blueberry.media.codec.video;

import static android.media.MediaCodec.CONFIGURE_FLAG_ENCODE;
import static android.media.MediaFormat.KEY_BIT_RATE;
import static android.media.MediaFormat.KEY_COLOR_FORMAT;
import static android.media.MediaFormat.KEY_FRAME_RATE;
import static android.media.MediaFormat.KEY_I_FRAME_INTERVAL;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;

import com.blueberry.media.VideoPacketParams;
import com.blueberry.media.codec.CodecReceivedResult;
import com.blueberry.media.codec.CodecSendResult;
import com.blueberry.media.utils.HexUtils;
import com.blueberry.media.utils.Logger;
import com.blueberry.media.utils.TimeUtils;

import java.io.IOException;
import java.nio.ByteBuffer;

/**
 * Created by blueberry on 2023/1/15
 */
public class VideoEncoder {
    private static final String TAG = "VideoEncoder";
    private static final int TIME_OUT = 100;

    private MediaCodec encoder = null;
    private VideoPacketParams videoPacketParams;

    // https://blog.csdn.net/u010126792/article/details/86580878
    private byte[] config;

    private VideoEncoder() {
    }

    public VideoPacketParams getVideoPacketParams() {
        return videoPacketParams;
    }

    public static VideoEncoder newInstance() {
        return new VideoEncoder();
    }

    /**
     * init video encoder.
     */
    public int initVideoEncoder(int width, int height, int fps, int bitrate) {
        Logger.d(TAG, "init video encoder: width=" + width + ",height=" + height + ",fps=" + fps);
        try {
            encoder = MediaCodec.createEncoderByType(MediaFormat.MIMETYPE_VIDEO_AVC);
        } catch (IOException e) {
            Logger.e(TAG, "create video encoder failed");
            e.printStackTrace();
            return -1;
        }
        MediaFormat format = MediaFormat.createVideoFormat(MediaFormat.MIMETYPE_VIDEO_AVC,
                width,
                height
        );
        format.setInteger(KEY_BIT_RATE, bitrate);
        format.setInteger(KEY_COLOR_FORMAT, MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420Planar);
        format.setInteger(MediaFormat.KEY_SLICE_HEIGHT, height);
        format.setInteger(KEY_FRAME_RATE, fps);
        format.setInteger(KEY_I_FRAME_INTERVAL, 10);
        encoder.configure(format, null, null, CONFIGURE_FLAG_ENCODE);

        videoPacketParams = new VideoPacketParams(width, height, fps, bitrate);
        return 0;
    }

    public void start() {
        encoder.start();
    }

    public CodecSendResult sendData(byte[] bytes, int start, int len, boolean isEnd) {
        int end = start + len;
        int off = start;
        while (off < end) {
            int idx = encoder.dequeueInputBuffer(TIME_OUT);
            if (idx >= 0) {
                ByteBuffer inputBuffer = encoder.getInputBuffer(idx);
                int remaining = end - off;
                if (inputBuffer != null) {
                    Logger.d(TAG, "remaining=" + remaining + ",limit=" + inputBuffer.limit());
                    int send = Math.min(remaining, inputBuffer.limit());
                    inputBuffer.put(bytes, off, send);
                    encoder.queueInputBuffer(idx, 0, send, TimeUtils.currentUs(),
                            isEnd ? MediaCodec.BUFFER_FLAG_END_OF_STREAM : 0);
                    off += send;
                }
            } else if (idx == -1) {
                Logger.v(TAG, "send data try again");
                return new CodecSendResult(off - start, CodecSendResult.Type.TRY_AGAIN);
            } else {
                Logger.v(TAG, "send data idx=" + idx);
                return new CodecSendResult(off - start, CodecSendResult.Type.ERROR);
            }
        }
        return new CodecSendResult(off - start, CodecSendResult.Type.SUCCESS); // have sent
    }

    public CodecReceivedResult receiveData() {

        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        int idx = encoder.dequeueOutputBuffer(bufferInfo, TIME_OUT);
        if (idx >= 0) {
            ByteBuffer outputBuffer = encoder.getOutputBuffer(idx);
            byte[] bufferArr = new byte[bufferInfo.size];
            outputBuffer.get(bufferArr, bufferInfo.offset, bufferInfo.size);
            encoder.releaseOutputBuffer(idx, false);
            if (bufferInfo.flags == MediaCodec.BUFFER_FLAG_CODEC_CONFIG) {
                // config
                config = bufferArr;
                Logger.d(TAG, "received codec config.");
                return new CodecReceivedResult(CodecReceivedResult.Type.CONFIG, config, false);
            } else if (bufferInfo.flags == MediaCodec.BUFFER_FLAG_SYNC_FRAME) {
//                byte[] buffer = new byte[bufferInfo.size + config.length];
//                System.arraycopy(config, 0, buffer, 0, config.length);
//                System.arraycopy(bufferArr, 0, buffer, config.length, bufferArr.length);
                Logger.d(TAG, "received codec sync frame");
                return new CodecReceivedResult(CodecReceivedResult.Type.NALU, bufferArr, isEndStream(bufferInfo));
            } else {
                Logger.d(TAG, "received codec other frame");
                return new CodecReceivedResult(CodecReceivedResult.Type.NALU, bufferArr, isEndStream(bufferInfo));
            }
        } else if (idx == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
            MediaFormat outputFormat = encoder.getOutputFormat();
            ByteBuffer csd0 = outputFormat.getByteBuffer("csd-0");
            ByteBuffer csd1 = outputFormat.getByteBuffer("csd-1");
            byte[] spsArr = csd0.array();
            byte[] ppsArr = csd1.array();
            // sps=00000001 67640016ACB405A1ED00DA1426A0
            // pps=00000001 68EE06F2C0
            Logger.i(TAG, "sps=" + HexUtils.bytes2String(spsArr));
            Logger.i(TAG, "pps=" + HexUtils.bytes2String(ppsArr));
            return new CodecReceivedResult(CodecReceivedResult.Type.CONFIG, null, false);
        } else if (idx == MediaCodec.INFO_OUTPUT_BUFFERS_CHANGED) {
            Logger.i(TAG, "output buffers changed.");
        } else if (idx == MediaCodec.INFO_TRY_AGAIN_LATER) {
            Logger.v(TAG, "output try again.");
            return new CodecReceivedResult(CodecReceivedResult.Type.TRY_AGAIN, null, false);
        }
        return new CodecReceivedResult(CodecReceivedResult.Type.NONE, null, false);
    }

    public boolean isEndStream(MediaCodec.BufferInfo bufferInfo) {
        return (bufferInfo.flags & MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0;
    }

    public void stop() {
        encoder.stop();
    }

    public void flush() {
        encoder.flush();
    }

    public void release() {
        encoder.stop();
        encoder.release();
    }
}
