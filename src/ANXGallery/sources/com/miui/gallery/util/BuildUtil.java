package com.miui.gallery.util;

import android.content.Context;
import android.os.Build.VERSION;
import com.android.internal.SystemPropertiesCompat;
import com.miui.os.FeatureHelper;
import com.miui.settings.Settings;

public class BuildUtil extends BaseBuildUtil {
    public static final boolean IS_M_OR_LATER = (VERSION.SDK_INT >= 23);
    private static final ModuleLevel MIUI_SDK_LEVEL = new ModuleLevel("com.miui.core");
    private static Boolean sIsOLED;
    private static Boolean sIsTablet;
    private static Integer sMiuiVersionCode;

    public static String getDeviceName(Context context) {
        return Settings.getDeviceName(context);
    }

    public static boolean isPad() {
        return FeatureHelper.isPad();
    }

    public static boolean isXiaoMi() {
        return FeatureHelper.isXiaoMi();
    }

    public static boolean isMiuiSdkGte15(Context context) {
        return ((Integer) MIUI_SDK_LEVEL.get(context)).intValue() >= 15 || getMiuiVersionCode() >= 8;
    }

    public static boolean isTablet() {
        if (sIsTablet == null) {
            sIsTablet = Boolean.valueOf(SystemPropertiesCompat.get("ro.build.characteristics", "default").contains("tablet"));
        }
        return sIsTablet.booleanValue();
    }

    public static boolean isOledDisplay() {
        if (sIsOLED == null) {
            sIsOLED = Boolean.valueOf("oled".equals(SystemPropertiesCompat.get("ro.display.type", "default")));
        }
        return sIsOLED.booleanValue();
    }

    public static int getMiuiVersionCode() {
        if (sMiuiVersionCode == null) {
            sMiuiVersionCode = Integer.valueOf(SystemPropertiesCompat.getInt("ro.miui.ui.version.code", 0));
        }
        return sMiuiVersionCode.intValue();
    }
}
