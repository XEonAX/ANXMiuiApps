package com.miui.gallery.util;

import android.os.Build.VERSION;
import com.miui.os.Rom;
import com.miui.settings.Settings;

public class BaseBuildUtil {
    public static boolean isUUIDSDCard() {
        return VERSION.SDK_INT >= 23;
    }

    public static boolean isInternational() {
        return Rom.IS_INTERNATIONAL;
    }

    public static String getRegion() {
        return Settings.getRegion();
    }
}
