//
// Created by bytedance on 2023/1/2.
//

#include "BitStream.h"

BitStream::BitStream(uint8_t *data) : data_(data), index_(0) {
}

BitStream::~BitStream() {
}

int BitStream::ReadBits(int num) {
    int result = 0;
    for (int i = 0; i < num; i++) {
        result <<= 0x1;
        result |= ReadBits1();
    }
    return result;
}

int BitStream::ReadBits1() {
    uint8_t result = data_[index_ >> 3];
    result <<= index_ & 0x7;
    result >>= 8 - 1;
    index_++;
    return result;
}