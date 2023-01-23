package com.blueberry.media;

import com.blueberry.media.utils.Logger;

import java.util.concurrent.LinkedBlockingDeque;

/**
 * Created by blueberry on 2023/1/7
 */
public class MediaQueueManager {

    private static final String TAG = "MediaQueueManager";

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
        VideoPacket item = videoPacketQueue.poll();
        // drop frame
        // TODO: if I frame dropped should skip p frame.
        long count = 0;
        while (item != null && item.getTimestamp() < currentTimestamp) {
            item = videoPacketQueue.poll();
            count++;

            if (count > 1) {
                Logger.w(TAG, "drop video frame");
            }
        }
        return item;
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
