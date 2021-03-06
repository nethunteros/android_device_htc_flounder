#
# Copyright (C) 2013-2016 The Android Open Source Project
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
# This file is the build configuration for an aosp Android
# build for flounder hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, aosp and flounder, hence its name.
#

# Inherit from those products. Most specific first.
$(call inherit-product, device/htc/flounder/full_flounder.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/nethunter/config/common_full_phone.mk)
$(call inherit-product, vendor/nethunter/config/nfc_enhanced.mk)

PRODUCT_NAME := nethunter_flounder

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=flounder \
    BUILD_FINGERPRINT=google/volantis/flounder:7.0/NRD91N/3318108:user/release-keys \
    PRIVATE_BUILD_DESC="flounder-user 7.0 NRD91N 3318108 release-keys"
