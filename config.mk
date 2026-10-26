EDITHUI_PATH := vendor/edithui

# Bootanimation
include $(EDITHUI_PATH)/bootanimation/bootanimation.mk

# Fonts
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/edithui/fonts,$(TARGET_COPY_OUT_PRODUCT)/fonts) \
    vendor/edithui/etc/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml

PRODUCT_PACKAGES += \
    FontGoogleSans \
    FontInter \
    FontOneSans \
    FontOppoSans \
    FontOneUISans

# Overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/edithui/overlay
DEVICE_PACKAGE_OVERLAYS += \
    vendor/edithui/overlay/common/

# Lockscreen Clock Styles
PRODUCT_PACKAGES += \
     SystemUIClocks-BigNum \
     SystemUIClocks-Calligraphy \
     SystemUIClocks-Growth \
     SystemUIClocks-Inflate \
     SystemUIClocks-Metro \
     SystemUIClocks-NumOverlap \
     SystemUIClocks-Weather \
     SystemUIClocks-EdithClockFraunces \
     SystemUIClocks-EdithClockLiterata

# Theme
PRODUCT_PACKAGES += \
    EdithBlackTheme

# Recovery UI assets (Google Sans Flex atlases, the mark, the back chevron) and,
# for the densities we render, the status text images. TARGET_PRIVATE_RES_DIRS
# takes a single directory here: the platform recipe joins multiple entries into
# a command that is not valid shell.
EDITH_RECOVERY_DPI := $(or $(filter mdpi hdpi xhdpi xxhdpi xxxhdpi,$(PRODUCT_AAPT_PREF_CONFIG)),xxhdpi)
TARGET_PRIVATE_RES_DIRS := vendor/edithui/recovery/$(EDITH_RECOVERY_DPI)/res

# Power off charing resource
PRODUCT_PACKAGES += \
    pixel_charger_animation \
    pixel_charger_animation_vendor
