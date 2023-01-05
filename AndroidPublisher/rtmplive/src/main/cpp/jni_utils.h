//
// Created by bytedance on 2022/12/25.
//

#ifndef ANDROIDPUBLISHER_JNI_UTILS_H
#define ANDROIDPUBLISHER_JNI_UTILS_H

#include <jni.h>

#include <string>

static std::string GetStringUTFFromJString(JNIEnv *env, jstring jstring) {
    const char *cstr = env->GetStringUTFChars(jstring, NULL);
    std::string str(cstr);
    env->ReleaseStringUTFChars(jstring, cstr);
    return std::move(str);
}

#endif //ANDROIDPUBLISHER_JNI_UTILS_H
