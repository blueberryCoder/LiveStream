//
// Created by bytedance on 2023/1/6.
//

#ifndef ANDROIDPUBLISHER_ONMETADATA_H
#define ANDROIDPUBLISHER_ONMETADATA_H

#include <stdint.h>
#include <string>
#include "librtmp/amf.h"
#include "IFLVTagData.h"

// https://rtmp.veriskope.com/pdf/video_file_format_spec_v10.pdf
using namespace std;

class OnMetaData : public IFLVTagData {
public:
    typedef double number;
    AVal av_onMetaData = AVC("onMetaData");
    AVal av_duration = AVC("duration");
    AVal av_width = AVC("width");
    AVal av_height = AVC("height");
    AVal av_videodatarate = AVC("videodatarate");
    AVal av_framerate = AVC("framerate");
    AVal av_videocodecid = AVC("videocodecid");
    AVal av_audiodatarate = AVC("audiodatarate");
    AVal av_audiosamplerate = AVC("audiosamplerate");
    AVal av_audiosamplesize = AVC("audiosamplesize");
    AVal av_stereo = AVC("stereo");
    AVal av_audiocodecid = AVC("audiocodecid");
    AVal av_major_brand = AVC("major_brand");
    AVal av_minor_version = AVC("minor_version");
    AVal av_compatible_brands = AVC("compatible_brands");
    AVal av_encoder = AVC("encoder");
    AVal av_filesize = AVC("filesize");

    OnMetaData() = delete;

    OnMetaData(
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
    );

    virtual ~OnMetaData();

    char *WriteTo(char *output) override;

    int Size() override;

private:
    char *buffer_;
    int size_;
};


#endif //ANDROIDPUBLISHER_ONMETADATA_H
