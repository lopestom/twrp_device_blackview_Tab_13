LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), Tab_13)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
