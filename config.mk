EDITHUI_PATH := vendor/edithui

# Bootanimation
include $(EDITHUI_PATH)/bootanimation/bootanimation.mk

# Fonts
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/edithui/fonts,$(TARGET_COPY_OUT_PRODUCT)/fonts) \
    vendor/edithui/etc/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml

PRODUCT_PACKAGES += \
    FontGoogleSans

# Overlays
PRODUCT_PACKAGES += \
	WallpaperDefaultOverlay

# Lockscreen Clock Styles
PRODUCT_PACKAGES += \
     SystemUIClocks-BigNum \
     SystemUIClocks-Calligraphy \
     SystemUIClocks-Growth \
     SystemUIClocks-Inflate \
     SystemUIClocks-Metro \
     SystemUIClocks-NumOverlap \
     SystemUIClocks-Weather

# Theme
PRODUCT_PACKAGES += \
    EdithBlackTheme

# Power off charing resource
PRODUCT_PACKAGES += \
    pixel_charger_animation \
    pixel_charger_animation_vendor
