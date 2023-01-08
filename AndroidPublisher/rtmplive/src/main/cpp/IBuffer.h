//
// Created by blueberry on 2023/1/8.
//

#ifndef ANDROIDPUBLISHER_IBUFFER_H
#define ANDROIDPUBLISHER_IBUFFER_H


class IBuffer {

public:
    virtual char *WriteTo(char *output) = 0;
    virtual int Size() = 0;

};


#endif //ANDROIDPUBLISHER_IBUFFER_H
