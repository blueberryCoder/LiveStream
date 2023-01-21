package com.blueberry.media;

/**
 * Created by blueberry on 2023/1/20
 */
public class AVSync {
    private long metaDataTimestamp = 0;

    public void logSetDataFrame() {
        metaDataTimestamp = System.currentTimeMillis();
    }

    public long getRelativeTimestamp() {
        return System.currentTimeMillis() - metaDataTimestamp;
    }
}
