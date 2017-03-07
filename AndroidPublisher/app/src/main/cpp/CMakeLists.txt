
cmake_minimum_required(VERSION 3.4.1)
set(rtmp_dir ${CMAKE_SOURCE_DIR}/../../../../rtmp)
set(rtmp_lib_dir ${rtmp_dir}/lib)
#添加头文件目录
include_directories(${rtmp_dir}/include/librtmp)

add_library( publish
             SHARED
              publish_jni.cpp
              Rtmp.cpp
             )


find_library(
              log-lib
              log )

#librtmp

add_library(rtmp SHARED IMPORTED)
set_target_properties(rtmp PROPERTIES IMPORTED_LOCATION
                      ${rtmp_lib_dir}/${ANDROID_ABI}/librtmp.so)

target_link_libraries( publish
                       ${log-lib}
                      rtmp
                        )
