#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from sl8541e_1h10 device
$(call inherit-product, device/tk/sl8541e_1h10/device.mk)

PRODUCT_DEVICE := sl8541e_1h10
PRODUCT_NAME := lineage_sl8541e_1h10
PRODUCT_BRAND := SPRD
PRODUCT_MODEL := TK Watch
PRODUCT_MANUFACTURER := tk

PRODUCT_GMS_CLIENTID_BASE := android-tk

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sl8541e_1h10_oversea-user 8.1.0 OPM2.171019.012 29215 release-keys"

BUILD_FINGERPRINT := SPRD/sl8541e/sl8541e:8.1.0/OPM2.171019.012/29215:user/release-keys
