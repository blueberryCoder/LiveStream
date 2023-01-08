package com.blueberry.media;

/**
 * Created by muyonggang on 2023/1/7
 *
 * @author muyonggang@bytedance.com
 */
public class MetaData {

    private int width;
    private int height;
    private double videoBitRate;
    private double fps;
    private double audioBitRate;
    private int audioSampleRate;
    private int audioSampleSize;
    private boolean stereo;


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

    public double getVideoBitRate() {
        return videoBitRate;
    }

    public void setVideoBitRate(double videoBitRate) {
        this.videoBitRate = videoBitRate;
    }

    public double getFps() {
        return fps;
    }

    public void setFps(double fps) {
        this.fps = fps;
    }

    public double getAudioBitRate() {
        return audioBitRate;
    }

    public void setAudioBitRate(double audioBitRate) {
        this.audioBitRate = audioBitRate;
    }

    public int getAudioSampleRate() {
        return audioSampleRate;
    }

    public void setAudioSampleRate(int audioSampleRate) {
        this.audioSampleRate = audioSampleRate;
    }

    public int getAudioSampleSize() {
        return audioSampleSize;
    }

    public void setAudioSampleSize(int audioSampleSize) {
        this.audioSampleSize = audioSampleSize;
    }

    public boolean isStereo() {
        return stereo;
    }

    public void setStereo(boolean stereo) {
        this.stereo = stereo;
    }

    @Override
    public String toString() {
        return "MetaData{" +
                "width=" + width +
                ", height=" + height +
                ", videoBitRate=" + videoBitRate +
                ", fps=" + fps +
                ", audioBitRate=" + audioBitRate +
                ", audioSampleRate=" + audioSampleRate +
                ", audioSampleSize=" + audioSampleSize +
                ", stereo=" + stereo +
                '}';
    }
}
