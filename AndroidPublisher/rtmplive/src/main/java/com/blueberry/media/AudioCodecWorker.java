package com.blueberry.media;

import com.blueberry.media.codec.CodecReceivedResult;
import com.blueberry.media.codec.CodecSendResult;
import com.blueberry.media.codec.audio.AudioEncoder;

/**
 * Created by blueberry on 2023/1/21
 */
public class AudioCodecWorker extends Thread {

    private final AudioEncoder mAudioEncoder;

    private boolean audioEncoderLoop;


    private final AVSync avSync;
    private final MediaQueueManager mediaQueueManager;
    private final IMetaDataSender iMetaDataSender;


    private AudioCodecWorker(AVSync avSync,
                             MediaQueueManager mediaQueueManager,
                             IMetaDataSender sender,
                             int sampleRate,
                             int channelCount,
                             boolean stereo,
                             int bitrate
    ) {
        this.avSync = avSync;
        this.mediaQueueManager = mediaQueueManager;
        this.iMetaDataSender = sender;

        this.mAudioEncoder = AudioEncoder.newInstance();
        int result = this.mAudioEncoder.initAudioEncoder(sampleRate, channelCount, stereo, bitrate);
        // TODO deal result
    }

    public static AudioCodecWorker newInstance(AVSync avSync,
                                               MediaQueueManager mediaQueueManager,
                                               IMetaDataSender sender,
                                               int sampleRate,
                                               int channelCount,
                                               boolean stereo,
                                               int bitrate) {
        return new AudioCodecWorker(avSync, mediaQueueManager, sender,
                sampleRate,
                channelCount,
                stereo,
                bitrate);
    }

    @Override
    public void run() {
        while (audioEncoderLoop && !Thread.interrupted()) {
            CodecReceivedResult codecReceivedResult = mAudioEncoder.receiveData();

            CodecReceivedResult.Type type = codecReceivedResult.getType();
            byte[] buffer = codecReceivedResult.getBuffer();
            if (buffer != null) {
                AudioPacket packet = new AudioPacket();
                packet.setData(buffer);
                packet.setTimestamp(avSync.getRelativeTimestamp());
                try {
                    iMetaDataSender.tryToSendMetaData();
                    mediaQueueManager.enqueueAudioPacket(packet);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }

        mAudioEncoder.stop();
    }

    public CodecSendResult sendData(byte[] bytes, int start, int len, boolean isEnd) {
        return mAudioEncoder.sendData(bytes, start, len, isEnd);
    }

    public AudioPacketParams getAudioPacketParams() {
        return mAudioEncoder.getAudioPacketParams();
    }

    @Override
    public synchronized void start() {
        mAudioEncoder.start();
        audioEncoderLoop = true;
        super.start();

    }

    public void stopEncode() {
        audioEncoderLoop = false;
    }

    void release() {
        mAudioEncoder.release();
    }
}
