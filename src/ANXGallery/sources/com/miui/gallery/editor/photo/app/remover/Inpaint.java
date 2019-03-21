package com.miui.gallery.editor.photo.app.remover;

import android.graphics.Bitmap;
import com.miui.gallery.editor.photo.core.imports.remover.RemoverNNFData;
import com.miui.gallery.util.Log;

public class Inpaint {
    private static boolean sLoaded;

    public static native boolean initialize();

    public static native int inpaintBmpData(Bitmap bitmap, Bitmap bitmap2, int i, int i2, int i3, int i4, int i5, int i6, RemoverNNFData removerNNFData);

    public static native void release();

    public static native void upsampleBmpData(Bitmap bitmap, Bitmap bitmap2, int i, int i2, int i3, int i4, int i5, int i6, RemoverNNFData removerNNFData);

    static {
        sLoaded = false;
        try {
            System.loadLibrary("vis");
            System.loadLibrary("inpaint");
            System.loadLibrary("inpaint_jni");
            sLoaded = true;
        } catch (Error error) {
            Log.w("Inpaint", "library load failed.\n", error);
        }
    }

    public static boolean isAvailable() {
        return sLoaded;
    }
}
