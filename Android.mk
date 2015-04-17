LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_SRC_FILES += \ $(call all-java-files-under, ../../apps/SmartCardService/common/src)
LOCAL_SRC_FILES += \ $(call all-Iaidl-files-under, ../../apps/SmartCardService/common/src)

LOCAL_AIDL_INCLUDES := packages/apps/SmartCardService/common/src/

LOCAL_PACKAGE_NAME := AssdTerminal
LOCAL_CERTIFICATE := platform

LOCAL_PROGUARD_ENABLED := disabled
LOCAL_DEX_PREOPT := false

include $(BUILD_PACKAGE)

include $(call all-makefiles-under,$(LOCAL_PATH))
