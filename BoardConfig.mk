#
# Copyright (C) 2022 TeamWin Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_OTA_ASSERT_DEVICE := dreamlte

LOCAL_PATH := device/samsung/dreamlte

# Platform
TARGET_ARCH 				 := arm64
TARGET_ARCH_VARIANT			 := armv8-a
TARGET_CPU_ABI				 := arm64-v8a
TARGET_CPU_ABI2              :=
TARGET_CPU_VARIANT           := cortex-a53
TARGET_CPU_SMP               := true
TARGET_2ND_ARCH				 := arm
TARGET_2ND_ARCH_VARIANT		 := armv8-a
TARGET_2ND_CPU_ABI			 := armeabi-v7a
TARGET_2ND_CPU_ABI2			 := armeabi
TARGET_2ND_CPU_VARIANT		 := cortex-a53
TARGET_BOARD_PLATFORM        := exynos8895
TARGET_BOOTLOADER_BOARD_NAME := universal8895
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Kernel custom bootimg
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk

# Kernel config
TARGET_KERNEL_SOURCE := kernel/samsung/universal8895
TARGET_KERNEL_CONFIG := exynos8895-dreamlte_defconfig

TARGET_KERNEL_ADDITIONAL_FLAGS := HOSTCFLAGS="-fuse-ld=lld -Wno-unused-command-line-argument"
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_IMAGE_NAME := Image
#BOARD_KERNEL_CMDLINE := The bootloader ignores the cmdline from the boot.img
BOARD_KERNEL_SEPARATED_DT := true
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE     := 41943040
BOARD_CACHEIMAGE_PARTITION_SIZE    := 209715200
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 48234496
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 4400000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27044851712
BOARD_FLASH_BLOCK_SIZE             := 131072
BOARD_HAS_LARGE_FILESYSTEM         := true
TARGET_USERIMAGES_USE_EXT4         := true
TARGET_USERIMAGES_USE_F2FS         := true

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4

# Bootloader
TARGET_NO_BOOTLOADER := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
# Display & Graphics
TW_MAX_BRIGHTNESS := 36600
TW_DEFAULT_BRIGHTNESS := 15300
TW_THEME := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_DEVICE_VERSION	:= 0_notnoelchannel
# TWRP Recovery
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FBE := true
TW_EXTRA_LANGUAGES := false
TW_USE_NEW_MINADBD := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_RECOVERY_FSTAB := device/samsung/dreamlte/recovery/recovery.fstab
