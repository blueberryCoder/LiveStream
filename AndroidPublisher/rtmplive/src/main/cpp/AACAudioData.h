//
// Created by blueberry on 2023/1/8.
//

#ifndef ANDROIDPUBLISHER_AACAUDIODATA_H
#define ANDROIDPUBLISHER_AACAUDIODATA_H

#include "ISoundData.h"
#include "IBuffer.h"
#include <stdint.h>

typedef enum {
    AAC_SEQ = 0,
    AAC_RAW = 1
} AACPacketType;

class AACAudioData : public ISoundData {


public:
    class IAACData : public IBuffer {
    };

    class AACAudioSpecificConfig : public IAACData {
    public:
        AACAudioSpecificConfig(char *buffer, int length);
        char * WriteTo(char * output) override;
        int Size() override;

    private:
        char *buffer_;
        int size_;
    };

    class AACAudioFrameData : public IAACData {
    public:
        AACAudioFrameData(char *buffer, int length);
        char * WriteTo(char * output) override;
        int Size() override;

    private:
        char *buffer_;
        int size_;
    };
    AACAudioData(AACPacketType packet_type, IAACData* data) ;
    char * WriteTo(char * output) override;

    int Size() override;

private:
    AACPacketType packet_type_;
    IAACData * data_;

};


#endif //ANDROIDPUBLISHER_AACAUDIODATA_H
