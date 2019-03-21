package com.android.internal;

import android.app.Activity;
import android.os.Build.VERSION;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager.LayoutParams;

public class WindowCompat {
    private static Boolean sIsNotch;
    private static Integer sTopNotchHeight;

    public static void setCutoutModeShortEdges(Window hostwindow) {
        if (VERSION.SDK_INT >= 28) {
            LayoutParams lp = hostwindow.getAttributes();
            lp.layoutInDisplayCutoutMode = 1;
            hostwindow.setAttributes(lp);
        }
    }

    public static int getTopNotchHeight(Activity activity) {
        if (sTopNotchHeight != null) {
            return sTopNotchHeight.intValue();
        }
        if (!isNotch(activity)) {
            return 0;
        }
        if (VERSION.SDK_INT >= 28) {
            View decorView = activity.getWindow().getDecorView();
            if (decorView == null) {
                return 0;
            }
            WindowInsets windowInsets = decorView.getRootWindowInsets();
            if (windowInsets == null) {
                return 0;
            }
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            if (displayCutout == null) {
                sTopNotchHeight = Integer.valueOf(0);
            } else {
                sTopNotchHeight = Integer.valueOf(displayCutout.getSafeInsetTop());
            }
            return sTopNotchHeight.intValue();
        }
        int resourceId = activity.getResources().getIdentifier("notch_height", "dimen", "android");
        if (resourceId <= 0) {
            return 0;
        }
        sTopNotchHeight = Integer.valueOf(activity.getResources().getDimensionPixelSize(resourceId));
        return sTopNotchHeight.intValue();
    }

    public static boolean isNotch(Activity activity) {
        boolean z = true;
        if (sIsNotch != null) {
            return sIsNotch.booleanValue();
        }
        if (VERSION.SDK_INT < 28) {
            if (SystemPropertiesCompat.getInt("ro.miui.notch", 0) != 1) {
                z = false;
            }
            sIsNotch = Boolean.valueOf(z);
            return sIsNotch.booleanValue();
        } else if (activity == null || activity.isDestroyed()) {
            return false;
        } else {
            View decorView = activity.getWindow().getDecorView();
            if (decorView == null) {
                return false;
            }
            WindowInsets windowInsets = decorView.getRootWindowInsets();
            if (windowInsets == null) {
                return false;
            }
            if (windowInsets.getDisplayCutout() == null) {
                z = false;
            }
            sIsNotch = Boolean.valueOf(z);
            return sIsNotch.booleanValue();
        }
    }
}
