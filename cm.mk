## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := d5110

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/infinix/d5110/device_d5110.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d5110
PRODUCT_NAME := cm_d5110
PRODUCT_BRAND := GOOGLE
PRODUCT_MODEL := HOT 2
PRODUCT_MANUFACTURER := INFINIX
