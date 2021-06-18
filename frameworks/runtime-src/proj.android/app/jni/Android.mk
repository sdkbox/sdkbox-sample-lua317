LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dlua_shared

LOCAL_MODULE_FILENAME := libcocos2dlua

LOCAL_SRC_FILES := ../../../Classes/AppDelegate.cpp \
hellolua/main.cpp \
../../../Classes/PluginIAPLua.cpp \
../../../Classes/PluginIAPLuaHelper.cpp \
../../../Classes/SDKBoxLuaHelper.cpp

LOCAL_CPPFLAGS := -DSDKBOX_ENABLED
LOCAL_LDLIBS := -landroid \
-llog
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../Classes
LOCAL_WHOLE_STATIC_LIBRARIES := PluginIAP \
sdkbox

# _COCOS_HEADER_ANDROID_BEGIN
# _COCOS_HEADER_ANDROID_END

LOCAL_STATIC_LIBRARIES := cocos2d_lua_static

# _COCOS_LIB_ANDROID_BEGIN
# _COCOS_LIB_ANDROID_END

include $(BUILD_SHARED_LIBRARY)

$(call import-add-path, $(LOCAL_PATH)/../../../../cocos2d-x)
$(call import-add-path, $(LOCAL_PATH))
$(call import-module, cocos/scripting/lua-bindings/proj.android)
$(call import-module, ./sdkbox)
$(call import-module, ./PluginIAP)

# _COCOS_LIB_IMPORT_ANDROID_BEGIN
# _COCOS_LIB_IMPORT_ANDROID_END
