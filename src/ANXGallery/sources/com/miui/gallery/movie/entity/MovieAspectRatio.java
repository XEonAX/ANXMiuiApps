package com.miui.gallery.movie.entity;

import android.os.Build;

public enum MovieAspectRatio {
    A16V9(1.7777778f),
    A18V9(2.0f),
    A19V9(2.1111112f);
    
    private float ratio;

    private MovieAspectRatio(float ratio) {
        this.ratio = ratio;
    }

    public float getRatio() {
        return this.ratio;
    }

    public static MovieAspectRatio getFitRatio(float heightToWidth) {
        if (isNoSupportSpecialRatio() || heightToWidth < A18V9.ratio) {
            return A16V9;
        }
        if (heightToWidth < A19V9.ratio) {
            return A18V9;
        }
        return A19V9;
    }

    private static boolean isNoSupportSpecialRatio() {
        return Build.DEVICE.equals("lotus") || Build.DEVICE.equals("cepheus");
    }
}
