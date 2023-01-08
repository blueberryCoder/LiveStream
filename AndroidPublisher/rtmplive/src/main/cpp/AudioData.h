//
// Created by bytedance on 2023/1/8.
//

#ifndef ANDROIDPUBLISHER_AUDIODATA_H
#define ANDROIDPUBLISHER_AUDIODATA_H


#include "IFLVTagData.h"
#include "ISoundData.h"

#include <stdint.h>

// https://rtmp.veriskope.com/pdf/video_file_format_spec_v10.pdf  page6
class AudioData : public IFLVTagData {

public:
    AudioData(uint8_t sound_format,
              uint8_t sound_rate,
              uint8_t sound_size,
              uint8_t sound_type,
              ISoundData *sound_data
    );
    virtual ~AudioData();

    char * WriteTo(char * output) override;

    int Size() override;

private:
    uint8_t sound_format_;
    uint8_t sound_rate_;
    uint8_t sound_size_;
    uint8_t sound_type_;
    ISoundData* sound_data_;
};


#endif //ANDROIDPUBLISHER_AUDIODATA_H
