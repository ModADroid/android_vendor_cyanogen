# Inherit device configuration for GalaxyTab.
$(call inherit-product, device/samsung/galaxytab/device_galaxytab.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_galaxytab
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := galaxytab
PRODUCT_MODEL := SCH-I800
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SCH-I800 PRODUCT_DEVICE=SCH-I800 BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=google/soju/crespo:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.3 GRI40 102588 release-keys"

# Extra galaxytab overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/galaxytab

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-galaxytab
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=khasmek_galaxytab_CM7_defconfig  
#PRODUCT_SPECIFIC_DEFINES += TARGETARCH=arm

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-GalaxyTab
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-Beta-GalaxyTab
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-Beta-GalaxyTab-KANG
    endif
endif

#
# Copy galaxytab specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
