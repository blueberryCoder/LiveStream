//
// Created by bytedance on 2023/1/2.
//

#ifndef ANDROIDPUBLISHER_GOLOMB_H
#define ANDROIDPUBLISHER_GOLOMB_H

#include <stdint.h>
#include "BitStream.h"

class Golomb {
public:
    static inline int GetUe(BitStream &bit_stream) {
        int leading_zero_bits = -1;
        for (int b = 0; !b; leading_zero_bits++) {
            // H264 172
            b = bit_stream.ReadBits(1);
        }
        int r = bit_stream.ReadBits(leading_zero_bits);
        return (0x1 << (leading_zero_bits + 1)) - 1 + r;
    }
};


#endif //ANDROIDPUBLISHER_GOLOMB_H
