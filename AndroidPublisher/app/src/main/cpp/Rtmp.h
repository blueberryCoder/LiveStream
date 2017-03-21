//
// Created by Administrator on 1/16/2017.
//

#ifndef MEDIAPUBLISH_RTMP_H
#define MEDIAPUBLISH_RTMP_H

#include <string>
#include "string.h"
#include "Rtmp.h"
#include "common.h"

#ifdef __cplusplus
extern "C" {
#endif
// include c header
#include "rtmp.h"
#include "rtmp_sys.h"
#include "log.h"
#include "android/log.h"
#include "time.h"

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

class Rtmp {

private:
    RTMP *rtmp;

public:
    /**
     * 初始化
     */
    virtual int init(std::string url, int w, int h, int timeOut);

    /**
     * 发送sps、pps 帧
     */
    virtual int sendSpsAndPps(BYTE *sps, int spsLen, BYTE *pps, int ppsLen,
                              long timestamp);

    /**
     * 发送视频帧
     */
    virtual int sendVideoData(BYTE *data, int len, long timestamp);

    /**
     * 发送音频关键帧
     */
    virtual int sendAacSpec(BYTE *data, int len);

    /**
     * 发送音频数据
     */
    virtual int sendAacData(BYTE *data, int len,long timestamp);

    /**
     * 释放资源
     */
    virtual int stop() const;

    virtual ~Rtmp();
};


#endif //MEDIAPUBLISH_RTMP_H
