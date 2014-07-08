LOCAL_PATH := $(call my-dir)

###################### tcpdump ######################
include $(CLEAR_VARS)

LOCAL_MODULE := tcpdump

LOCAL_PREMAKE_CONFIG_CMD := if [ ! -f $(LOCAL_PATH)/Makefile ]; then cd $(LOCAL_PATH); ./configure --prefix=$(TOPPREFIX)/premake/install; fi

LOCAL_PREMAKE_MAKE_CMD := -C $(LOCAL_PATH)

LOCAL_PREMAKE_MAKE_CLEAN_CMD := -C $(LOCAL_PATH) distclean

LOCAL_PREMAKE_DEPEND_MODULE := libpcap

include $(BUILD_SYSTEM)/premake.mk
