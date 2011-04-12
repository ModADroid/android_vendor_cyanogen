# Inherit device configuration for Vibrant.
$(call inherit-product, device/samsung/fascinate/full_fascinate.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_fascinate
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := fascinate
PRODUCT_MODEL := SCH-I500
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SCH-I500 BUILD_ID=FRG83 BUILD_DISPLAY_ID=FRG83 BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.2.1/FRG83/60505:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.2.1 FRG83 60505 release-keys"

# Extra Vibrant overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/fascinate

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-6-$(shell date +%m%d%Y)-NIGHTLY-Fascinate
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-6.2.0-BETA-$(shell date +%m%d)-Fascinate
endif

#
# Copy Vibrant specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
