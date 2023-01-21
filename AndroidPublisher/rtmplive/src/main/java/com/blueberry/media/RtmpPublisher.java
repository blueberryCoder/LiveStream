package com.blueberry.media;

/**
 * Created by blueberry on 1/16/2017.
 */

public class RtmpPublisher {

    private long cPtr;

    public static RtmpPublisher newInstance() {
        return new RtmpPublisher();
    }

    private RtmpPublisher() {
    }

    public int init(String url, int timeOut,
                    boolean dumpVideo, String dumpVideoPath,
                    boolean dumpAudio, String dumpAudioPath,
                    boolean dumpFlv, String dumpFlvPath
    ) {
        cPtr = PublishJni.init(url, timeOut, dumpVideo, dumpVideoPath, dumpAudio, dumpAudioPath, dumpFlv, dumpFlvPath);
        if (cPtr != 0) {
            return 0;
        }
        return -1;
    }

    public int sendVideoData(byte[] data, int len, long timestamp) {
        return PublishJni.sendVideoData(cPtr, data, len, timestamp);
    }

    public int sendAacData(byte[] data, int len, long timestamp) {
        return PublishJni.sendAacData(cPtr, data, len, timestamp);
    }

    public int sendMetaData(
            double width,
            double height,
            double videoDataRate,
            double frameRate,
            double audioDataRate,
            double audioSampleRate,
            double audioSampleSize,
            boolean stereo
    ) {
        return PublishJni.sendMetaData(cPtr,
                width,
                height,
                videoDataRate,
                frameRate,
                audioDataRate,
                audioSampleRate,
                audioSampleSize,
                stereo
        );
    }

    public int stop() {
        try {
            return PublishJni.stop(cPtr);
        } finally {
            cPtr = 0;
        }
    }

    @Override
    protected void finalize() throws Throwable {
        super.finalize();
        if (cPtr != 0) {
            stop();
        }
    }
}
