#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/sirius/device.mk)

# Inherit some common PixelExperience stuff.
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_sirius
PRODUCT_DEVICE := sirius
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8 SE
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Xiaomi/sirius/sirius:10/QKQ1.190828.002/V12.0.2.0.QEBCNXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sirius-user 10 QKQ1.190828.002 V12.0.2.0.QEBCNXM release-keys" \
    PRODUCT_NAME="sirius"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
