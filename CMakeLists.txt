cmake_minimum_required(VERSION 2.8)
PROJECT(webRTC)

SET(CMAKE_CXX_FLAGS_DEBUG "")

AUX_SOURCE_DIRECTORY(${PROJECT_SOURCE_DIR} main_srs)

include_directories(/usr/include/webRtcModule)
include_directories(${PROJECT_SOURCE_DIR})

add_executable(webRTCtest  ${main_srs})

TARGET_LINK_LIBRARIES(webRTCtest libwebRTC.so)
TARGET_LINK_LIBRARIES(webRTCtest libpthread.so)
