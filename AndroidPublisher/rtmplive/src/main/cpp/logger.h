//
// Created by blueberry on 2022/12/25.
//

#ifndef ANDROIDPUBLISHER_LOGGER_H
#define ANDROIDPUBLISHER_LOGGER_H

#include <android/log.h>
#include "log.h"
#include <stdio.h>

#define TAG "PUBLISH-C"
#define MAX_PRINT_LEN  2048

#define LOGD(fmt, ...) \
        __android_log_print(ANDROID_LOG_DEBUG, TAG,fmt, ##__VA_ARGS__);

#define LOGI(fmt, ...) \
        __android_log_print(ANDROID_LOG_INFO, TAG,fmt, ##__VA_ARGS__);

#define LOGE(fmt, ...) \
        __android_log_print(ANDROID_LOG_ERROR, TAG,fmt, ##__VA_ARGS__);

static void rtmp_log_imp(int level, const char *format, va_list vl) {
    char str[MAX_PRINT_LEN] = "";
    vsnprintf(str, MAX_PRINT_LEN - 1, format, vl);
    if (RTMP_debuglevel < RTMP_LOGALL && strstr(str, "no-name") != NULL)
        return;

    LOGI("RTMP-LOG: %s", str);
}

#endif //ANDROIDPUBLISHER_LOGGER_H
