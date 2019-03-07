package com.miui.screenrecorder.tools;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.view.Display;
import android.view.ViewConfiguration;
import com.miui.screenrecorder.config.ScreenRecorderConfig;
import java.lang.reflect.Method;
import miui.os.SystemProperties;

public class DisplayUtils {
    public static final int ANTI_PORTRAIT = 1;
    public static final int LEFT_LANDSCAPE = 2;
    public static final int PORTRAIT = 0;
    public static final int RIGHT_LANDSCAPE = 3;

    public static int dip2px(Context context, float dpValue) {
        return (int) ((dpValue * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int px2dp(Context context, float pxValue) {
        return (int) ((pxValue / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int getStatusBarHeight(Context context) {
        int sbar = 0;
        try {
            Class<?> c = Class.forName("com.android.internal.R$dimen");
            return context.getResources().getDimensionPixelSize(Integer.parseInt(c.getField("status_bar_height").get(c.newInstance()).toString()));
        } catch (Exception e1) {
            e1.printStackTrace();
            return sbar;
        }
    }

    public static int getNavigationBarHeight(Context context) {
        if (!hasNavBar(context)) {
            return 0;
        }
        Resources res = context.getResources();
        int resourceId = res.getIdentifier("navigation_bar_height", "dimen", "android");
        if (resourceId > 0) {
            return res.getDimensionPixelSize(resourceId);
        }
        return 0;
    }

    @TargetApi(14)
    public static boolean hasNavBar(Context context) {
        Resources res = context.getResources();
        int resourceId = res.getIdentifier("config_showNavigationBar", "bool", "android");
        if (resourceId != 0) {
            boolean hasNav = res.getBoolean(resourceId);
            String sNavBarOverride = getNavBarOverride();
            if (ScreenRecorderConfig.MIC_SOUND.equals(sNavBarOverride)) {
                return false;
            }
            if ("0".equals(sNavBarOverride)) {
                return true;
            }
            return hasNav;
        }
        return !ViewConfiguration.get(context).hasPermanentMenuKey();
    }

    private static String getNavBarOverride() {
        String sNavBarOverride = null;
        if (VERSION.SDK_INT < 19) {
            return sNavBarOverride;
        }
        try {
            Method m = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", new Class[]{String.class});
            m.setAccessible(true);
            return (String) m.invoke(null, new Object[]{"qemu.hw.mainkeys"});
        } catch (Exception e) {
            LogUtil.e(e.getMessage());
            return sNavBarOverride;
        }
    }

    public static boolean hasNotchScreen() {
        int result = 0;
        try {
            result = SystemProperties.getInt("ro.miui.notch", 0);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (result > 0) {
            return true;
        }
        return false;
    }

    public static int getScreenRotateState(Display display) {
        switch (display.getRotation()) {
            case 1:
                return 2;
            case 2:
                return 1;
            case 3:
                return 3;
            default:
                return 0;
        }
    }

    public static boolean isNightMode(Context context) {
        switch (context.getResources().getConfiguration().uiMode & 48) {
            case 32:
                return true;
            default:
                return false;
        }
    }
}
