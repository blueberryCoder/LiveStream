package com.blueberry.media;

import java.util.concurrent.LinkedBlockingDeque;

/**
 * Created by blueberry on 2023/1/7
 */
public class MediaQueueManager {

    private final LinkedBlockingDeque<VideoPacket> videoPacketQueue = new LinkedBlockingDeque<>();
    private final LinkedBlockingDeque<AudioPacket> audioPacketQueue = new LinkedBlockingDeque<>();
    // only one
    private final LinkedBlockingDeque<MetaData> metaDataQueue= new LinkedBlockingDeque<>();

    private MediaQueueManager() {}

    private long currentTimestamp = 0;

    public static MediaQueueManager newInstance() {
        return new MediaQueueManager();
    }

    public MetaData takeMetaData() throws InterruptedException {
        return metaDataQueue.take();
    }

    public void enqueueMetaData(MetaData data) {
        metaDataQueue.add(data);
    }

    public void enqueueVideoPacket(VideoPacket packet) throws InterruptedException {
       videoPacketQueue.put(packet);
    }

    public void enqueueAudioPacket(AudioPacket packet) throws InterruptedException {
        audioPacketQueue.put(packet);
    }

    public VideoPacket takeVideoPacket() throws InterruptedException {
        return videoPacketQueue.take();
    }

    public AudioPacket takeAudioPacket() throws InterruptedException {
        return audioPacketQueue.take();
    }


    public VideoPacket pollVideoPacket()  {
        VideoPacket peek = videoPacketQueue.peek();
        if (peek != null && peek.getTimestamp() >= currentTimestamp) {
            videoPacketQueue.poll();
            currentTimestamp = peek.getTimestamp();
            return peek;
        }
        return null;
    }
    public AudioPacket pollAudioPacket()  {
        AudioPacket peek = audioPacketQueue.peek();
        if(peek != null && peek.getTimestamp() >= currentTimestamp) {
            audioPacketQueue.poll();
            currentTimestamp = peek.getTimestamp();
            return peek;
        }
        return null;
    }
}
