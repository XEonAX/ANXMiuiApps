package com.xiaomi.micloudsdk.provider;

import android.content.Context;
import android.provider.Settings.System;
import miui.cloud.AppConstants;

public class MiCloudSettings {
    public static boolean putInt(Context context, String name, int value) {
        if (((Integer) AppConstants.CLOUD_SDK_LEVEL.get(context)).intValue() >= 18) {
            return MiCloudSettingsV18.putInt(context, name, value);
        }
        return System.putInt(context.getContentResolver(), name, value);
    }

    public static int getInt(Context context, String name, int def) {
        if (((Integer) AppConstants.CLOUD_SDK_LEVEL.get(context)).intValue() >= 18) {
            return MiCloudSettingsV18.getInt(context, name, def);
        }
        return System.getInt(context.getContentResolver(), name, def);
    }

    public static boolean putString(Context context, String name, String value) {
        if (((Integer) AppConstants.CLOUD_SDK_LEVEL.get(context)).intValue() >= 18) {
            return MiCloudSettingsV18.putString(context, name, value);
        }
        return System.putString(context.getContentResolver(), name, value);
    }

    public static String getString(Context context, String name) {
        if (((Integer) AppConstants.CLOUD_SDK_LEVEL.get(context)).intValue() >= 18) {
            return MiCloudSettingsV18.getString(context, name);
        }
        return System.getString(context.getContentResolver(), name);
    }
}
