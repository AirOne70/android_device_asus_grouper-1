# Release name
PRODUCT_RELEASE_NAME := grouper

# Inherit some common stuff.
$(call inherit-product, vendor/du/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/asus/grouper/aosp_grouper.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := grouper
PRODUCT_NAME := du_grouper
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := ASUS

PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=grouper \
    BUILD_FINGERPRINT=google/nakasi/grouper:7.1.1/N6F26R/3582520:user/release-keys \
    PRIVATE_BUILD_DESC="grouper-user 7.1.1 N6F26R 3582520 release-keys"
