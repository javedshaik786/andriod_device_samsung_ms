#
# Copyright (C) 2013 The CyanogenMod Project
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
#

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

LOCAL_PATH := device/samsung/ms013g

TARGET_SPECIFIC_HEADER_PATH += $(LOCAL_PATH)/include

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := $(LOCAL_PATH)/bluetooth/vnd_ms013g.txt

# Camera
BOARD_GLOBAL_CFLAGS += -DCAMERA_WITH_CITYID_PARAM

TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# Text Relocations
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
ifeq ($(TARGET_VOICE_TECH), cdma)
TARGET_KERNEL_CONFIG := lineageos_ms013gcdma_defconfig
else
TARGET_KERNEL_CONFIG := lineageos_ms013g_defconfig
endif

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/ms013g/rootdir/fstab.smdk4x12
TARGET_RECOVERY_DENSITY := mdpi
RECOVERY_FSTAB_VERSION := 2

# F2FS
PRODUCT_PACKAGES += \
    fibmap.f2fs \
    fsck.f2fs \
    mkfs.f2fs

TARGET_USERIMAGES_USE_F2FS := true

# keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := mdm9x35
BOARD_RIL_CLASS := ../../../device/samsung/ms013g/ril

# assert
TARGET_OTA_ASSERT_DEVICE := GT-ms013g

# Selinux
BOARD_SEPOLICY_DIRS += device/samsung/ms013g/selinux
