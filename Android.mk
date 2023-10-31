LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), tb8321p2_bsp)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif