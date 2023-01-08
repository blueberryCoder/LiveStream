//
// Created by bytedance on 2023/1/7.
//

#include "FLVTag.h"
#include <memory>

FLVTag::FLVTag(
        uint8_t tag_type, // u8
        uint32_t data_size,
        uint32_t time_stamp,
        IFLVTagData* data
): tag_type_(tag_type), data_size_(data_size), time_stamp_(time_stamp),data_(data)
{
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

    size_ = i;
}

FLVTag::~FLVTag() {
}

char *FLVTag::WriteTo(char *output) {
    memcpy(output, buffer_, size_);
    output += size_;
    return data_->WriteTo(output);
}

int FLVTag::Size() {
    return size_ + data_->Size();
}
