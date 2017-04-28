package com.blueberry.media;

import android.media.AudioFormat;

/**
 * Created by blueberry on 4/28/2017.
 */

public class Config {
    /**
     * 视频的帧率
     */
    public final int fps;
    /**
     * 视频的最小宽度
     */
    public final int minWidth;
    /**
     * 视频的最大宽度
     */
    public final int maxWidth;
    /**
     * RTMP连接超时时长
     */
    public final int timeOut;
    /**
     * 发布的url
     */
    public final String publishUrl;
    /**
     * 音频的format
     */
    public final int audioFormat;
    /**
     * 音频你的channel
     */
    public final int channelConfig;
    /**
     * 视频编码的比特率
     */
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

        /**
         * 设置帧率。
         *
         * @param fps 帧率
         * @return {@link Builder}
         */
        public Builder setFps(int fps) {
            this.fps = fps;
            return this;
        }

        /**
         * 设置最大宽度。
         *
         * @param maxWidth 最大宽度
         * @return {@link Builder}
         */
        public Builder setMaxWidth(int maxWidth) {
            this.maxWidth = maxWidth;
            return this;
        }

        /**
         * 设置最小宽度。
         *
         * @param minWidth 最小宽度
         * @return {@link Builder}
         */
        public Builder setMinWidth(int minWidth) {
            this.minWidth = minWidth;
            return this;
        }

        /**
         * 设置发布的url。
         *
         * @param url 发布的url
         * @return {@link Builder}
         */
        public Builder setUrl(String url) {
            this.url = url;
            return this;
        }

        /**
         * 设置AudioChannel。
         *
         * @param audioChannel audioChannel
         */
        public Builder setAudioChannel(int audioChannel) {
            this.audioChannel = audioChannel;
            return this;
        }

        /**
         * 设置audioFormat。
         *
         * @param audioFormat audioFormat
         */
        public Builder setAudioFormat(int audioFormat) {
            this.audioFormat = audioFormat;
            return this;
        }

        /**
         * 设置编码比特率。
         *
         * @param bitrate 视频编码比特
         */
        public Builder setBitrate(int bitrate) {
            this.bitrate = bitrate;
            return this;
        }

        /**
         * 建造Config
         *
         * @return {@link Config}
         */
        public Config build() {
            Config config = new Config(fps, minWidth, maxWidth, timeOut,
                    url, audioFormat, audioChannel, bitrate
            );
            return config;
        }
    }

}
