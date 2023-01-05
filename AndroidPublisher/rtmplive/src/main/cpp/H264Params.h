//
// Created by bytedance on 2023/1/3.
//

#ifndef ANDROIDPUBLISHER_H264PARAMS_H
#define ANDROIDPUBLISHER_H264PARAMS_H

#include <stdint.h>

class H264Params {

public:
    H264Params(uint8_t *data, int length) ;
    ~H264Params() ;
public:
    uint8_t *sps_;
    int sps_length_;
    uint8_t *pps_;
    int pps_length_;

};


#endif //ANDROIDPUBLISHER_H264PARAMS_H
