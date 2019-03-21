package com.xiaomi.micloudsdk.provider;

import android.content.Context;
import android.provider.Settings.System;
import miui.cloud.AppConstants;

public class GdprUtils {
    public static boolean isPermissionGranted(Context context) {
        if (isGdprAvailable(context) && System.getInt(context.getContentResolver(), "micloud_gdpr_permission_granted", 1) == 0) {
            return false;
        }
        return true;
    }

    public static boolean isGdprAvailable(Context context) {
        return ((Integer) AppConstants.CLOUD_SDK_LEVEL.get(context)).intValue() > 23;
    }
}
