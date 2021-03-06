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
	PRODUCT_NAME=nakasi \
	BUILD_FINGERPRINT="google/nakasi/grouper:5.1/LMY47D/1743759:user/release-keys" \
	PRIVATE_BUILD_DESC="nakasi-user 5.1 LMY47D 1743759 release-keys"
