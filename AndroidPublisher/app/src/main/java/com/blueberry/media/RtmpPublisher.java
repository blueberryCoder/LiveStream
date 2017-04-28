package com.blueberry.media;

/**
 * Created by blueberry on 1/16/2017.
 */

public class RtmpPublisher {

    private long cPtr;
    private long timeOffset;

    public static RtmpPublisher newInstance() {

        return new RtmpPublisher();
    }
    private RtmpPublisher(){}

    public int init(String url, int w, int h, int timeOut) {
        cPtr = PublishJni.init(url, w, h, timeOut);
        if (cPtr != 0) {
            return 0;
        }
        return -1;
    }

    public int sendSpsAndPps(byte[] sps, int spsLen, byte[] pps, int ppsLen, long timeOffset) {
        this.timeOffset = timeOffset;
        return PublishJni.sendSpsAndPps(cPtr, sps, spsLen, pps, ppsLen, 0);
    }

    public int sendVideoData(byte[] data, int len, long timestamp) {
        if(timestamp-timeOffset<=0){return -1;}
        return PublishJni.sendVideoData(cPtr, data, len, timestamp - timeOffset);
    }

    public int sendAacSpec(byte[] data, int len) {
        return PublishJni.sendAacSpec(cPtr, data, len);
    }

    public int sendAacData(byte[] data, int len, long timestamp) {
        if(timestamp-timestamp<0){return -1;}
        return PublishJni.sendAacData(cPtr, data, len, timestamp - timeOffset);
    }

    public int stop() {
        try {
            return PublishJni.stop(cPtr);
        }finally {
            cPtr=0;
        }
    }

    @Override
    protected void finalize() throws Throwable {
        super.finalize();
        if(cPtr!=0){
            stop();
        }
    }
}
