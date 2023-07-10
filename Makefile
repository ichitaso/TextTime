DEBUG = 0
FINALPACKAGE = 1

ARCHS = arm64 arm64e

ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
TARGET = iphone:16.2:15.0
else
TARGET = iphone:14.5:12.0
endif

THEOS_DEVICE_IP = 192.168.0.11

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TextTime

TextTime_FILES = Tweak.xm
TextTime_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += TextTimePrefs

include $(THEOS_MAKE_PATH)/aggregate.mk
