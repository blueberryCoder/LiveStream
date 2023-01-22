//
// Created by blueberry on 2023/1/8.
//

#ifndef ANDROIDPUBLISHER_VIDEODATA_H
#define ANDROIDPUBLISHER_VIDEODATA_H

#include "IFLVTagData.h"
#include "IVideoPacket.h"
#include <stdint.h>

class VideoData : public IFLVTagData {

public:
    typedef enum {
       // For AVC, a seekable frame
       KEY_FRAME = 1 ,
       // For AVC, a non seekable frame
       INTER_FRAME = 2,
       // H.263 only
       DISPOSABLE_FRAME = 3,
       // reserved for server use only
       RESERVED = 4,
       // commnad frame
       VIDEO_INFO_ = 5
    } FrameType;

    typedef enum { // VideoCodecId
        JEPEG = 1,// never unused
        SORENSON_H263 = 2,
        SCREEN_VIDEO = 3,
        ON2_VP6 = 4,
        ON2_VP6_WITH_ALPHA_CHANNEL = 5,
        SCREEN_VIDEO_VERSION = 6,
        AVC_ = 7
    } VideoCodecId;

    VideoData(FrameType frame_type, VideoCodecId codec_id, IVideoPacket *video_packet);
    virtual ~VideoData();

    char *WriteTo(char *output) override;
    int Size() override;

private:
    FrameType frame_type_;
    VideoCodecId codec_id_;
    IVideoPacket *video_packet_;

};


#endif //ANDROIDPUBLISHER_VIDEODATA_H
