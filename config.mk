# Copyright (C) 2020 Paranoid Android
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

# Automated
$(call inherit-product, vendor/google/pixel/pixel-vendor.mk)
$(call inherit-product, vendor/google/extras/pixel/packages.mk)

# Overlays
PRODUCT_PACKAGES += \
    PixelDocumentsUIGoogleOverlay \
    PixelDocumentsUIOverlay \
    PixelFrameworksOverlay \
    PixelSettingsOverlay \
    PixelSetupWizardOverlay \
    PixelSetupWizardOverlay2021 \
    PixelSetupWizardStringsOverlay \
    PixelSystemUIOverlay

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/google/pixel/overlay/static
PRODUCT_PACKAGE_OVERLAYS += vendor/google/pixel/overlay/static

# Set default ringtone, notification and alarm
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.alarm_alert=Fresh_start.ogg \
    ro.config.notification_sound=Eureka.ogg \
    ro.config.ringtone=Your_new_adventure.ogg

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
    vendor/google/pixel/sepolicy
