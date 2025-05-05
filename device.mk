#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# API levels
PRODUCT_SHIPPING_API_LEVEL := 26

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    zram.sh \

PRODUCT_PACKAGES += \
    fstab.sl8541e_1h10 \
    init.rc \
    init.recovery.sl8541e_1h10.rc \
    ueventd.rc \
    ueventd.sl8541e_1h10.rc \
    a2dp_audio_policy_configuration.xml \
    audio_hw.xml \
    audio_para \
    audio_policy_configuration.xml \
    audio_policy_volumes.xml \
    primary_audio_policy_configuration.xml \
    r_submix_audio_policy_configuration.xml \
    usb_audio_policy_configuration.xml \
    wpa_supplicant.conf \
    wpa_supplicant_overlay.conf \
    gpio-keys.kl \
    msg2138_ts.kl \

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/tk/sl8541e_1h10/sl8541e_1h10-vendor.mk)
