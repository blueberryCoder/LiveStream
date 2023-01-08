//
// Created by blueberry on 2023/1/2.
//
#ifndef ANDROIDPUBLISHER_AVCDECODERCONFIGURATION_H
#define ANDROIDPUBLISHER_AVCDECODERCONFIGURATION_H
// https://ossrs.io/lts/en-us/assets/files/ISO_IEC_14496-15-AVC-format-2012-345a5b466cc73e978fd9dd0840361e8b.pdf
#include <stdint.h>
#include "H264Params.h"
#include "IAVCPacketData.h"

class AVCDecoderConfiguration : public IAVCPacketData {
public:

    AVCDecoderConfiguration(H264Params &params);

    virtual ~AVCDecoderConfiguration();

    inline uint8_t *GetBuffer() { return buffer_; }

    inline int GetBufferLength() { return buffer_length_; }

    char *WriteTo(char *output) override;

    int Size() override;

private :
    static inline int ParseSPSAndPPS(int sps_length, uint8_t *sps, int pps_length, uint8_t *pps,
                                     uint8_t *output, int *length);

    uint8_t buffer_[1024];
    int buffer_length_;


};


#endif //ANDROIDPUBLISHER_AVCDECODERCONFIGURATION_H
