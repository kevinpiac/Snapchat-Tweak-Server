INSTALL_TARGET_PROCESSES = Snapchat

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = snapchatauthserver

snapchatauthserver_FILES = Tweak.x
snapchatauthserver_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
