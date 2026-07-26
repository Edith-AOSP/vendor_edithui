# edithui Bootanimation
ifeq ($(TARGET_BOOT_ANIMATION_RES),)
$(warning "edithui: TARGET_BOOT_ANIMATION_RES not defined, using legacy")
    PRODUCT_COPY_FILES += $(EDITHUI_PATH)/bootanimation/xd_boot_legacy.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
else
ifeq ($(TARGET_BOOT_ANIMATION_RES),480)
    PRODUCT_COPY_FILES += $(EDITHUI_PATH)/bootanimation/xd_boot_480.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif
ifeq ($(TARGET_BOOT_ANIMATION_RES),720)
    PRODUCT_COPY_FILES += $(EDITHUI_PATH)/bootanimation/xd_boot_720.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif
ifeq ($(TARGET_BOOT_ANIMATION_RES),1080)
    PRODUCT_COPY_FILES += $(EDITHUI_PATH)/bootanimation/xd_boot_1080.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif
ifeq ($(TARGET_BOOT_ANIMATION_RES),1440)
    PRODUCT_COPY_FILES += $(EDITHUI_PATH)/bootanimation/xd_boot_1440.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif
endif