package com.xiaomi.analytics.internal.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.provider.Settings.Global;

public class MIUI {
    private static final String TAG = "MIUI";

    public static boolean isInternationalBuild() {
        try {
            return ((Boolean) Class.forName("miui.os.Build").getField("IS_INTERNATIONAL_BUILD").get(null)).booleanValue();
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean isAlphaBuild() {
        try {
            return ((Boolean) Class.forName("miui.os.Build").getField("IS_ALPHA_BUILD").get(null)).booleanValue();
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean isDevBuild() {
        try {
            return ((Boolean) Class.forName("miui.os.Build").getField("IS_DEVELOPMENT_VERSION").get(null)).booleanValue();
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean isStableBuild() {
        try {
            return ((Boolean) Class.forName("miui.os.Build").getField("IS_STABLE_VERSION").get(null)).booleanValue();
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean isCTABuild() {
        try {
            return ((Boolean) Class.forName("miui.os.Build").getField("IS_CTA_BUILD").get(null)).booleanValue();
        } catch (Exception e) {
            return false;
        }
    }

    @TargetApi(17)
    public static boolean isDeviceProvisioned(Context context) {
        boolean ret = false;
        try {
            if (VERSION.SDK_INT < 17) {
                return true;
            }
            if (Global.getInt(context.getContentResolver(), "device_provisioned", 0) != 0) {
                ret = true;
            }
            if (ret) {
                return ret;
            }
            ALog.w(TAG, "Provisioned: " + ret);
            return ret;
        } catch (Exception e) {
            ALog.e(TAG, "isDeviceProvisioned exception", e);
            return true;
        }
    }

    public static boolean shouldNotAccessNetworkOrLocation(Context context, String tag) {
        if (isCTABuild()) {
            ALog.w(tag, "should not access network or location, cta");
            return true;
        } else if (isDeviceProvisioned(context)) {
            return false;
        } else {
            ALog.w(tag, "should not access network or location, not provisioned");
            return true;
        }
    }
}
