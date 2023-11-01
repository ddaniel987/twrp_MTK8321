$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace $$DEVICE$$ with your Device Name's Value.
# Replace $$BRAND$$ with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/alps/tb8321p2_bsp/prebuilt/zImage:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := tb8321p2_bsp
PRODUCT_NAME := omni_tb8321p2_bsp
PRODUCT_BRAND := alps
PRODUCT_MODEL := tb8321p2_bsp
PRODUCT_MANUFACTURER := alps
PRODUCT_RELEASE_NAME := alps tb8321p2_bsp

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="alps/full_tb8321p2_bsp/tb8321p2_bsp:10/QP1A.190711.019/df2008030937:userdebug/test-keys" \
    PRIVATE_BUILD_DESC="full_tb8321p2_bsp-userdebug 10 QP1A.190711.019 20200803 test-keys"
