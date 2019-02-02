LOCAL_PATH := device/allwinner/a10

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/allwinner/a10/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Ramdisk
PRODUCT_PACKAGES += \
    init.recovery.sun4i.rc \
    ueventd.rc \
    ueventd.sun4i.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/recovery/root/ft5x_ts.ko:recovery/root/ft5x_ts.ko \

$(call inherit-product-if-exists, build/target/product/full.mk)