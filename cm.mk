# Release name
PRODUCT_RELEASE_NAME := d5110_infinix

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/infinix/d5110_infinix/device_d5110_infinix.mk)

# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_d5110_infinix
PRODUCT_DEVICE :=d5110_infinix
PRODUCT_BRAND := infinix
PRODUCT_MANUFACTURER := infinix
PRODUCT_MODEL := d5110_infinix