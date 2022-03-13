#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from WSP_sprout device
$(call inherit-product, device/hmd/WSP_sprout/device.mk)

PRODUCT_DEVICE := WSP_sprout
PRODUCT_NAME := lineage_WSP_sprout
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 2.2
PRODUCT_MANUFACTURER := hmd

PRODUCT_GMS_CLIENTID_BASE := android-hmd-rev2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_wasp-user 11 RP1A.200720.011 1068 release-keys"

BUILD_FINGERPRINT := Nokia/Wasp_00WW/WSP_sprout:11/RP1A.200720.011/00WW_3_270:user/release-keys
