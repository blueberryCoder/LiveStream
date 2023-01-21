//
// Created by blueberry on 2023/1/7.
//

#ifndef ANDROIDPUBLISHER_FLVTAG_H
#define ANDROIDPUBLISHER_FLVTAG_H

#include <stdint.h>
#include "IFLVTagData.h"

class FLVTag : IBuffer {

public:
    static constexpr int AUDIO = 8;
    static constexpr int VIDEO = 9;
    static constexpr int SCRIPT_DATA = 18;

    FLVTag(uint8_t tag_type,
           uint32_t data_size,
           uint32_t time_stamp,
           IFLVTagData *data
    );

    virtual ~FLVTag();
    char *WriteTo(char *output) override;
    int Size() override;

private :
    char buffer_[128];
    uint32_t size_;

    uint8_t tag_type_; // u8
    uint32_t data_size_;
    uint32_t time_stamp_;
    IFLVTagData *data_;
};


#endif //ANDROIDPUBLISHER_FLVTAG_H
