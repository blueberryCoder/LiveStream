//
// Created by bytedance on 2023/1/3.
//

#include "H264Params.h"
#include "HexUtil.h"
#include "H264Parser.h"

H264Params::H264Params(uint8_t *data, int length) {
    int index = H264Parser::SearchStartCode(data, length);
    if (index >= 0) {
        this->sps_length_ = index;
        this->sps_ = data;
        this->pps_ = &data[index];
        auto start_code_size = H264Parser::RemoveEmulationPreventionCode(this->pps_, length -
                                                                                     this->sps_length_);
        this->pps_length_ = length - index - start_code_size;
    };
}

H264Params::~H264Params(){}