package com.blueberry.media;

/**
 * Created by muyonggang on 2023/1/7
 */
public class AudioPacketParams {
    private double bitRate;
    private int sampleSize;
    private  int sampleRate;

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
