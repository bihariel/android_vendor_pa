# Copyright (C) 2012 ParanoidAndroid Project
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

# Check for target product
ifeq (pa_aries,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := XHDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_i9300

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/xiaomi/aries/aries.mk)

# Product Package Extras - Repos can be added manually or via addprojects.py
#include vendor/pa/packages/aries.mk

# CM Package Extras
include vendor/pa/packages/cm.mk

# Override AOSP build properties
PRODUCT_NAME := pa_aries
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 2
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=aries TARGET_DEVICE=aries BUILD_FINGERPRINT="Xiaomi/aries/aries:4.3/JSS15J/573038:user/release-keys" PRIVATE_BUILD_DESC="aries-user 4.3 JSS15J 573038 release-keys"

# Include ParanoidAndroid repos configuration
include vendor/pa/config/pa_addons.mk

endif
