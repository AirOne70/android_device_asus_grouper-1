#
# Copyright (C) 2010 The Android Open Source Project
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

PRODUCT_COPY_FILES := \
    device/asus/grouper/fstab.grouper:root/fstab.grouper \
    device/asus/grouper/init.grouper.rc:root/init.grouper.rc \
    device/asus/grouper/init.grouper.usb.rc:root/init.grouper.usb.rc
    
# the actual meat of the device-specific product definition
$(call inherit-product, device/asus/grouper/device-common.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=wifi-only \
    ro.radio.noril=true

DEVICE_PACKAGE_OVERLAYS := \
    device/asus/grouper/overlay

# Use specific resolution for bootanimation
SMALL_BOOTANIMATION_SIZE := 720x720
