package com.blueberry.media;

/**
 * Created by muyonggang on 2023/1/7
 */
public class MediaPacket {

    private byte[] data ;
    private long timestamp;

    public byte[] getData() {
        return data;
    }

    public void setData(byte[] data) {
        this.data = data;
    }

    public void setTimestamp(long timestamp) {
        this.timestamp = timestamp;
    }

    public long getTimestamp() {
        return timestamp;
    }
}
