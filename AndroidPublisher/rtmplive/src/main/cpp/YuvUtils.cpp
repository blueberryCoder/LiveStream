//
// Created by blueberry on 2023/1/22.
//


#include "libyuv.h"
#include <jni.h>

static inline libyuv::RotationMode ConvertToRotateMode(jint degree) {
    libyuv::RotationMode mode;
    switch (degree) {
        case 0 : {
            mode = libyuv::RotationMode::kRotate0;
            break;
        }
        case 1 : {
            mode = libyuv::RotationMode::kRotate90;
            break;
        }
        case 2 : {
            mode = libyuv::RotationMode::kRotate180;
            break;
        }
        case 3 : {
            mode = libyuv::RotationMode::kRotate270;
            break;
        }
    }

    return mode;
}

extern "C"
JNIEXPORT jint JNICALL
Java_com_blueberry_media_yuv_Yuv420Util_I420Rotate(JNIEnv *env,
                                                   jclass clazz,
                                                   jbyteArray java_data,
                                                   jbyteArray java_dst_data,
                                                   jint w,
                                                   jint h,
                                                   jint degree) {

    auto src_data = env->GetByteArrayElements(java_data, NULL);
    auto dst_data = env->GetByteArrayElements(java_dst_data, NULL);

    auto size = w * h;

    auto src_stride_y = w;
    auto src_stride_u = w / 2;
    auto src_stride_v = w / 2;

    auto dst_stride_y = h;
    auto dst_stride_u = h / 2;
    auto dst_stride_v = h / 2;

    auto result = libyuv::I420Rotate(reinterpret_cast<const uint8_t *>(src_data),
                                     src_stride_y,
                                     reinterpret_cast<const uint8_t *>(&src_data[size]),
                                     src_stride_u,
                                     reinterpret_cast<const uint8_t *>(&src_data[size + size / 4]),
                                     src_stride_v,

                                     reinterpret_cast<uint8_t *>(dst_data),
                                     dst_stride_y,
                                     reinterpret_cast<uint8_t *>(&dst_data[size]),
                                     dst_stride_u,
                                     reinterpret_cast<uint8_t *>(&dst_data[size + size / 4]),
                                     dst_stride_v,
                                     w,
                                     h,
                                     ConvertToRotateMode(degree)
    );

    env->SetByteArrayRegion(java_dst_data, 0, w * h * 3 / 2, dst_data);
    env->ReleaseByteArrayElements(java_data, src_data, JNI_ABORT);
    env->ReleaseByteArrayElements(java_dst_data, dst_data, JNI_ABORT);
    return result;
}