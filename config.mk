EDITHUI_PATH := vendor/edithui

# Bootanimation
include $(EDITHUI_PATH)/bootanimation/bootanimation.mk

# Overlays
PRODUCT_PACKAGES += \
	WallpaperDefaultOverlay
