//
// Created by bytedance on 2023/1/3.
//

#ifndef ANDROIDPUBLISHER_HEXUTIL_H
#define ANDROIDPUBLISHER_HEXUTIL_H
#include <stdexcept>
#include <string>
class HexUtil {
public:

    constexpr const static char hex_table[16] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
                                                 'A', 'B', 'C', 'D', 'E', 'F'};

    static inline std::string Bytes2Hex(uint8_t* bytes ,int length) {
        std::string hex = "";
        for (int i = 0; i < length; i++) {
            hex.append(1, hex_table[(bytes[i] >> 4) & 0xF]);
            hex.append(1, hex_table[bytes[i] & 0xF]);
        }
        return std::move(hex);
    }
};


#endif //ANDROIDPUBLISHER_HEXUTIL_H
