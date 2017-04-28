#include <jni.h>
#include <string>
#include "Rtmp.h"

#ifdef __cplusplus
extern "C" {
#endif

JNIEXPORT jlong JNICALL
Java_com_blueberry_media_PublishJni_init(JNIEnv *env, jclass type, jstring url_, jint w, jint h,
                                         jint timeOut) {

    const char *url = env->GetStringUTFChars(url_, 0);
    Rtmp *rtmp = new Rtmp();
    rtmp->init(url, w, h, timeOut);
    env->ReleaseStringUTFChars(url_, url);
    return reinterpret_cast<long> (rtmp);
}


JNIEXPORT jint JNICALL
Java_com_blueberry_media_PublishJni_sendSpsAndPps(JNIEnv *env, jclass type, jlong cptr,
                                                  jbyteArray sps_, jint spsLen, jbyteArray pps_,
                                                  jint ppsLen, jlong timestamp) {
    jbyte *sps = env->GetByteArrayElements(sps_, NULL);
    jbyte *pps = env->GetByteArrayElements(pps_, NULL);
    Rtmp *rtmp = reinterpret_cast<Rtmp *>(cptr);
    int ret = rtmp->sendSpsAndPps((BYTE *) sps, spsLen, (BYTE *) pps, ppsLen, timestamp);

    env->ReleaseByteArrayElements(sps_, sps, 0);
    env->ReleaseByteArrayElements(pps_, pps, 0);
    return ret;
}

JNIEXPORT jint JNICALL
Java_com_blueberry_media_PublishJni_sendVideoData(JNIEnv *env, jclass type, jlong cptr,
                                                  jbyteArray data_, jint len, jlong timestamp) {
    jbyte *data = env->GetByteArrayElements(data_, NULL);
    Rtmp *rtmp = reinterpret_cast<Rtmp *> (cptr);
    int ret = rtmp->sendVideoData((BYTE *) data, len, timestamp);

    env->ReleaseByteArrayElements(data_, data, 0);

    return ret;
}


JNIEXPORT jint JNICALL
Java_com_blueberry_media_PublishJni_sendAacSpec(JNIEnv *env, jclass type, jlong cptr,
                                                jbyteArray data_, jint len) {
    jbyte *data = env->GetByteArrayElements(data_, NULL);

    Rtmp *rtmp = reinterpret_cast<Rtmp *> (cptr);
    int ret = rtmp->sendAacSpec((BYTE *) data, len);

    env->ReleaseByteArrayElements(data_, data, 0);
    return ret;
}

JNIEXPORT jint JNICALL
Java_com_blueberry_media_PublishJni_sendAacData(JNIEnv *env, jclass type, jlong cptr,
                                                jbyteArray data_, jint len, jlong timestamp) {
    jbyte *data = env->GetByteArrayElements(data_, NULL);

    Rtmp *rtmp = reinterpret_cast<Rtmp *> (cptr);
    int ret = rtmp->sendAacData((BYTE *) data, len, timestamp);

    env->ReleaseByteArrayElements(data_, data, 0);
    return ret;
}

JNIEXPORT jint JNICALL
Java_com_blueberry_media_PublishJni_stop(JNIEnv *env, jclass type, jlong cptr) {
    Rtmp *rtmp = reinterpret_cast<Rtmp *> (cptr);
    delete rtmp;
    return 0;
}

#ifdef __cplusplus
}
#endif