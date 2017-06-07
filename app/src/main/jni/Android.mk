LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

#opencv
#change the OPENCVROOT if you work on a different computer
OPENCVROOT:= /Volumes/WuTang_Mac/Android/Projects/OpenCV-2.4.9-android-sdk
OPENCV_CAMERA_MODULES:=on
OPENCV_INSTALL_MODULES:=on
OPENCV_LIB_TYPE:=SHARED
include ${OPENCVROOT}/sdk/native/jni/OpenCV.mk

LOCAL_SRC_FILES := com_example_wuyuan_ndkopencvtest1_OpencvNativeClass.cpp

LOCAL_LDLIBS += -llog
LOCAL_MODULE := MyOpencvLibs


include $(BUILD_SHARED_LIBRARY)