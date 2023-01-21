//
// Created by blueberry on 2023/1/2.
//

#ifndef ANDROIDPUBLISHER_BITSTREAM_H
#define ANDROIDPUBLISHER_BITSTREAM_H

#include <stdint.h>

class BitStream {
public:
    BitStream(uint8_t *data);

    virtual ~BitStream();

    int ReadBits(int num);

private :
    uint8_t *data_;
    unsigned int index_;

    int ReadBits1();

};


#endif //ANDROIDPUBLISHER_BITSTREAM_H
