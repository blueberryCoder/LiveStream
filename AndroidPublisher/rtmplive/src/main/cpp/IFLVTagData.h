//
// Created by blueberry on 2023/1/7.
//

#ifndef ANDROIDPUBLISHER_IFLVTAGDATA_H
#define ANDROIDPUBLISHER_IFLVTAGDATA_H

#include "IBuffer.h"

typedef enum {  // SoundFormat
    ADPCM = 1,
    MP3 = 2,
    LINEAR_PCM_LITTLE_ENDIAN = 3,
    NELLYMOSER_16K_MONO = 4,
    NELLYMOSER_8K_MONO = 5,
    NELLYMOSER = 6,
    A_LAW_PCM = 7,
    MU_LAW_PCM = 8,
    RESERVED = 9,
    AAC = 10,
    SPEEX = 11,
    MP3_8_K = 14,
    DEVICE_SPECIFIC_SOUND = 15,
} AudioCodecId;

typedef  AudioCodecId  SoundFormat;

class IFLVTagData : public IBuffer {

};


#endif //ANDROIDPUBLISHER_IFLVTAGDATA_H
