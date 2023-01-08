//
// Created by blueberry on 2023/1/8.
//

#include "VideoData.h"


VideoData::VideoData(FrameType frame_type, VideoCodecId codec_id, IVideoPacket *video_packet)
        : frame_type_(frame_type), codec_id_(codec_id), video_packet_(video_packet) {
}

VideoData::~VideoData() {
}

char *VideoData::WriteTo(char *output) {
    *(output++) = frame_type_ << 4 | codec_id_;
    return video_packet_->WriteTo(output);
}

int VideoData::Size() {
    return 1 + video_packet_->Size();
}
