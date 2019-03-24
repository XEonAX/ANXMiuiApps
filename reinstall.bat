REM adb uninstall com.miui.screenrecorder 
REM adb install -g .\out\ANXScreenRecorder.apk
REM adb shell pm grant com.miui.screenrecorder android.permission.INTERACT_ACROSS_USERS

REM adb uninstall com.xiaomi.scanner 
REM adb install -g .\out\ANXScanner.apk

adb uninstall com.miui.gallery 
adb install -g .\out\ANXGallery.apk
