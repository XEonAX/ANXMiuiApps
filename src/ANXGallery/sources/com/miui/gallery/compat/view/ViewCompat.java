package com.miui.gallery.compat.view;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;

public class ViewCompat {
    public static void setTransitionName(View view, int resId) {
        if (VERSION.SDK_INT >= 21) {
            view.setTransitionName(view.getResources().getString(resId));
        }
    }

    private static Object getRootWindowInsets(View view) {
        if (view != null && VERSION.SDK_INT >= 23) {
            WindowInsets insets = view.getRootWindowInsets();
            if (insets != null) {
                Log.d("ViewCompat", "root window insets: " + insets);
                return insets;
            }
        }
        return null;
    }

    public static int getSystemWindowInsetTop(View view) {
        Object insets = getRootWindowInsets(view);
        return insets != null ? WindowInsetsCompat.getSystemWindowInsetTop(insets) : 0;
    }

    public static int getSystemWindowInsetRight(View view) {
        Object insets = getRootWindowInsets(view);
        return insets != null ? WindowInsetsCompat.getSystemWindowInsetRight(insets) : 0;
    }

    public static int getSystemWindowInsetBottom(View view) {
        Object insets = getRootWindowInsets(view);
        return insets != null ? WindowInsetsCompat.getSystemWindowInsetBottom(insets) : 0;
    }

    public static Rect getSystemWindowInsets(View view) {
        Rect ret = new Rect(0, 0, 0, 0);
        Object insets = getRootWindowInsets(view);
        if (insets != null) {
            ret.set(WindowInsetsCompat.getSystemWindowInsetLeft(insets), WindowInsetsCompat.getSystemWindowInsetTop(insets), WindowInsetsCompat.getSystemWindowInsetRight(insets), WindowInsetsCompat.getSystemWindowInsetBottom(insets));
        }
        return ret;
    }
}
