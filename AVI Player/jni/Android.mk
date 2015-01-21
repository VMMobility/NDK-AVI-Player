LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := AVIPlayer
LOCAL_SRC_FILES := \
	Common.cpp \
	com_apress_aviplayer_AbstractPlayerActivity.cpp \
	com_apress_aviplayer_BitmapPlayerActivity.cpp

# Use AVILib static library 
LOCAL_STATIC_LIBRARIES += avilib_static

# Link with JNI graphics
LOCAL_LDLIBS += -ljnigraphics

include $(BUILD_SHARED_LIBRARY)

# Import AVILib library module
$(call import-module, transcode-1.1.5/avilib)
