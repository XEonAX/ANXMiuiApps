package com.miui.settings;

import android.content.Context;
import android.provider.SystemSettings.System;
import android.text.TextUtils;
import com.miui.core.SdkHelper;
import com.nexstreaming.nexeditorsdk.BuildConfig;
import java.util.Locale;
import miui.os.Build;

public class Settings {
    public static String getDeviceName(Context context) {
        if (SdkHelper.IS_MIUI) {
            String name = System.getDeviceName(context);
            if (TextUtils.isEmpty(name)) {
                return BuildConfig.KM_PROJECT;
            }
            return name;
        }
        return String.format(Locale.US, "%s %s", new Object[]{Build.MANUFACTURER, Build.MODEL});
    }

    public static String getRegion() {
        return Build.getRegion();
    }

    public static boolean checkRegion(String region) {
        return Build.checkRegion(region);
    }
}
