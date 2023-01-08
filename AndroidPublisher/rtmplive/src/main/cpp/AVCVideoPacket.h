//
// Created by blueberry on 2023/1/8.
//

#ifndef ANDROIDPUBLISHER_AVCVIDEOPACKET_H
#define ANDROIDPUBLISHER_AVCVIDEOPACKET_H

#include <stdint.h>
#include "IBuffer.h"
#include "IAVCPacketData.h"
#include "IVideoPacket.h"

class AVCVideoPacket : public IVideoPacket {

public:
    typedef enum {
        AVC_SEQ = 0,
        AVC_NALU = 1,
        AVC_END = 2
    } AVCPacketType;

    AVCVideoPacket(AVCPacketType packet_type, uint32_t cts, IAVCPacketData *data);

    ~AVCVideoPacket();

    char *WriteTo(char *output) override;

    int Size() override;

private:
    AVCPacketType avc_packet_type_;
    uint32_t cts_;
    IAVCPacketData *data_;
};


#endif //ANDROIDPUBLISHER_AVCVIDEOPACKET_H
