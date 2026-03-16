# Copyright 2014 The Android Open Source Project
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

TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT_RUNTIME := generic

TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_VARIANT_RUNTIME := generic

BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000

# Serial console
#BOARD_KERNEL_CMDLINE += earlycon=msm_geni_serial,0x99c000

BOARD_BOOTCONFIG += androidboot.usbcontroller=a600000.dwc3

TARGET_RECOVERY_WIPE := $(PLATFORM_COMMON_PATH)/rootdir/recovery.wipe
TARGET_RECOVERY_FSTAB ?= $(PLATFORM_COMMON_PATH)/rootdir/vendor/etc/fstab.nagara

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(PLATFORM_COMMON_PATH)/sepolicy_platform

# https://source.android.com/devices/bootloader/partitions/generic-boot#combinations, "Launch device with A/B recovery partition":
BOARD_USES_RECOVERY_AS_BOOT :=
BOARD_USES_GENERIC_KERNEL_IMAGE := true
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT :=
BOARD_MOVE_GSI_AVB_KEYS_TO_VENDOR_BOOT := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 104857600
BOARD_EXCLUDE_KERNEL_FROM_RECOVERY_IMAGE := true
BOARD_COPY_BOOT_IMAGE_TO_TARGET_FILES :=
BOARD_USES_FULL_RECOVERY_IMAGE := true

# Set boot header version
BOARD_BOOT_HEADER_VERSION := 4

include device/sony/common/CommonConfig.mk
