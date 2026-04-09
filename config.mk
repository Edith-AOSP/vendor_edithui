EDITHUI_PATH := vendor/edithui

# Bootanimation
include $(EDITHUI_PATH)/bootanimation/bootanimation.mk

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
     SystemUIClocks-NumOverlap

# Theme
PRODUCT_PACKAGES += \
    EdithBlackTheme

# Power off charing resource
PRODUCT_PACKAGES += \
    pixel_charger_animation \
    pixel_charger_animation_vendor
