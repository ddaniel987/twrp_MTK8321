#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/alps/tb8321p2_bsp/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

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
