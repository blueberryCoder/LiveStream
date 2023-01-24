# 流媒体

## AndroidPublisher
一个Android工程。负责将采集到的音视频数据推送到流媒体服务器。目前音频使用MediaCodec编码为AAC，视频使用MediaCodec编码为AVC，使用RTMP协议推送。
服务端可以使用SRS。播放可以使用VLC播放器进行播放。

目前适配的视频原始格式为：YUV420P。

## AndroidPlayer
暂不维护了

