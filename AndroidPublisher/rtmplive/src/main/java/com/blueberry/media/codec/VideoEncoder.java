package com.blueberry.media.codec;

import static android.media.MediaCodec.CONFIGURE_FLAG_ENCODE;
import static android.media.MediaFormat.KEY_BIT_RATE;
import static android.media.MediaFormat.KEY_COLOR_FORMAT;
import static android.media.MediaFormat.KEY_FRAME_RATE;
import static android.media.MediaFormat.KEY_I_FRAME_INTERVAL;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import android.provider.MediaStore;

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

    static int index = 0;

    /**
     * init video encoder.
     */
    public int initVideoEncoder(int width, int height, int fps, int bitrate) {
        Logger.i(TAG, "init video encoder: width=" + width + ",height=" + height + ",fps=" + fps);
        MediaCodecInfo mediaCodecInfo = getMediaCodecInfoByType(MediaFormat.MIMETYPE_VIDEO_AVC);
        Logger.i(TAG, "supported format:" + getColorFormat(mediaCodecInfo));
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
        format.setInteger(KEY_BIT_RATE, width * height * 8 * 30);
        format.setInteger(MediaFormat.KEY_MAX_INPUT_SIZE, 0);

        format.setInteger(KEY_COLOR_FORMAT, MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420Planar);
        format.setInteger(MediaFormat.KEY_SLICE_HEIGHT,height);
        format.setInteger(KEY_FRAME_RATE, fps);
        format.setInteger(KEY_I_FRAME_INTERVAL, 10);
        encoder.configure(format, null, null, CONFIGURE_FLAG_ENCODE);
        return 0;
    }

    public void start() {
        encoder.start();
    }

    public VideoAvcSendResult sendData(byte[] bytes, int start, int len, boolean isEnd) {
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
                    long pts = computePresentationTime(index ++);
                    encoder.queueInputBuffer(idx, 0, send,
                            pts,
                            isEnd ? MediaCodec.BUFFER_FLAG_END_OF_STREAM : 0);
                    off += send;
                }
            } else if (idx == -1) {
                Logger.v(TAG, "send data try again");
                return new VideoAvcSendResult(off - start, VideoAvcSendResult.Type.TRY_AGAIN);
            } else {
                Logger.v(TAG, "send data idx=" + idx);
                return new VideoAvcSendResult(off - start, VideoAvcSendResult.Type.ERROR);
            }
        }
        return new VideoAvcSendResult(off - start, VideoAvcSendResult.Type.SUCCESS); // have sent
    }

    // https://blog.csdn.net/u010126792/article/details/86580878
    private byte[] config;

    public VideoAvcReceivedResult receiveData() {

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
                return new VideoAvcReceivedResult(VideoAvcReceivedResult.Type.CONFIG, config, false);
            } else if (bufferInfo.flags == MediaCodec.BUFFER_FLAG_SYNC_FRAME) {
//                byte[] buffer = new byte[bufferInfo.size + config.length];
//                System.arraycopy(config, 0, buffer, 0, config.length);
//                System.arraycopy(bufferArr, 0, buffer, config.length, bufferArr.length);
                Logger.d(TAG, "received codec sync frame");
                return new VideoAvcReceivedResult(VideoAvcReceivedResult.Type.NALU, bufferArr, isEndStream(bufferInfo));
            } else {
                Logger.d(TAG, "received codec other frame");
                return new VideoAvcReceivedResult(VideoAvcReceivedResult.Type.NALU, bufferArr, isEndStream(bufferInfo));
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
            return new VideoAvcReceivedResult(VideoAvcReceivedResult.Type.CONFIG, null, false);
        } else if (idx == MediaCodec.INFO_OUTPUT_BUFFERS_CHANGED) {
            Logger.i(TAG, "output buffers changed.");
        } else if (idx == MediaCodec.INFO_TRY_AGAIN_LATER) {
            Logger.v(TAG, "output try again.");
            return new VideoAvcReceivedResult(VideoAvcReceivedResult.Type.TRY_AGAIN, null, false);
        }
        return new VideoAvcReceivedResult(VideoAvcReceivedResult.Type.NONE, null, false);
    }

    public boolean isEndStream(MediaCodec.BufferInfo bufferInfo) {
        return (bufferInfo.flags & MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0;
    }

    private long computePresentationTime(long frameIndex) {
        return 132 + frameIndex * 1000000/ 15 ;
    }

    public void flush() {
        encoder.flush();
    }

    public void release() {
        encoder.stop();
        encoder.release();
    }

    public static String getColorFormat(MediaCodecInfo mediaCodecInfo) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = mediaCodecInfo.getCapabilitiesForType(MediaFormat.MIMETYPE_VIDEO_AVC);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < codecCapabilities.colorFormats.length; i++) {
            int format = codecCapabilities.colorFormats[i];
            sb.append(format);
            if (i != codecCapabilities.colorFormats.length - 1) {
                sb.append(",");
            }
        }
        return sb.toString();
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
}
