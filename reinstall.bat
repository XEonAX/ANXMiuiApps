adb uninstall com.miui.screenrecorder 
adb install -g .\out\ANXScreenRecorder.apk
adb shell pm grant com.miui.screenrecorder android.permission.INTERACT_ACROSS_USERS