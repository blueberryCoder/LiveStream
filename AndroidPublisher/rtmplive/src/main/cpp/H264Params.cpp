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

        auto pps_raw = &data[index];
        auto pps_raw_length  = length - index;
        auto start_code_size = H264Parser::FindStartCode(pps_raw, pps_raw_length);

        this->pps_ = &pps_raw[start_code_size] ;
        this->pps_length_ = pps_raw_length - start_code_size;
    };
}

H264Params::~H264Params(){}