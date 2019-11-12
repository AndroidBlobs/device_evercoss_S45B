# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from S45B device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := evercoss
PRODUCT_DEVICE := S45B
PRODUCT_MANUFACTURER := evercoss
PRODUCT_NAME := lineage_S45B
PRODUCT_MODEL := S45B

PRODUCT_GMS_CLIENTID_BASE := android-evercoss
TARGET_VENDOR := evercoss
TARGET_VENDOR_PRODUCT_NAME := S45B
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="sp9832e_1h10_gofu_osll-user 8.1.0 OPM2.171019.012 37610 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := EVERCOSS/S45B/S45B:8.1.0/OPM2.171019.012/37610:user/release-keys
