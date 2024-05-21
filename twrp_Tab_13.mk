#
# Copyright (C) 2020 The Android Open Source Project
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


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from device
$(call inherit-product, device/blackview/Tab_13/device.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Tab_13
PRODUCT_NAME := twrp_Tab_13
PRODUCT_BRAND := Blackview
PRODUCT_MODEL := Tab 13
PRODUCT_MANUFACTURER := Blackview

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Tab_13 \
    PRODUCT_NAME=Tab_13 \
    PRIVATE_BUILD_DESC="full_tp737_dk_dk039_69_s0-user 12 SP1A.210812.016 1667273164 release-keys"

BUILD_FINGERPRINT := Blackview/Tab_13/Tab_13:12/SP1A.210812.016/1667273164:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-wheatek
