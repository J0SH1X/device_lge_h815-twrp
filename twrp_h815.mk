#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from h815 device
$(call inherit-product, device/lge/h815/device.mk)

PRODUCT_DEVICE := h815
PRODUCT_NAME := twrp_h815
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H815
PRODUCT_MANUFACTURER := lge

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lineage_h815-userdebug 16 BP2A.250805.005 eng.j0sh1x test-keys"

BUILD_FINGERPRINT := lge/p1_global_com/p1:6.0/MRA58K/152940055675e:user/release-keys
