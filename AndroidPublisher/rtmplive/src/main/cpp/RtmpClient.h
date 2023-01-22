//
// Created by Administrator on 1/16/2017.
//

#ifndef MEDIAPUBLISH_RTMP_H
#define MEDIAPUBLISH_RTMP_H

#include <string>
#include "string.h"
#include "common.h"
#include <fstream>
#include <iostream>
#include "FLVTag.h"

#ifdef __cplusplus
extern "C" {
#endif
// include c header
#include "librtmp/rtmp.h"
#include "librtmp/rtmp_sys.h"
#include "librtmp/log.h"
#include "android/log.h"
#include "time.h"
#include "stdlib.h"

#ifdef __cplusplus
}
#endif

#define BYTE uint8_t

#define RTMP_HEAD_SIZE (sizeof(RTMPPacket)+RTMP_MAX_HEADER_SIZE)
#define NAL_SLICE  1
#define NAL_SLICE_DPA  2
#define NAL_SLICE_DPB  3
#define NAL_SLICE_DPC  4
#define NAL_SLICE_IDR  5
#define NAL_SEI  6
#define NAL_SPS  7
#define NAL_PPS  8
#define NAL_AUD  9
#define NAL_FILLER  12

#define STREAM_CHANNEL_METADATA  0x03
#define STREAM_CHANNEL_VIDEO     0x04
#define STREAM_CHANNEL_AUDIO     0x05

class RtmpClient {

private:
    RTMP *rtmp_;
    std::string url_;
    int time_out_;

    bool enable_dump_video_;
    std::string dump_video_path_;
    std::ofstream dump_video_stream_;

    bool enable_dump_audio_;
    std::string dump_audio_path_;
    std::ofstream dump_audio_stream_;

    bool enable_dump_flv_;
    std::string dump_flv_path_;
    std::ofstream dump_flv_stream_;

public:
    RtmpClient(std::string url, int timeOut,
               bool enable_dump_video, std::string dump_video_path,
               bool enable_dump_audio, std::string dump_audio_path,
               bool enable_dump_flv, std::string dump_flv_path
    );

    ~RtmpClient();

    int Connect();

    int SendAVCData(BYTE *data, int len, long timestamp);

    int SendAACData(BYTE *data, int len, long timestamp);

    int Stop();

    int SendDataFrame(
            double width,
            double height,
            // video bitrate in kilobits per second
            double videoDataRate,
            double frameRate,
            double audioDataRate,
            double audioSampleRate,
            double audioSampleSize,
            bool stereo
    );

private:
    // For FLV version 1 previous tag should add 11.
    static constexpr int SIZE_COMPLEMENT = 11;

    int SendNALSPS(uint8_t *data, int length, long timestamp);

    int SendAACSpecific(uint8_t *data, int length, long timestamp);

    int SendFlvTag(FLVTag flag_tag);

//    uint32_t previous_tag_size_ = 0;
    uint8_t flv_header_[9];
};


#endif //MEDIAPUBLISH_RTMP_H
