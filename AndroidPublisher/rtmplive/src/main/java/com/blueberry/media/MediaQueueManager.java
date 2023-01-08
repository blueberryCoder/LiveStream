package com.blueberry.media;

import java.util.concurrent.LinkedBlockingDeque;

/**
 * Created by blueberry on 2023/1/7
 */
public class MediaQueueManager {

    private LinkedBlockingDeque<VideoPacket> videoPacketQueue = new LinkedBlockingDeque<>();
    private LinkedBlockingDeque<AudioPacket> audioPacketQueue = new LinkedBlockingDeque<>();
    // only one
    private LinkedBlockingDeque<MetaData> metaDataQueue= new LinkedBlockingDeque<>();

    private MediaQueueManager() {}

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
}
