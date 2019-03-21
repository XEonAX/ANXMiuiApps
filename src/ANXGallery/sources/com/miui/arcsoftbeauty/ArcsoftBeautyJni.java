package com.miui.arcsoftbeauty;

import android.graphics.Bitmap;
import android.os.Build;
import com.miui.filtersdk.beauty.BeautyProcessorManager;
import com.miui.filtersdk.beauty.IntelligentBeautyProcessor;
import com.miui.gallery.editor.photo.core.imports.miuibeauty.MiuiBeautyEngine;
import com.miui.gallery.util.BaseBuildUtil;
import com.miui.gallery.util.Log;

public class ArcsoftBeautyJni {
    private static boolean sLoaded;
    private static final String[] sWhiteList = new String[]{"jason"};

    public static native void beautifyProcessBitmap(Bitmap bitmap, int i, int i2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, int[] iArr7, int[] iArr8, int[] iArr9, int[] iArr10, int[] iArr11, int[] iArr12);

    public static native int detectFaceNum(Bitmap bitmap, int i, int i2);

    public static native void encodeYUV420SP(Bitmap bitmap, int i, int i2, byte[] bArr);

    public static native void updateBmpWithYuvBuffer(Bitmap bitmap, int i, int i2, byte[] bArr);

    static {
        sLoaded = false;
        for (String product : sWhiteList) {
            if (product.equals(Build.DEVICE) && !BaseBuildUtil.isInternational()) {
                sLoaded = true;
            }
        }
        if (sLoaded) {
            try {
                System.loadLibrary("image_arcsoft_4plus");
            } catch (Error e) {
                sLoaded = false;
                Log.w("ArcsoftBeautyJni", "Failed to load library(image_arcsoft_4plus)");
            }
        }
    }

    public static void smartBeauty(Bitmap bitmap) {
        smartBeauty(MiuiBeautyEngine.preProcessBitmap(bitmap), 1);
    }

    public static void smartBeauty(Bitmap bitmap, int level) {
        IntelligentBeautyProcessor beautyProcessor = BeautyProcessorManager.INSTANCE.getBeautyProcessor();
        beautyProcessor.setBeautyParamsDegree(beautyProcessor.getIntelligentLevelParams(level));
        beautyProcessor.beautify(bitmap, bitmap.getWidth(), bitmap.getHeight());
    }

    public static boolean idBeautyAvailable() {
        return sLoaded;
    }
}
