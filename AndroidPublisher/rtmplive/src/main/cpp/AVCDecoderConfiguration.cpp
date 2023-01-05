//
// Created by blueberry on 2023/1/2.
//
// https://ossrs.net/lts/zh-cn/docs/v4/tools/specs
#include "Golomb.h"
#include "AVCDecoderConfiguration.h"
#include <memory>
#include "logger.h"

inline int AVCDecoderConfiguration::ParseSPSAndPPS(int sps_length, uint8_t *sps, int pps_length, uint8_t *pps,
                                        uint8_t *output, int *length) {
    // https://ossrs.io/lts/en-us/assets/files/ISO_IEC_14496-15-AVC-format-2012-345a5b466cc73e978fd9dd0840361e8b.pdf 5.2.4.1.1
    // H.264 7.3.2.1
    auto profile_idc = sps[0];
    int i = 0;
    output[i++] = 0x1; // configuration version
    output[i++] = sps[1]; // avc_profile_indication, ISO/IEC  14496-10
    output[i++] = sps[2]; // profile_compatibility
    output[i++] = sps[3]; // avc level indication
    output[i++] = 0xFF; // u(6)=0b111111, u(2) = 0x11 lengthSizeMinusOne
    output[i++] = 0xE1; // u(3) = 0b111, numOfSequenceParamsSets 1
    output[i++] = (sps_length >> 8) & 0xFF;
    output[i++] = (sps_length) & 0xFF; // SPS length
    memcpy(&output[i], sps, sps_length);
    i += sps_length;

    output[i++] = 0x01; // numOfPictureParameterSets
    output[i++] = (pps_length >> 8) & 0xFF;
    output[i++] = (pps_length) & 0xFF;
    memcpy(&output[i], pps, pps_length);
    i += pps_length;

    if (profile_idc == 100 || profile_idc == 110 || profile_idc == 122 || profile_idc == 144) {
        // https://github.com/Teamxrtc/webrtc-streaming-node/blob/727a441204344ff596401b0253caac372b714d91/third_party/webrtc/src/webrtc/base/bitbuffer.cc
        // https://blog.51cto.com/u_13267193/5371309
        // https://blog.51cto.com/u_13267193/5371309
        BitStream bitStream(&sps[4]); // seq_parameter_set_id;
        auto spsid = Golomb::GetUe(bitStream);
        auto chroma_format_idc = Golomb::GetUe(bitStream);
        if (chroma_format_idc > 3) {
            LOGE("parse chroma idc error.");
        } else if (chroma_format_idc == 3) {
            auto residual_color_transform_flag = bitStream.ReadBits(1);
        }
        auto depth_luma = Golomb::GetUe(bitStream);
        auto depth_chroma = Golomb::GetUe(bitStream);
        if (depth_luma < 8 || depth_luma > 14 || depth_chroma < 8 || depth_chroma > 14) {
            LOGE("illegal bit depth value")
        }
        output[i++] = 0xFC | chroma_format_idc;
        output[i++] = 0xF8 | depth_luma;
        output[i++] = 0xF8 | depth_chroma;
    }
    *length = i;
    return 0;
}

AVCDecoderConfiguration::AVCDecoderConfiguration(H264Params &params) {
    this->buffer_ = new uint8_t[1024];
    ParseSPSAndPPS(params.sps_length_, params.sps_, params.pps_length_, params.pps_, this->buffer_,
                   &this->buffer_length_);
}

AVCDecoderConfiguration::~AVCDecoderConfiguration() {
    delete buffer_;
}