# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := a10
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := sun4i
TARGET_BOARD_SOC := allwinner-a10
TARGET_BOARD_PLATFORM_GPU := mali-400

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a8
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true

# Kernel
TARGET_PREBUILT_KERNEL := device/allwinner/a10/kernel
BOARD_KERNEL_CMDLINE := console=ttyS0,115200 rw init=/init loglevel=8 androidboot.hardware=sun4i
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --second_offset 0x00f00000

# Partions size
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 268435456
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Recovery tweaks
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_USES_MMCUTILS := true
BOARD_USE_LEGACY_TOUCHSCREEN := true
TARGET_RECOVERY_DEVICE_DIRS := device/allwinner/a10
TARGET_RECOVERY_FSTAB := device/allwinner/a10/recovery/root/etc/recovery.fstab

# TWRP
#TW_THEME := landscape_mdpi
RECOVERY_VARIANT := twrp
DEVICE_RESOLUTION := 800x480
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TW_INCLUDE_NTFS_3G := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TW_NO_REBOOT_BOOTLOADER := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_HAVE_SELINUX := false # Kernel doesn't support SELinux
TW_EXCLUDE_SUPERSU := true # Having SuperSU is useless now
