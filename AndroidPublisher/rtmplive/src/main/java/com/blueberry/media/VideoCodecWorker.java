package com.blueberry.media;

import com.blueberry.media.codec.CodecReceivedResult;
import com.blueberry.media.codec.CodecSendResult;
import com.blueberry.media.codec.video.VideoEncoder;

/**
 * Created by blueberry on 2023/1/21
 */
public class VideoCodecWorker extends Thread {

    private final VideoEncoder mVideoEncoder;

    private boolean videoEncoderLoop;

    private final AVSync avSync;
    private final MediaQueueManager mediaQueueManager;
    private final IMetaDataSender iMetaDataSender;

    public static VideoCodecWorker newInstance(AVSync avSync,
                                               MediaQueueManager mediaQueueManager,
                                               IMetaDataSender sender,
                                               int width,
                                               int height,
                                               int frameRate,
                                               int bitrate) {
        return new VideoCodecWorker(avSync, mediaQueueManager, sender,
                width,
                height,
                frameRate,
                bitrate
        );
    }


    private VideoCodecWorker(AVSync avSync,
                             MediaQueueManager mediaQueueManager,
                             IMetaDataSender sender,
                             int width,
                             int height,
                             int frameRate,
                             int bitrate
    ) {
        this.avSync = avSync;
        this.mediaQueueManager = mediaQueueManager;
        this.iMetaDataSender = sender;

        this.mVideoEncoder = VideoEncoder.newInstance();
        int result = this.mVideoEncoder.initVideoEncoder(width, height, frameRate, bitrate);
        // TODO
    }

    @Override
    public void run() {
        while (videoEncoderLoop && !Thread.interrupted()) {
            CodecReceivedResult codecReceivedResult = mVideoEncoder.receiveData();
            CodecReceivedResult.Type type = codecReceivedResult.getType();
            byte[] buffer = codecReceivedResult.getBuffer();
            if (buffer != null) {
                iMetaDataSender.tryToSendMetaData();
                VideoPacket packet = new VideoPacket();
                packet.setData(buffer);
                packet.setTimestamp(avSync.getRelativeTimestamp());
                try {
                    mediaQueueManager.enqueueVideoPacket(packet);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
        mVideoEncoder.stop();
    }

    public CodecSendResult sendData(byte[] bytes, int start, int len, boolean isEnd) {
        return mVideoEncoder.sendData(bytes, start, len, isEnd);
    }

    public VideoPacketParams getVideoPacketParams() {
        return mVideoEncoder.getVideoPacketParams();
    }

    @Override
    public synchronized void start() {
        mVideoEncoder.start();
        videoEncoderLoop = true;
        super.start();

    }

    public void stopEncode() {
        videoEncoderLoop = false;
    }

    void release() {
        mVideoEncoder.release();
    }
}
