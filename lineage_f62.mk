#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from f62 device
$(call inherit-product, device/samsung/f62/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_f62
PRODUCT_DEVICE := f62
PRODUCT_MANUFACTURER := samsung
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-E625F

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Build Info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="f62ins-user 13 TP1A.220624.014 E625FDDU2CVK2 release-keys"

BUILD_FINGERPRINT := samsung/f62ins/f62:13/TP1A.220624.014/E625FDDU2CVK2:user/release-keys
