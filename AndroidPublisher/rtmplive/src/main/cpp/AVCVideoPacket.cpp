//
// Created by bytedance on 2023/1/8.
//

#include "AVCVideoPacket.h"
#include <memory>

AVCVideoPacket::AVCVideoPacket(AVCVideoPacket::AVCPacketType packet_type, uint32_t cts,
                               IAVCPacketData *data)
        : avc_packet_type_(packet_type), cts_(cts), data_(data) {
}

AVCVideoPacket::~AVCVideoPacket() {

}

char *AVCVideoPacket::WriteTo(char *output) {
    output[0] = avc_packet_type_;
    if (avc_packet_type_ == AVCPacketType::AVC_NALU) {
        output[1] = cts_ >> 16;
        output[2] = cts_ >> 8;
        output[3] = cts_;
    } else {
        output[1] = 0;
        output[2] = 0;
        output[3] = 0;
    }
    return data_->WriteTo(&output[4]);
}

int AVCVideoPacket::Size() {
    return 4 + data_->Size();
}
