package com.blueberry.media;

/**
 * Created by blueberry on 1/16/2017.
 */

public final class PublishJni {
    static {
        System.loadLibrary("publish");
    }

    static native long init(String url, int w, int h, int timeOut);

    static native int sendSpsAndPps(long cptr, byte[] sps, int spsLen, byte[] pps,
                                    int ppsLen, long timestamp);

    static native int sendVideoData(long cptr, byte[] data, int len, long timestamp);

    static native int sendAacSpec(long cptr, byte[] data, int len);

    static native int sendAacData(long cptr, byte[] data, int len, long timestamp);

    static native int stop(long cptr);

}
