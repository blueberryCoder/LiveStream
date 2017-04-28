package com.blueberry.media;

import android.media.AudioFormat;

/**
 * Created by blueberry on 4/28/2017.
 */

public class Config {
    public final int fps;
    public final int minWidth;
    public final int maxWidth;
    public final int timeOut;
    public final String publishUrl;

    public final int audioFormat;
    public final int channelConfig;
    public final int bitrate;

    private Config(int fps,
                   int minWidth,
                   int maxWidth,
                   int timeOut,
                   String url,
                   int audioFormat,
                   int channelConfig,
                   int bitrate

    ) {
        this.timeOut = timeOut;
        this.fps = fps;
        this.minWidth = minWidth;
        this.maxWidth = maxWidth;
        this.publishUrl = url;
        this.audioFormat = audioFormat;
        this.channelConfig = channelConfig;
        this.bitrate = bitrate;
    }

    public static class Builder {
        private int fps;
        private int minWidth;
        private int maxWidth;
        private int timeOut;
        private String url;

        private int audioFormat = AudioFormat.ENCODING_PCM_16BIT;
        private int audioChannel = AudioFormat.CHANNEL_CONFIGURATION_STEREO;

        private int bitrate = 700 * 1000;

        public Builder() {
            fps = 30;
            minWidth = 320;
            maxWidth = 720;
            timeOut = 1000;
        }

        public Builder setFps(int fps) {
            this.fps = fps;
            return this;
        }

        public Builder setMaxWidth(int maxWidth) {
            this.maxWidth = maxWidth;
            return this;
        }

        public Builder setMinWidth(int minWidth) {
            this.minWidth = minWidth;
            return this;
        }

        public Builder setUrl(String url) {
            this.url = url;
            return this;
        }

        public Builder setAudioChannel(int audioChannel) {
            this.audioChannel = audioChannel;
            return this;
        }

        public Builder setAudioFormat(int audioFormat) {
            this.audioFormat = audioFormat;
            return this;
        }

        public Builder setBitrate(int bitrate) {
            this.bitrate = bitrate;
            return this;
        }

        public Config build() {
            Config config = new Config(fps, minWidth, maxWidth, timeOut,
                    url, audioFormat, audioChannel, bitrate
            );
            return config;
        }
    }

}
