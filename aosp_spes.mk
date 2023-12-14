#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
SELINUX_IGNORE_NEVERALLOWS := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)


TARGET_BOOT_ANIMATION_RES := 1080

# Product Specifics
PRODUCT_NAME := aosp_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service-sdm

# Fingerprint
# BUILD_FINGERPRINT := "Redmi/spes/spes:12/SKQ1.211103.001/V13.0.6.0.SGKMIXM:user/release-keys"
