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

    public boolean enableDumpVideo;
    public String dumpVideoPath;

    public boolean enableDumpAudio;
    public String dumpAudioPath;

    private Config(int fps,
                   int minWidth,
                   int maxWidth,
                   int timeOut,
                   String url,
                   int audioFormat,
                   int channelConfig,
                   int bitrate,
                   boolean enableDumpVideo,
                   String dumpVideoPath,
                   boolean enableDumpAudio,
                   String dumpAudioPath


    ) {
        this.timeOut = timeOut;
        this.fps = fps;
        this.minWidth = minWidth;
        this.maxWidth = maxWidth;
        this.publishUrl = url;
        this.audioFormat = audioFormat;
        this.channelConfig = channelConfig;
        this.bitrate = bitrate;
        this.enableDumpVideo = enableDumpVideo;
        this.dumpVideoPath = dumpVideoPath;
        this.enableDumpAudio = enableDumpAudio;
        this.dumpAudioPath = dumpAudioPath;
    }

    public static class Builder {
        private int fps;
        private int minWidth;
        private int maxWidth;
        private int timeOut;
        private String url;
        private boolean enableDumpVideo;
        private String dumpVideoPath;
        private boolean enableDumpAudio;
        private String dumpAudioPath;

        private int audioFormat = AudioFormat.ENCODING_PCM_16BIT;
        private int audioChannel = AudioFormat.CHANNEL_CONFIGURATION_STEREO;

        private int bitrate = 700 * 1000;

        public Builder() {
            fps = 30;
            minWidth = 320;
            maxWidth = 720;
            timeOut = 10;
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

        public Builder setEnableDumpVideo(boolean enable) {
            this.enableDumpVideo = enable;
            return this;
        }

        // dump h264 send video.
        public Builder setDumpVideoPath(String path) {
            this.dumpVideoPath = path;
            return this;
        }

        public Builder setEnableDumpAudio(boolean enable) {
            this.enableDumpAudio = enable;
            return this;
        }

        // dump h264 send video.
        public Builder setDumpAudioPath(String path) {
            this.dumpAudioPath = path;
            return this;
        }

        /**
         * 建造Config
         *
         * @return {@link Config}
         */
        public Config build() {
            return new Config(fps, minWidth, maxWidth, timeOut,
                    url, audioFormat, audioChannel, bitrate, enableDumpVideo, dumpVideoPath,
                    enableDumpAudio, dumpAudioPath
            );
        }
    }

}
