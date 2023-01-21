//
// Created by blueberry on 2023/1/8.
//

#ifndef ANDROIDPUBLISHER_AVCNALUPACKET_H
#define ANDROIDPUBLISHER_AVCNALUPACKET_H

#include "IAVCPacketData.h"
#include <stdint.h>

class AVCNaluPacket : public IAVCPacketData {
public:
    AVCNaluPacket(uint8_t* buffer,int length);
    virtual ~AVCNaluPacket();

    char *WriteTo(char *output) override;
    int Size() override;

private:
    uint8_t * buffer_;
    int size_;
};


#endif //ANDROIDPUBLISHER_AVCNALUPACKET_H
