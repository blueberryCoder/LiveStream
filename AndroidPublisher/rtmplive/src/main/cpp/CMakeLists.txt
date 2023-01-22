cmake_minimum_required(VERSION 3.4.1)
add_definitions(-DNO_CRYPTO)
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -save-temps=obj")
SET(CMAKE_BUILD_TYPE "Debug")

file(GLOB main ./*.h ./*.cpp ./*c)
add_library(publish
        SHARED
        ${main}
        )

find_library(
        log-lib
        log)

file(GLOB RTMPSources vendor/librtmp/*.h vendor/librtmp/*.c)
file(GLOB_RECURSE YuvSources vendor/libyuv/include/*.h vendor/libyuv/source/*.cc)

add_library(librtmp STATIC ${RTMPSources})
add_library(libyuv STATIC ${YuvSources})
target_include_directories(libyuv PRIVATE vendor/libyuv/include)

target_link_libraries(publish ${log-lib} librtmp libyuv)

target_include_directories(publish PRIVATE vendor vendor/libyuv/include)
