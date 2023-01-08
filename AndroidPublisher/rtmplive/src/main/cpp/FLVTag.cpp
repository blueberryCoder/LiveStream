//
// Created by bytedance on 2023/1/7.
//

#include "FLVTag.h"
#include <memory>

FLVTag::FLVTag(
        uint8_t tag_type, // u8
        uint32_t data_size,
        uint32_t time_stamp,
        IFLVTagData &data
) {
    buffer_ = new char[128 + data.GetBufferSize()];

    int i = 0;
    buffer_[i++] = tag_type;

    buffer_[i++] = (data_size >> 16) & 0xFF; // data size
    buffer_[i++] = (data_size >> 8) & 0xFF;
    buffer_[i++] = (data_size) & 0xFF;

    buffer_[i++] = (time_stamp >> 16) & 0xFF; // time stamp
    buffer_[i++] = (time_stamp >> 8) & 0xFF;
    buffer_[i++] = (time_stamp) & 0xFF;
    buffer_[i++] = (data_size >> 24) & 0xFF; // timestamp extend

    buffer_[i++] = 0;
    buffer_[i++] = 0;
    buffer_[i++] = 0; // stream id always 0

    memcpy(&buffer_[i], data.GetBuffer(), data.GetBufferSize());
    i += data.GetBufferSize();

    size_ = i;

}

FLVTag::~FLVTag() {
    delete[] buffer_;
}