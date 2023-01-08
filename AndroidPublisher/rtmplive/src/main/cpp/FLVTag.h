//
// Created by bytedance on 2023/1/7.
//

#ifndef ANDROIDPUBLISHER_FLVTAG_H
#define ANDROIDPUBLISHER_FLVTAG_H

#include <stdint.h>
#include "IFLVTagData.h"

class FLVTag {

public:
    static constexpr int AUDIO = 8;
    static constexpr int VIDEO = 9;
    static constexpr int SCRIPT_DATA = 18;

    FLVTag( uint8_t tag_type, // u8
            uint32_t data_size,
            uint32_t time_stamp,
            IFLVTagData& data
    );


    virtual ~FLVTag();

    const char *GetBuffer() {
        return buffer_;
    }

    int GetSize() {
        return size_;
    }

private :
    char *buffer_;
    uint32_t size_;
};


#endif //ANDROIDPUBLISHER_FLVTAG_H
