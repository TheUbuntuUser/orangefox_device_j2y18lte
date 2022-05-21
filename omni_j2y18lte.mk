# Release name
PRODUCT_RELEASE_NAME := j2y18lte

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

PRODUCT_COPY_FILES += device/samsung/j2y18lte/kernel:kernel

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j2y18lte
PRODUCT_NAME := omni_j2y18lte
PRODUCT_MODEL := SM-J250G
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

export ALLOW_MISSING_DEPENDENCIES=true
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
export FOX_USE_NANO_EDITOR=1
export FOX_VERSION=R11.1_1
export LC_ALL=C
export OF_MAINTAINER=Astrako