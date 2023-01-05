//
// Created by blueberry on 2023/1/1.
//

#ifndef ANDROIDPUBLISHER_H264PARSER_H
#define ANDROIDPUBLISHER_H264PARSER_H

#include <stdint.h>

class H264Parser {
//  NALU Header
//    +---------------+
//    |0|1|2|3|4|5|6|7|
//    +-+-+-+-+-+-+-+-+
//    |F|NRI|  Type   |
//    +---------------+
public:
    enum {
        H264_NAL_UNSPECIFIED     = 0,
        H264_NAL_SLICE           = 1,
        H264_NAL_DPA             = 2,
        H264_NAL_DPB             = 3,
        H264_NAL_DPC             = 4,
        H264_NAL_IDR_SLICE       = 5,
        H264_NAL_SEI             = 6,
        H264_NAL_SPS             = 7,
        H264_NAL_PPS             = 8,
        H264_NAL_AUD             = 9,
        H264_NAL_END_SEQUENCE    = 10,
        H264_NAL_END_STREAM      = 11,
        H264_NAL_FILLER_DATA     = 12,
        H264_NAL_SPS_EXT         = 13,
        H264_NAL_PREFIX          = 14,
        H264_NAL_SUB_SPS         = 15,
        H264_NAL_DPS             = 16,
        H264_NAL_RESERVED17      = 17,
        H264_NAL_RESERVED18      = 18,
        H264_NAL_AUXILIARY_SLICE = 19,
        H264_NAL_EXTEN_SLICE     = 20,
        H264_NAL_DEPTH_EXTEN_SLICE = 21,
        H264_NAL_RESERVED22      = 22,
        H264_NAL_RESERVED23      = 23,
        H264_NAL_UNSPECIFIED24   = 24,
        H264_NAL_UNSPECIFIED25   = 25,
        H264_NAL_UNSPECIFIED26   = 26,
        H264_NAL_UNSPECIFIED27   = 27,
        H264_NAL_UNSPECIFIED28   = 28,
        H264_NAL_UNSPECIFIED29   = 29,
        H264_NAL_UNSPECIFIED30   = 30,
        H264_NAL_UNSPECIFIED31   = 31,
    };
public:
    /**
     * remove Emulation Prevention Code
     * @param data
     * @param length
     * @return  dst length
     */
    static inline int RemoveEmulationPreventionCode(uint8_t *data, int length) {
        uint8_t *dst_data = data;
        int i = 0, j = 0;
        while (i < length) {
            if (length - i > 3 && Read24(&data[i]) == 0x000003) {
                dst_data[j++] = data[i++];
                dst_data[j++] = data[i++];
                i++;
            } else {
                data[j++] = data[i++];
            }
        }
        return j;
    }

    /**
     *  find start code
     * @param data
     * @param length
     * @return  start code size
     */
    static inline int FindStartCode(uint8_t *data, int length) {
        if (length >= 4) {
            if (!data[0] && !data[1] && data[2] == 0x1) {
                // 0 0 1
                return 3;
            } else if (!data[0] && !data[1] && !data[2] && data[3] == 0x1) {
                // 0 0 0 1
                return 4;
            }
        } else if (length >= 3) {
            // 0 0 1
            if (!data[0] && !data[1] && data[2] == 0x1) {
                return 3;
            }
        }
        return 0;
    }

    static inline int SearchStartCode(uint8_t *data, int length) {
        for (int i = 0; i < length; i++) {
            // 0 0 0 1
            if ((length - i > 4 && !data[i] && !data[i + 1] && !data[i + 2] && data[i + 3] == 0x1)
            // 0 0 1
                || (length - i > 3 && !data[i] && !data[i + 1] && data[i + 2] == 0x1)) {
                return i;
            }
        }
        return -1;
    }

private:
    static inline int Read24(uint8_t *data) {
        int result = 0;
        result |= data[0] << 16;
        result |= data[1] << 8;
        result |= data[2];
        return result;
    }
};


#endif //ANDROIDPUBLISHER_H264PARSER_H
