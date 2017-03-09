# Release name
PRODUCT_RELEASE_NAME := ms013g

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit device configuration
$(call inherit-product, device/samsung/ms013g/full_ms013g.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ms013g
PRODUCT_NAME := lineage_ms013g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-G7102
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ms013g TARGET_DEVICE=ms013g BUILD_FINGERPRINT="samsung/ms013g/ms013g:4.4.2/KOT49H/G7102DDUBNK1:user/release-keys" PRIVATE_BUILD_DESC="ms013g-user 4.4.2 KOT49H G7102DDUBNK1 release-keys"
