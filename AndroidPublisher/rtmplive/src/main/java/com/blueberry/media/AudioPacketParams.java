package com.blueberry.media;

/**
 * Created by muyonggang on 2023/1/7
 */
public class AudioPacketParams {
    private double bitRate;
    private int sampleSize;
    private int sampleRate;
    private boolean stereo;

    public AudioPacketParams(double bitRate, int sampleSize, int sampleRate, boolean stereo) {
        this.bitRate = bitRate;
        this.sampleSize = sampleSize;
        this.sampleRate = sampleRate;
        this.stereo = stereo;
    }

    public boolean isStereo() {
        return stereo;
    }

    public void setStereo(boolean stereo) {
        this.stereo = stereo;
    }

    public int getSampleSize() {
        return sampleSize;
    }

    public void setSampleSize(int sampleSize) {
        this.sampleSize = sampleSize;
    }

    public int getSampleRate() {
        return sampleRate;
    }

    public void setSampleRate(int sampleRate) {
        this.sampleRate = sampleRate;
    }

    public double getBitRate() {
        return bitRate;
    }

    public void setBitRate(double bitRate) {
        this.bitRate = bitRate;
    }
}
