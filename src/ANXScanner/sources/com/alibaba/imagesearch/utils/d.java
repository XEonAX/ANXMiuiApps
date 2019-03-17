package com.alibaba.imagesearch.utils;

import android.app.Activity;
import android.graphics.Color;
import android.os.Build.VERSION;
import android.support.v4.view.MotionEventCompat;
import android.view.Window;
import java.lang.reflect.Method;

public class d {
    private static int a(int i) {
        return (((i & 255) * 15) + ((((MotionEventCompat.ACTION_POINTER_INDEX_MASK & i) >> 8) * 75) + (((16711680 & i) >> 16) * 38))) >> 7;
    }

    public static void a(Activity activity, String str) {
        if (activity != null) {
            try {
                int parseColor = Color.parseColor(str);
                Window window = activity.getWindow();
                if (a(activity)) {
                    window.clearFlags(67108864);
                    window.getDecorView().setSystemUiVisibility(0);
                    window.addFlags(Integer.MIN_VALUE);
                    a(window, parseColor);
                    if (b(parseColor)) {
                        window.getDecorView().setSystemUiVisibility(8192);
                    }
                } else if (VERSION.SDK_INT >= 19) {
                    window.clearFlags(67108864);
                }
            } catch (Throwable th) {
            }
        }
    }

    private static void a(Window window, int i) {
        try {
            Method method = window.getClass().getMethod("setStatusBarColor", new Class[]{Integer.TYPE});
            if (method != null) {
                method.invoke(window, new Object[]{Integer.valueOf(i)});
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static boolean a(Activity activity) {
        return VERSION.SDK_INT > 22;
    }

    private static boolean b(int i) {
        return a(i) > 204;
    }
}
