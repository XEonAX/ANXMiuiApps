package com.miui.gallery.compat.interpolator;

import android.os.Build.VERSION;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;

public class PathInterpolatorCompat {
    public static Interpolator getPathInterpolator(float controlX1, float controlY1, float controlX2, float controlY2) {
        if (VERSION.SDK_INT >= 21) {
            return new PathInterpolator(controlX1, controlY1, controlX2, controlY2);
        }
        return new LinearInterpolator();
    }
}
