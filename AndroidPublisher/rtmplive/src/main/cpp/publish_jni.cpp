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
                                         jstring dumpAudioPath,
                                         jboolean dumpFlv,
                                         jstring dumpFlvPath
) {


    std::string url = GetStringUTFFromJString(env, url_);
    std::string dump_video_path = GetStringUTFFromJString(env, dumpVideoPath);
    std::string dump_audio_path = GetStringUTFFromJString(env, dumpAudioPath);
    std::string dump_flv_path = GetStringUTFFromJString(env, dumpFlvPath);

    LOGI("JNI init flv_path=%s", dump_flv_path.c_str())

    auto rtmp = new RtmpClient(url, timeOut,
                               dumpVideo == JNI_TRUE,
                               dump_video_path,
                               dumpAudio == JNI_TRUE,
                               dump_audio_path,
                               dumpFlv == JNI_TRUE,
                               dump_flv_path
                               );
    rtmp->Connect();
    return reinterpret_cast<long> (rtmp);
}

JNIEXPORT jint JNICALL
Java_com_blueberry_media_PublishJni_sendVideoData(JNIEnv *env, jclass type, jlong cptr,
                                                  jbyteArray data_, jint len, jlong timestamp) {
    jbyte *data = env->GetByteArrayElements(data_, NULL);
    RtmpClient *rtmp = reinterpret_cast<RtmpClient *> (cptr);
    int ret = rtmp->SendAVCData((BYTE *) data, len, timestamp);

    env->ReleaseByteArrayElements(data_, data, 0);

    return ret;
}

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