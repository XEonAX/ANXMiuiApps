package com.xiaomi.stat.d;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.TimeZone;

public class m {
    public static final int a = 28;
    private static final String b = "OSUtil";
    private static final String c = "";
    private static Method d;
    private static Class e;
    private static Method f;
    private static Boolean g;

    static {
        try {
            d = Class.forName("android.os.SystemProperties").getMethod("get", new Class[]{String.class});
        } catch (Exception e) {
        }
        try {
            e = Class.forName("miui.os.Build");
        } catch (Exception e2) {
        }
        try {
            f = Class.forName("android.provider.MiuiSettings$Secure").getDeclaredMethod("isUserExperienceProgramEnable", new Class[]{ContentResolver.class});
            f.setAccessible(true);
        } catch (Exception e3) {
        }
    }

    public static boolean a() {
        if (g != null) {
            return g.booleanValue();
        }
        if (TextUtils.isEmpty(a("ro.miui.ui.version.code"))) {
            g = Boolean.valueOf(false);
        } else {
            g = Boolean.valueOf(true);
        }
        return g.booleanValue();
    }

    public static String b() {
        return "Android";
    }

    public static String c() {
        return VERSION.RELEASE;
    }

    public static String d() {
        return VERSION.INCREMENTAL;
    }

    public static String e() {
        String str = null;
        try {
            return TimeZone.getDefault().getDisplayName(false, 0);
        } catch (Exception e) {
            return str;
        }
    }

    public static String f() {
        Locale locale = Locale.getDefault();
        return locale.getLanguage() + "_" + locale.getCountry();
    }

    public static String a(Context context) {
        Object a = a("gsm.operator.numeric");
        StringBuilder stringBuilder = new StringBuilder();
        if (!TextUtils.isEmpty(a)) {
            for (Object obj : a.split(",")) {
                if (!(TextUtils.isEmpty(obj) || "00000".equals(obj))) {
                    if (stringBuilder.length() > 0) {
                        stringBuilder.append(",");
                    }
                    stringBuilder.append(obj);
                }
            }
        }
        String stringBuilder2 = stringBuilder.toString();
        if (TextUtils.isEmpty(stringBuilder2)) {
            stringBuilder2 = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperator();
        }
        return stringBuilder2 == null ? "" : stringBuilder2;
    }

    public static String g() {
        String a = a("ro.miui.region");
        if (TextUtils.isEmpty(a)) {
            a = Locale.getDefault().getCountry();
        }
        return a == null ? "" : a;
    }

    public static String h() {
        if (e != null) {
            try {
                if (((Boolean) e.getField("IS_ALPHA_BUILD").get(null)).booleanValue()) {
                    return "A";
                }
                if (((Boolean) e.getField("IS_DEVELOPMENT_VERSION").get(null)).booleanValue()) {
                    return "D";
                }
                if (((Boolean) e.getField("IS_STABLE_VERSION").get(null)).booleanValue()) {
                    return "S";
                }
            } catch (Exception e) {
                Log.e(b, "getRomBuildCode failed: " + e.toString());
            }
        }
        return "";
    }

    private static String a(String str) {
        try {
            if (d == null) {
                return null;
            }
            return String.valueOf(d.invoke(null, new Object[]{str}));
        } catch (Exception e) {
            k.b(b, "getProp failed ex: " + e.getMessage());
            return null;
        }
    }

    public static boolean b(Context context) {
        if (f == null) {
            return true;
        }
        try {
            return ((Boolean) f.invoke(null, new Object[]{context.getContentResolver()})).booleanValue();
        } catch (Exception e) {
            Log.e(b, "isUserExperiencePlanEnabled failed: " + e.toString());
            return true;
        }
    }

    public static boolean i() {
        if (e != null) {
            try {
                return ((Boolean) e.getField("IS_INTERNATIONAL_BUILD").get(null)).booleanValue();
            } catch (Exception e) {
            }
        }
        return false;
    }
}
