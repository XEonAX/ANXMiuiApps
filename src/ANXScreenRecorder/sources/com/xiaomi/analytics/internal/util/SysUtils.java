package com.xiaomi.analytics.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;

public class SysUtils {
    private static final String ANDROID_VERSION = "ro.build.version.sdk";
    private static String IMEI = null;
    private static final String KEY_HAS_DELETED_DEVICE_ID = "has_deleted_id";
    private static final String KEY_IMEI = "imei";
    private static final String PREF_FILE = "_m_rec";
    private static final String PRODUCT_NAME = "ro.build.product";
    private static final String TAG = "SysUtils";

    private static String getIMEI(Context context) {
        if (TextUtils.isEmpty(IMEI)) {
            try {
                IMEI = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
            } catch (Exception e) {
                ALog.w(TAG, "getIMEI failed!", e);
            }
        }
        return IMEI;
    }

    public static String getHashedIMEI(Context context) {
        String imei = getIMEI(context);
        if (TextUtils.isEmpty(imei)) {
            return "";
        }
        return Utils.getMd5(imei);
    }

    public static String getHashedMac(Context context) {
        try {
            String mac = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
            if (!TextUtils.isEmpty(mac)) {
                return Utils.getMd5(mac);
            }
        } catch (Exception e) {
            Log.e(ALog.addPrefix(TAG), "getHashedMac e", e);
        }
        return "";
    }

    public static String getModel() {
        return Build.MODEL;
    }

    public static String getAndroidVersionNumber() {
        return SystemProperties.get(ANDROID_VERSION, "");
    }

    public static String getMIUIBuild() {
        if (MIUI.isAlphaBuild()) {
            return "A";
        }
        if (MIUI.isStableBuild()) {
            return "S";
        }
        if (MIUI.isDevBuild()) {
            return "D";
        }
        return "";
    }

    public static String getDeviceModel() {
        return SystemProperties.get(PRODUCT_NAME, "");
    }

    public static String getRegion() {
        try {
            String region = SystemProperties.get("ro.miui.region", "");
            if (TextUtils.isEmpty(region)) {
                return SystemProperties.get("ro.product.locale.region", "");
            }
            return region;
        } catch (Exception e) {
            ALog.e(TAG, "getRegion Exception: ", e);
            return "";
        }
    }

    public static String getMIUIVersion() {
        return VERSION.INCREMENTAL;
    }

    public static void deleteDeviceIdInSpFile(Context context) {
        try {
            SharedPreferences sp = context.getSharedPreferences(PREF_FILE, 0);
            if (!sp.getBoolean(KEY_HAS_DELETED_DEVICE_ID, false)) {
                sp.edit().remove(KEY_IMEI).apply();
                sp.edit().putBoolean(KEY_HAS_DELETED_DEVICE_ID, true).apply();
            }
        } catch (Exception e) {
            ALog.e(TAG, "deleteDeviceIdInSpFile exception", e);
        }
    }
}
