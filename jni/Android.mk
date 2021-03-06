LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := osipparser2
LOCAL_SRC_FILES := libosipparser2.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := pj
LOCAL_SRC_FILES := libpj-arm-unknown-linux-androideabi.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := pj-util
LOCAL_SRC_FILES := libpjlib-util-arm-unknown-linux-androideabi.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := pjnath
LOCAL_SRC_FILES := libpjnath-arm-unknown-linux-androideabi.a
LOCAL_STATIC_LIBRARIES:=pj pj-util
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := ecamstream
LOCAL_SRC_FILES := libecamstream.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_STATIC_LIBRARIES:=osipparser2 pj pj-util pjnath gnustl_static
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := hwplay
LOCAL_SRC_FILES := libhwplay.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
include $(PREBUILT_SHARED_LIBRARY)

#include $(CLEAR_VARS)
#LOCAL_MODULE := jpush
#LOCAL_SRC_FILES := libjpush.so
#LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
#include $(PREBUILT_SHARED_LIBRARY)

#include $(CLEAR_VARS)
#LOCAL_MODULE := XQuquerOfflineSDK
#LOCAL_SRC_FILES := libXQuquerOfflineSDK.so
#LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
#include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := player_jni
# Add your application source files here...
LOCAL_SRC_FILES := yv12gl_jni.c streamreq_jni.c audio_jni.c
LOCAL_SHARED_LIBRARIES := hwplay  
LOCAL_STATIC_LIBRARIES := ecamstream
LOCAL_LDFLAGS := -LE:/Android/android-ndk-r10e/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi-v7a
LOCAL_LDLIBS := -llog -lgnustl_static -lGLESv2 -lz -ldl -lgcc
#	-L$(NDK_PLATFORMS_ROOT)/$(TARGET_PLATFORM)/arch-arm/usr/lib -L$(LOCAL_PATH) -lz -ldl -lgcc 
include $(BUILD_SHARED_LIBRARY)

# include $(CLEAR_VARS)
# LOCAL_MODULE := streamreq_jni
# SDL_PATH := ../SDL
# LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(SDL_PATH)/include
# # Add your application source files here...
# LOCAL_SRC_FILES := streamreq_jni.c
# #LOCAL_LDFLAGS := -L/home/qiuxueming/tools/android-ndk-r8e/sources/cxx-stl/gnu-libstdc++/4.6/libs/armeabi-v7a/
# LOCAL_LDFLAGS := -LF:/Android/android-ndk-r8e/sources/cxx-stl/gnu-libstdc++/4.6/libs/armeabi-v7a
# LOCAL_SHARED_LIBRARIES := hwplay sdlplayer_jni
# LOCAL_STATIC_LIBRARIES := ecamstream
# LOCAL_LDLIBS := -lGLESv1_CM -llog -lgnustl_static
# #-L$(NDK_PLATFORMS_ROOT)/$(TARGET_PLATFORM)/arch-arm/usr/lib -L$(LOCAL_PATH) -lz -ldl -lgcc
# include $(BUILD_SHARED_LIBRARY)


