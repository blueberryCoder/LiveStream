package com.blueberry.media;

/**
 * Created by blueberry on 1/16/2017.
 */

public final class PublishJni {
    static {
        System.loadLibrary("publish");
    }

    static native long init(String url, int timeOut,
                            boolean dumpVideo, String dumpVideoPath,
                            boolean dumpAudio, String dumpAudioPath,
                            boolean dumpFlv, String dumpFlvPath
    );

    static native int sendVideoData(long cptr, byte[] data, int len, long timestamp);

    static native int sendAacData(long cptr, byte[] data, int len, long timestamp);

    static native int stop(long cptr);

    static native int sendMetaData(long cptr,
                                   double width,
                                   double height,
                                   double videoDataRate,
                                   double frameRate,
                                   double audioDataRate,
                                   double audioSampleRate,
                                   double audioSampleSize,
                                   boolean stereo
                                   );
}
