package com.blueberry.media;

/**
 * Created by muyonggang on 2023/1/7
 */
public class VideoPacketParams {
    private int width;
    private int height;
    private int frameRate;
    private double bitRate;


    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public int getFrameRate() {
        return frameRate;
    }

    public void setFrameRate(int frameRate) {
        this.frameRate = frameRate;
    }

    public double getBitRate() {
        return bitRate;
    }

    public void setBitRate(double bitRate) {
        this.bitRate = bitRate;
    }
}
