#
# Copyright (C) 2018,2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),sirius)
   subdir_makefiles=$(call first-makefiles-under,$(LOCAL_PATH))
   $(foreach mk,$(subdir_makefiles),$(info including $(mk) ...)$(eval include $(mk)))

include $(CLEAR_VARS)

GPS_CONF_SYMLINK := $(PRODUCT_OUT)/system/etc/gps.conf
$(GPS_CONF_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@mkdir -p $(dir $@)
	$(hide) ln -sf /vendor/etc/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(GPS_CONF_SYMLINK)

endif
