$(call inherit-product, device/lge/d852/full_d852.mk)

# Inherit some common EOS stuff.
$(call inherit-product, vendor/eos/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/eos/config/nfc_enhanced.mk)

# Copy bootanimation
PRODUCT_COPY_FILES += \
vendor/eos/prebuilt/common/bootanimation/1080.zip:system/media/bootanimation.zip

PRODUCT_NAME := eos_d852

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="g3_bell_ca" \
    BUILD_FINGERPRINT="lge/g3_bell_ca/g3:4.4.2/KVT49L.D85210b/D85210b.1405397224:user/release-keys" \
    PRIVATE_BUILD_DESC="g3_bell_ca-user 4.4.2 KVT49L.D85210b D85210b.1405397224 release-keys"
