package com.miui.gallery.editor.photo.app.crop;

import android.graphics.Bitmap;
import com.miui.gallery.util.Log;

public class AutoCropUtils {
    private static byte[] getGrayBytes(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] pix = new int[(width * height)];
        byte[] re = new byte[(width * height)];
        bitmap.getPixels(pix, 0, width, 0, 0, width, height);
        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {
                int color = pix[(width * i) + j];
                re[(width * i) + j] = (byte) ((int) (((((double) ((float) ((16711680 & color) >> 16))) * 0.3d) + (((double) ((float) ((65280 & color) >> 8))) * 0.59d)) + (((double) ((float) (color & 255))) * 0.11d)));
            }
        }
        return re;
    }

    public static void getAutoCropData(Bitmap origin, AutoCropData autoCropData) {
        Log.d("AutoCropUtils", "autoCrop start");
        if (origin == null || !AutoCropJni.isAvailable()) {
            autoCropData.rotationResult = -1;
            return;
        }
        Bitmap resizeBitmap = origin;
        if (origin != null) {
            if (origin.getWidth() > origin.getHeight()) {
                resizeBitmap = Bitmap.createScaledBitmap(origin, 640, (origin.getHeight() * 640) / origin.getWidth(), true);
            } else {
                resizeBitmap = Bitmap.createScaledBitmap(origin, (origin.getWidth() * 640) / origin.getHeight(), 640, true);
            }
        }
        autoCropData.rotationResult = AutoCropJni.autoRotation(getGrayBytes(resizeBitmap), resizeBitmap.getWidth(), resizeBitmap.getHeight(), autoCropData);
        Log.d("AutoCropUtils", "autoCrop result: %f: %d", Double.valueOf(autoCropData.angle), Integer.valueOf(autoCropData.rotationResult));
    }
}
