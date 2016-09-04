#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

BOARD_VENDOR := lge

COMMON_PATH := device/lge/g4-common

TARGET_SPECIFIC_HEADER_PATH := $(COMMON_PATH)/include

# Platform
TARGET_BOARD_PLATFORM := msm8992
TARGET_BOARD_PLATFORM_GPU := qcom-adreno418

# CPU
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53.a57

TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8992
TARGET_NO_BOOTLOADER := true

TARGET_USES_C2D_COMPOSITION := true

# Kernel
BOARD_DTBTOOL_ARGS := -2
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 msm_rtb.filter=0x37 boot_cpus=0-5
BOARD_KERNEL_BASE := 0x00078000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01f88000 --tags_offset 0x01d88000
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/lge/msm8992
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_USES_UNCOMPRESSED_KERNEL := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 41943040
BOARD_CACHEIMAGE_PARTITION_SIZE := 1291845632
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 41943040
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Recovery
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/rootdir/etc/fstab.qcom

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_SUPPORTS_SOUND_TRIGGER := false

AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
AUDIO_FEATURE_ENABLED_COMPRESS_CAPTURE := true
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
#AUDIO_FEATURE_ENABLED_FM := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_LOW_LATENCY_CAPTURE := true
AUDIO_FEATURE_ENABLED_MULTIPLE_TUNNEL := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true

AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
#AUDIO_FEATURE_ENABLED_INCALL_MUSIC := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true

# Wi-Fi
BOARD_WLAN_DEVICE := bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_bcmdhd.bin"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_CUSTOM_BT_CONFIG := device/lge/g4-common/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/g4-common/bluetooth

# RIL
BOARD_RIL_CLASS := ../../../device/lge/g4-common/ril/

# GPS
USE_DEVICE_SPECIFIC_GPS := true
USE_DEVICE_SPECIFIC_LOC_API := true
TARGET_NO_RPC := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# Display
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_USES_ION := true
#TARGET_USES_NEW_ION_API :=true
TARGET_USES_OVERLAY := true
USE_OPENGL_RENDERER := true

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

HAVE_ADRENO_SOURCE:= false
OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Offmode Charging
BOARD_CHARGER_DISABLE_INIT_BLANK := true

# Power
TARGET_POWERHAL_VARIANT := qcom
TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/lge_touch/tap2wake"

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Keystore
TARGET_PROVIDES_KEYMASTER := true

# SELinux
include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy

# Disable HW based full disk encryption
TARGET_HW_DISK_ENCRYPTION := false

# NFC
BOARD_NFC_CHIPSET := pn547
BOARD_NFC_DEVICE := "/dev/pn547"

# HAL static libs
BOARD_HAL_STATIC_LIBRARIES := \
    libhealthd.msm8992

# CMHW
BOARD_USES_CYANOGEN_HARDWARE := true
BOARD_HARDWARE_CLASS := \
    $(COMMON_PATH)/cmhw \
    hardware/cyanogen/cmhw

# inherit from the proprietary version
-include vendor/lge/g4-common/BoardConfigVendor.mk
