package com.miui.gallery.editor.photo.app.crop;

import com.miui.gallery.util.Log;

public class AutoCropJni {
    private static boolean sLoaded;

    public static native int autoRotation(byte[] bArr, int i, int i2, AutoCropData autoCropData);

    static {
        sLoaded = false;
        try {
            System.loadLibrary("autocrop");
            sLoaded = true;
        } catch (Error error) {
            Log.w("AutoCropJni", "library load failed.\n", error);
        }
    }

    public static boolean isAvailable() {
        return sLoaded;
    }
}
