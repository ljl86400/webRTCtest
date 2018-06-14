cmake_minimum_required(VERSION 2.8)
PROJECT(webRTCLIB)

AUX_SOURCE_DIRECTORY(. DIR_SRCS)
SET(DIR_HEADERS analog_agc.h complex_fft_tables.h cpu_features_wrapper.h defines.h digital_agc.h 
		fft4g.h gain_control.h noise_suppression.h noise_suppression_x.h ns_core.h 			nsx_core.h nsx_defines.h real_fft.h resample_by_2_internal.h ring_buffer.h 			signal_processing_library.h spl_inl.h typedefs.h windows_private.h)
# SET(LIBWebRTC_SRC ${DIR_SRCS})
ADD_LIBRARY(webRTC SHARED ${DIR_SRCS})
ADD_LIBRARY(webRTC_static STATIC ${DIR_SRCS})
ADD_DEFINITIONS(-DWEBRTC_POSIX)
SET_TARGET_PROPERTIES(webRTC_static PROPERTIES OUTPUT_NAME "webRTC")
GET_TARGET_PROPERTY(OUTPUT_VALUE webRTC_static OUTPUT_NAME)
MESSAGE(STATUS "this is the webRTC_static OUTPUT_NAME:"${OUTPUT_VALUE})

SET_TARGET_PROPERTIES(webRTC PROPERTIES CLEAN_DIRECT_OUTPUT 1)
SET_TARGET_PROPERTIES(webRTC_static PROPERTIES CLEAN_DIRECT_OUTPUT 1)

#INCLUDE_DIRECTORIES(.)

INSTALL(TARGETS webRTC webRTC_static 
	LIBRARY DESTINATION lib 
	ARCHIVE DESTINATION lib
	RUNTIME DESTINATION lib
	COMPONENT library)

INSTALL(FILES ${DIR_HEADERS} DESTINATION include/webRtcModule)

#AUX_SOURCE_DIRECTORY(${PROJECT_SOURCE_DIR}/WebRtcModule module_srs)


