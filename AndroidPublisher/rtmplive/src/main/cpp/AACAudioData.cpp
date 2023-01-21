//
// Created by blueberry on 2023/1/8.
//

#include "AACAudioData.h"
#include <memory>

AACAudioData::AACAudioSpecificConfig::AACAudioSpecificConfig(char *buffer,
                                                             int length)
        : buffer_(buffer), size_(length) {
}

int AACAudioData::AACAudioSpecificConfig::Size() {
    return size_;
}

char *AACAudioData::AACAudioSpecificConfig::WriteTo(char *output) {
    memcpy(output, buffer_, size_);
    return output + size_;
}

AACAudioData::AACAudioFrameData::AACAudioFrameData(char *buffer, int length)
        : buffer_(buffer), size_(length) {
}

char *AACAudioData::AACAudioFrameData::WriteTo(char *output) {
    memcpy(output, buffer_, size_);
    return output + size_;
}

int AACAudioData::AACAudioFrameData::Size() {
    return size_;
}

AACAudioData::AACAudioData(AACPacketType packet_type, AACAudioData::IAACData* data)
        : packet_type_(packet_type), data_(data) {
}

char *AACAudioData::WriteTo(char *output) {
    *(output++) = packet_type_ & 0xFF;
    data_->WriteTo(output);
    output = data_->WriteTo(output);
    return output;
}

int AACAudioData::Size() {
    return 1 + data_->Size();
}
