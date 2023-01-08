#include <jni.h>
#include <string>
#include "RtmpClient.h"

#include "jni_utils.h"

#ifdef __cplusplus
extern "C" {
#endif
// https://rtmp.veriskope.com/docs/spec/#51message-format

JNIEXPORT jlong JNICALL
Java_com_blueberry_media_PublishJni_init(JNIEnv *env,
                                         jclass type,
                                         jstring url_,
                                         jint timeOut,
                                         jboolean dumpVideo,
                                         jstring dumpVideoPath,
                                         jboolean dumpAudio,
                                         jstring dumpAudioPath
) {

    LOGI("JNI %s %s","init" ,__FUNCTION__ )
    std::string url = GetStringUTFFromJString(env,url_);
    std::string dump_video_path = GetStringUTFFromJString(env,dumpVideoPath);
    std::string dump_audio_path = GetStringUTFFromJString(env,dumpAudioPath);

    auto rtmp = new RtmpClient(url, timeOut,
                               dumpVideo == JNI_TRUE,
                               dump_video_path,
                               dumpAudio == JNI_TRUE,
                               dump_audio_path
                               );
    rtmp->Connect();
    return reinterpret_cast<long> (rtmp);
}


//JNIEXPORT jint JNICALL
//Java_com_blueberry_media_PublishJni_sendSpsAndPps(JNIEnv *env, jclass type, jlong cptr,
//                                                  jbyteArray sps_, jint spsLen, jbyteArray pps_,
//                                                  jint ppsLen, jlong timestamp) {
//    jbyte *sps = env->GetByteArrayElements(sps_, NULL);
//    jbyte *pps = env->GetByteArrayElements(pps_, NULL);
//    RtmpClient *rtmp = reinterpret_cast<RtmpClient *>(cptr);
//    int ret = rtmp->sendSpsAndPps((BYTE *) sps, spsLen, (BYTE *) pps, ppsLen, timestamp);
//
//    env->ReleaseByteArrayElements(sps_, sps, 0);
//    env->ReleaseByteArrayElements(pps_, pps, 0);
//    return ret;
//}

JNIEXPORT jint JNICALL
Java_com_blueberry_media_PublishJni_sendVideoData(JNIEnv *env, jclass type, jlong cptr,
                                                  jbyteArray data_, jint len, jlong timestamp) {
    jbyte *data = env->GetByteArrayElements(data_, NULL);
    RtmpClient *rtmp = reinterpret_cast<RtmpClient *> (cptr);
    int ret = rtmp->SendAVCData((BYTE *) data, len, timestamp);

    env->ReleaseByteArrayElements(data_, data, 0);

    return ret;
}

//
//JNIEXPORT jint JNICALL
//Java_com_blueberry_media_PublishJni_sendAacSpec(JNIEnv *env, jclass type, jlong cptr,
//                                                jbyteArray data_, jint len) {
//    jbyte *data = env->GetByteArrayElements(data_, NULL);
//
//    RtmpClient *rtmp = reinterpret_cast<RtmpClient *> (cptr);
//    int ret = rtmp->sendAacSpec((BYTE *) data, len);
//
//    env->ReleaseByteArrayElements(data_, data, 0);
//    return ret;
//}

JNIEXPORT jint JNICALL
Java_com_blueberry_media_PublishJni_sendAacData(JNIEnv *env, jclass type, jlong cptr,
                                                jbyteArray data_, jint len, jlong timestamp) {
    jbyte *data = env->GetByteArrayElements(data_, NULL);

    auto *rtmp = reinterpret_cast<RtmpClient *> (cptr);
    int ret = rtmp->SendAACData((BYTE *) data, len, timestamp);

    env->ReleaseByteArrayElements(data_, data, 0);
    return ret;
}

JNIEXPORT jint JNICALL
Java_com_blueberry_media_PublishJni_stop(JNIEnv *env, jclass type, jlong cptr) {
    auto *rtmp = reinterpret_cast<RtmpClient *> (cptr);
    delete rtmp;
    return 0;
}

JNIEXPORT jint JNICALL
Java_com_blueberry_media_PublishJni_sendMetaData(JNIEnv *env, jclass clazz,
                                                 jlong cptr,
                                                 jdouble width,
                                                 jdouble height,
                                                 jdouble video_data_rate, jdouble frame_rate,
                                                 jdouble audio_data_rate, jdouble audio_sample_rate,
                                                 jdouble audio_sample_size, jboolean stereo) {

    auto rtmp_ptr = reinterpret_cast<RtmpClient *> (cptr);
    return rtmp_ptr->SendDataFrame(width, height, video_data_rate, frame_rate, audio_data_rate,
                                   audio_sample_rate, audio_sample_size, stereo == JNI_TRUE);
}

#ifdef __cplusplus
}
#endif