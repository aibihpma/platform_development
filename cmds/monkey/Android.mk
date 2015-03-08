# Copyright 2008 The Android Open Source Project
#
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-subdir-java-files)
LOCAL_MODULE := monkey
include $(BUILD_JAVA_LIBRARY)

monkey_installed_module := $(LOCAL_INSTALLED_MODULE)

include $(CLEAR_VARS)
LOCAL_MODULE := monkey_cmd
LOCAL_MODULE_STEM := monkey
LOCAL_SRC_FILES := monkey
LOCAL_MODULE_CLASS := EXECUTABLES
include $(BUILD_PREBUILT)

$(monkey_installed_module): | $(LOCAL_MODULE)
