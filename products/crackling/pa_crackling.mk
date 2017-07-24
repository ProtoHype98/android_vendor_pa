# Copyright (C) 2017 Paranoid Android
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

TARGET_BOOT_ANIMATION_RES := 720

include device/qcom/common/common.mk

# Inherit from crackling device
$(call inherit-product, device/wileyfox/crackling/device.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

# Device identifier. This must come after all inclusions
BOARD_VENDOR := wileyfox
PRODUCT_BRAND := Wileyfox
PRODUCT_DEVICE := crackling
PRODUCT_NAME := pa_crackling
PRODUCT_MANUFACTURER := Wileyfox
PRODUCT_MODEL := Wileyfox Swift

PRODUCT_GMS_CLIENTID_BASE := android-wileyfox

# Paranoid Android platform
include vendor/pa/main.mk

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Wileyfox/Swift/crackling:7.1.1/N6F26Y/5506d7d322:user/release-keys \
    PRIVATE_BUILD_DESC="crackling-user 7.1.1 N6F26Y 5506d7d322 release-keys"