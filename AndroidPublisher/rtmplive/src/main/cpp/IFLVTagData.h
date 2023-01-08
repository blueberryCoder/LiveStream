//
// Created by blueberry on 2023/1/7.
//

#ifndef ANDROIDPUBLISHER_IFLVTAGDATA_H
#define ANDROIDPUBLISHER_IFLVTAGDATA_H


class IFLVTagData {
public:
    virtual const char *GetBuffer() = 0;

    virtual int GetBufferSize() = 0;
};


#endif //ANDROIDPUBLISHER_IFLVTAGDATA_H
