LOCAL_PATH := device/infinix/d5110_infinix

# Platform
TARGET_BOARD_PLATFORM := mt6580
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7

TARGET_LDPRELOAD := libxlog.so

BOARD_HAS_NO_SELECT_BUTTON := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6580

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_LEGACY_MTK_AV_BLOB := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

# Partitions
# We need the partitions size in decimal
# Use cat proc/partitions via adb, then block size * 1024
# This is the partitions of Infinix ROM, system size is bigger than Android One ROM
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2634022912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12538347520
# For the following line, do KERNEL_PAGE_SIZE * 64 (Most of time it is 2048 * 64)
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4:=true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

# You can get the following info by unpacking your boot.img file

BOARD_KERNEL_CMDLINE += \
	bootopt=64S3,32S1,32S1 \
	androidboot.selinux=permissive
	
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048

# Flags
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_KMODULES := true

COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# We use prebuilt kernel to compile because no kernel source code

TARGET_PREBUILT_KERNEL := device/infinix/d5110_infinix/kernel
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --tags_offset 0x0e000000 --board X510-D5110-L-20
BOARD_CUSTOM_BOOTIMG := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/infinix/d5110_infinix/kernel

TARGET_RECOVERY_FSTAB := device/infinix/d5110_infinix/rootdir/root/fstab.mt6580

TARGET_OTA_ASSERT_DEVICE := d5110,d5110_infinix,Infinix_X510,Infinix_X510_sprout,"Infinix D5110"
# This is what we need to compile TWRP
DEVICE_RESOLUTION := 720x1280
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_REBOOT_BOOTLOADER := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file
TW_MAX_BRIGHTNESS := 255
TW_INTERNAL_STORAGE_PATH := "/emmc"
TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/mtk-msdc.0/by-name/userdata"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,discard,noauto_da_alloc,data=ordered"
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_FB2PNG := true

# Deodex
WITH_DEXPREOPT := false
DISABLE_DEXPREOPT := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/infinix/d5110_infinix/bluetooth

# EGL settings
BOARD_EGL_CFG := device/infinix/d5110_infinix/rootdir/system/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# SELINUX
BOARD_SEPOLICY_DIRS := \
       device/infinix/d5110_infinix/sepolicy

BOARD_SEPOLICY_UNION := \
       device.te \
       app.te \
       system.te \
       netd.te \
       file_contexts

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"

# RIL
# BOARD_RIL_CLASS := ../../../device/infinix/d5110_infinix/ril/

BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc

# We use this to fix Wi-Fi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/infinix/d5110_infinix/include
