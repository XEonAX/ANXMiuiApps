package com.nexstreaming.app.common.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.preference.PreferenceManager;
import android.provider.Settings.Secure;
import android.util.Log;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

/* compiled from: UserInfo */
public class o {
    private static String a(String str) {
        String str2 = "";
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b : digest) {
                stringBuffer.append(Integer.toString((b & 255) + 256, 16).substring(1));
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String a(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        String string = defaultSharedPreferences.getString("nex_tl_app_id", null);
        if (string == null) {
            string = "";
            string = "";
            if (a() >= 9) {
                string = Secure.getString(context.getContentResolver(), "android_id");
            } else {
                string = UUID.randomUUID().toString();
            }
            string = a(string + c(context));
            if (string != null) {
                Log.d("[UserInfo]", "deviceId length : " + string.length());
                Log.d("[UserInfo]", "deviceId : " + string);
                defaultSharedPreferences.edit().putString("nex_tl_app_id", string).commit();
            }
        }
        return string;
    }

    public static String b(Context context) {
        ApplicationInfo applicationInfo;
        PackageManager packageManager = context.getPackageManager();
        try {
            applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
        } catch (NameNotFoundException e) {
            applicationInfo = null;
        }
        String str = (String) (applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo) : "(unknown)");
        Log.d("[UserInfo]", "appName : " + str);
        return str;
    }

    public static String c(Context context) {
        String str = "";
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
        } catch (NameNotFoundException e) {
            e.printStackTrace();
        }
        Log.d("[UserInfo]", "package : " + str);
        return str;
    }

    public static String d(Context context) {
        String str = "";
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (NameNotFoundException e) {
            e.printStackTrace();
        }
        Log.e("[UserInfo]", "Version Information ===== ");
        Log.e("[UserInfo]", "version name : " + str);
        return str;
    }

    public static int a() {
        return VERSION.SDK_INT;
    }

    /* JADX WARNING: Missing block: B:15:0x0044, code:
            if (r0.equalsIgnoreCase("universal7420") != false) goto L_0x0046;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String b() {
        String b;
        String b2 = NexEditor.b("ro.board.platform");
        if (b2 != null && b2.trim().equalsIgnoreCase("msm8960")) {
            b = NexEditor.b("ro.product.board");
            if (b != null && b.trim().equalsIgnoreCase("8x30")) {
                b2 = "MSM8x30n";
            }
        }
        if (b2 != null && b2.equalsIgnoreCase("exynos5")) {
            b = NexEditor.b("ro.product.board");
            if (b != null) {
            }
        }
        b = b2;
        if (b == null || b.trim().length() < 1) {
            b = NexEditor.b("ro.mediatek.platform");
        }
        if (b == null || b.trim().length() < 1) {
            b = NexEditor.b("ro.hardware");
        }
        if (b == null || b.trim().length() < 1) {
            return "unknown";
        }
        return b;
    }
}
