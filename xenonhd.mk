# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common stuff.
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

PRODUCT_PROPERTY_OVERRIDES += ro.xenonhd.maintainer=iceandfire

## Device identifier. This must come after all inclusions
PRODUCT_NAME := xenonhd_angler
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6P

TARGET_VENDOR := huawei

PRODUCT_PACKAGES += \
    Adaway \
    KernelAdiutor

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:7.1.2/N2G48B/4073501:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 7.1.2 N2G48B 4073501 release-keys"
