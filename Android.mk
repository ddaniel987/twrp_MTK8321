ifneq ($(filter tb8321p2_bsp,$(TARGET_DEVICE)),)

LOCAL_PATH := device/alps/tb8321p2_bsp

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
