//
// Created by blueberry on 2023/1/8.
//

#include "AudioData.h"

char *AudioData::WriteTo(char *output) {
    *(output++) = (this->sound_format_ << 4)
                  | (this->sound_rate_ << 2)
                  | (this->sound_size_ << 1)
                  | (this->sound_type_);
    return sound_data_->WriteTo(output);
}

AudioData::AudioData(uint8_t sound_format, uint8_t sound_rate, uint8_t sound_size,
                     uint8_t sound_type, ISoundData *sound_data) :
        sound_format_(sound_format), sound_rate_(sound_rate), sound_size_(sound_size),
        sound_type_(sound_type), sound_data_(sound_data) {
}

AudioData::~AudioData() {
}

int AudioData::Size() {
    return 1 + sound_data_->Size();
}
