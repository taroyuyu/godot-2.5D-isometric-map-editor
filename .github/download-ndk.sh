ANDROID_BASE_URL=http://dl.google.com/android/repository

ANDROID_SDK_RELEASE=4333796
ANDROID_SDK_DIR=android-sdk
ANDROID_SDK_FILENAME=sdk-tools-linux-$ANDROID_SDK_RELEASE.zip
ANDROID_SDK_URL=$ANDROID_BASE_URL/$ANDROID_SDK_FILENAME
ANDROID_SDK_PATH=$GODOT_BUILD_TOOLS_PATH/$ANDROID_SDK_DIR
ANDROID_SDK_SHA256=92ffee5a1d98d856634e8b71132e8a95d96c83a63fde1099be3d86df3106def9

ANDROID_NDK_RELEASE=r21
ANDROID_NDK_DIR=android-ndk
ANDROID_NDK_FILENAME=android-ndk-$ANDROID_NDK_RELEASE-linux-x86_64.zip
ANDROID_NDK_URL=$ANDROID_BASE_URL/$ANDROID_NDK_FILENAME
ANDROID_NDK_PATH=$GODOT_BUILD_TOOLS_PATH/$ANDROID_NDK_DIR
ANDROID_NDK_SHA1=2ac2e8e1ef73ed551cac3a1479bb28bd49369212


curl -L -O $ANDROID_SDK_URL
unzip -qq $ANDROID_SDK_FILENAME -d $ANDROID_SDK_DIR

curl -L -O $ANDROID_NDK_URL
unzip -qq $ANDROID_NDK_FILENAME
mv android-ndk-$ANDROID_NDK_RELEASE $ANDROID_NDK_ROOT