//
// Created by blueberry on 2023/1/6.
//

#include "OnMetaData.h"


OnMetaData::OnMetaData(
        number duration,
        number width,
        number height,
        number videodatarate,
        number framerate,
        number videocodecid,
        number audiodatarate,
        number audiosamplerate,
        number audiosamplesize,
        number audiocodecid,
        number filesize,
        bool stereo
) {

    int buffer_max = 1024;
    buffer_ = new char[buffer_max];
    char *ptr = buffer_;
    char *end = buffer_ + buffer_max;
    ptr = AMF_EncodeString(buffer_, end, &av_onMetaData);

    AMFObjectProperty properties[12];
    int i = 0;
#define ADD_NUMBER_PROPERTY(name)  \
    properties[i++] = {.p_name = av_##name, .p_type = AMF_NUMBER, .p_vu.p_number = name};

    ADD_NUMBER_PROPERTY(duration)
    ADD_NUMBER_PROPERTY(width)
    ADD_NUMBER_PROPERTY(height)
    ADD_NUMBER_PROPERTY(framerate)
    ADD_NUMBER_PROPERTY(videocodecid)
    ADD_NUMBER_PROPERTY(videodatarate)

    ADD_NUMBER_PROPERTY(audiodatarate)
    ADD_NUMBER_PROPERTY(audiosamplerate)
    ADD_NUMBER_PROPERTY(audiosamplesize)
    ADD_NUMBER_PROPERTY(audiocodecid)
    ADD_NUMBER_PROPERTY(filesize)

    properties[i++] = {.p_name = av_stereo, .p_type = AMF_BOOLEAN, .p_vu.p_number = stereo ? 1.0
                                                                                           : 0};

    AMFObject array{
            .o_num = 12,
            .o_props = properties
    };
    ptr = AMF_EncodeEcmaArray(&array, ptr, end);

    size_ = ptr - buffer_;
}

OnMetaData::~OnMetaData() {
    delete[] buffer_;
}
