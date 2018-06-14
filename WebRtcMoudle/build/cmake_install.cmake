# Install script for directory: /home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libwebRTC.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libwebRTC.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libwebRTC.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/build/libwebRTC.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libwebRTC.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libwebRTC.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libwebRTC.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/build/libwebRTC.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/webRtcModule" TYPE FILE FILES
    "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/analog_agc.h"
    "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/complex_fft_tables.h"
    "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/cpu_features_wrapper.h"
    "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/defines.h"
    "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/digital_agc.h"
    "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/fft4g.h"
    "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/gain_control.h"
    "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/noise_suppression.h"
    "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/noise_suppression_x.h"
    "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/ns_core.h"
    "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/nsx_core.h"
    "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/nsx_defines.h"
    "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/real_fft.h"
    "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/resample_by_2_internal.h"
    "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/ring_buffer.h"
    "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/signal_processing_library.h"
    "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/spl_inl.h"
    "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/typedefs.h"
    "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/windows_private.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/lijianglong/C++ 编程学习/cmake/webRTC/nsagc/WebRtcMoudle/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
