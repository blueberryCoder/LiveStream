//
// Created by blueberry on 2023/1/8.
//

#include "AVCNaluPacket.h"
#include <memory>

// srs_kernel_codec.hpp
// srs avc_demux_ibmf_format
char *AVCNaluPacket::WriteTo(char *output) {

    output[0] = size_ >> 24;
    output[1] = size_ >> 16;
    output[2] = size_ >> 8;
    output[3] = size_ ;

    memcpy(&output[4], this->buffer_, this->size_);
    return output + this->size_;
}

int AVCNaluPacket::Size() {
    return size_ + 4 ; //
}

AVCNaluPacket::AVCNaluPacket(uint8_t *buffer, int length)
        : buffer_(buffer), size_(length) {
}

AVCNaluPacket::~AVCNaluPacket() {

}
