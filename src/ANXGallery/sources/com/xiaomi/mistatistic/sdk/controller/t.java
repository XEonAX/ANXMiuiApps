package com.xiaomi.mistatistic.sdk.controller;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import android.util.Log;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.xiaomi.mistatistic.sdk.BuildSetting;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.net.NetworkInterface;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.keyczar.Keyczar;

/* compiled from: Utils */
public class t {
    private static boolean a = true;

    /* compiled from: Utils */
    public enum a {
        TYPE_KEY,
        TYPE_CATEGORY,
        TYPE_VALUE
    }

    public static byte[] a(String str) {
        if (str == null) {
            return new byte[0];
        }
        try {
            return str.getBytes(Keyczar.DEFAULT_ENCODING);
        } catch (UnsupportedEncodingException e) {
            return str.getBytes();
        }
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(a(str));
            BigInteger bigInteger = new BigInteger(1, instance.digest());
            return String.format("%1$032X", new Object[]{bigInteger});
        } catch (NoSuchAlgorithmException e) {
            return str;
        }
    }

    public static String c(String str) {
        if (str == null) {
            return null;
        }
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA1");
            instance.update(a(str));
            BigInteger bigInteger = new BigInteger(1, instance.digest());
            return String.format("%1$032X", new Object[]{bigInteger});
        } catch (NoSuchAlgorithmException e) {
            return str;
        }
    }

    public static boolean a(Context context) {
        boolean z;
        Throwable th;
        boolean z2;
        try {
            List<RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
            if (runningAppProcesses == null || runningAppProcesses.isEmpty()) {
                return false;
            }
            z2 = false;
            for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                try {
                    if (runningAppProcessInfo.importance == 100 || runningAppProcessInfo.importance == BaiduSceneResult.TRAVEL_OTHER) {
                        String[] strArr = runningAppProcessInfo.pkgList;
                        int length = strArr.length;
                        z = z2;
                        int i = 0;
                        while (i < length) {
                            try {
                                if (strArr[i].equals(context.getPackageName())) {
                                    z = true;
                                }
                                i++;
                            } catch (Throwable th2) {
                                Throwable th3 = th2;
                                z2 = z;
                                th = th3;
                            }
                        }
                        continue;
                    } else {
                        z = z2;
                    }
                    z2 = z;
                } catch (Throwable th4) {
                    th = th4;
                    j.a("U", "isForegroundRunning exception ", th);
                    return z2;
                }
            }
            return z2;
        } catch (Throwable th5) {
            th = th5;
            z2 = false;
            j.a("U", "isForegroundRunning exception ", th);
            return z2;
        }
    }

    public static boolean a(long j) {
        Calendar instance = Calendar.getInstance();
        instance.set(11, 0);
        instance.set(12, 0);
        instance.set(13, 0);
        instance.set(14, 0);
        long timeInMillis = instance.getTimeInMillis();
        long j2 = 86400000 + timeInMillis;
        if (timeInMillis > j || j >= j2) {
            return false;
        }
        return true;
    }

    public static boolean a(long j, long j2) {
        return Math.abs(System.currentTimeMillis() - j) > j2;
    }

    private static String f() {
        String str = "";
        try {
            Enumeration networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterface = (NetworkInterface) networkInterfaces.nextElement();
                byte[] hardwareAddress = networkInterface.getHardwareAddress();
                if (!(hardwareAddress == null || hardwareAddress.length == 0)) {
                    StringBuilder stringBuilder = new StringBuilder();
                    int length = hardwareAddress.length;
                    for (int i = 0; i < length; i++) {
                        stringBuilder.append(String.format("%02x:", new Object[]{Byte.valueOf(hardwareAddress[i])}));
                    }
                    if (stringBuilder.length() > 0) {
                        stringBuilder.deleteCharAt(stringBuilder.length() - 1);
                    }
                    String stringBuilder2 = stringBuilder.toString();
                    if ("wlan0".equals(networkInterface.getName())) {
                        return stringBuilder2;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    public static String b(Context context) {
        String f;
        String str = "";
        if (VERSION.SDK_INT >= 23) {
            f = f();
        } else {
            f = str;
        }
        if (TextUtils.isEmpty(f)) {
            try {
                f = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
            } catch (Throwable e) {
                j.a("U", "getMacMd5 exception: ", e);
            }
        }
        if (TextUtils.isEmpty(f)) {
            return f;
        }
        return b(f);
    }

    public static String c(Context context) {
        String str = null;
        try {
            return Secure.getString(context.getContentResolver(), "android_id");
        } catch (Throwable th) {
            j.a("U", "getAndroidId exception: ", th);
            return str;
        }
    }

    public static String a() {
        if (VERSION.SDK_INT > 8) {
            return Build.SERIAL;
        }
        return null;
    }

    public static boolean d(Context context) {
        boolean z = false;
        if (m.b(context, "is_miui")) {
            return m.a(context, "is_miui");
        }
        if (g(context)) {
            return false;
        }
        try {
            context.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 0);
            z = true;
        } catch (Throwable e) {
            j.a("U", "cannot get pkginfo of com.xiaomi.xmsf, not miui.", e);
        }
        m.b(context, "is_miui", z);
        return z;
    }

    public static boolean e(Context context) {
        if (m.b(context, "is_xiaomi")) {
            return m.a(context, "is_xiaomi");
        }
        if (context == null) {
            Log.w(j.d("U"), "!! context is null !!");
        }
        String packageName = context.getPackageName();
        if (packageName.contains("miui") || packageName.contains("xiaomi")) {
            m.b(context, "is_xiaomi", true);
            return true;
        } else if (d(context)) {
            boolean z;
            if ((context.getApplicationInfo().flags & 1) != 0) {
                z = true;
            } else {
                z = false;
            }
            j.a("U", "the pkg %s is sys app %s", packageName, Boolean.valueOf(z));
            m.b(context, "is_xiaomi", z);
            return z;
        } else {
            m.b(context, "is_xiaomi", false);
            return false;
        }
    }

    public static String f(Context context) {
        if (!d(context)) {
            return null;
        }
        String str = "miui.telephony.TelephonyManager";
        try {
            Class cls = Class.forName("miui.telephony.TelephonyManager");
            Method declaredMethod = cls.getDeclaredMethod("getDefault", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, new Object[0]);
            if (invoke != null) {
                Method declaredMethod2 = cls.getDeclaredMethod("getMiuiDeviceId", new Class[0]);
                declaredMethod2.setAccessible(true);
                Object invoke2 = declaredMethod2.invoke(invoke, new Object[0]);
                if (invoke2 != null && (invoke2 instanceof String)) {
                    str = (String) String.class.cast(invoke2);
                    return str;
                }
            }
            str = null;
            return str;
        } catch (Throwable e) {
            j.a("getMiuiImei exception: ", e);
            return null;
        }
    }

    public static boolean b() {
        return a;
    }

    private static boolean g() {
        return m.a(d.a(), "enable_global");
    }

    public static boolean c() {
        return m.a(d.a(), "non_miui_global_market");
    }

    public static String a(Context context, String str) {
        try {
            if ((!d(context) || !BuildSetting.isInternationalBuild()) && !g() && !d()) {
                return str;
            }
            if (!str.toLowerCase().startsWith("http")) {
                str = "https://" + str;
            }
            String host = new URL(str).getHost();
            if (host.contains("intl.")) {
                return str;
            }
            if (d(host)) {
                j.d("U", "The request to the staging environment, do not do international domain transformation");
                return str;
            }
            CharSequence charSequence = "";
            if (host.contains(".")) {
                String[] split = host.split("\\.");
                if (split != null && split.length > 0) {
                    for (int i = 0; i < split.length; i++) {
                        String str2;
                        if (i == split.length - 2) {
                            str2 = charSequence + "intl.";
                        }
                        charSequence = str2 + split[i];
                        if (i < split.length - 1) {
                            charSequence = charSequence + ".";
                        }
                    }
                }
            } else {
                charSequence = "intl." + host;
            }
            return str.replace(host, charSequence);
        } catch (Throwable e) {
            j.a("U", "ensureInternationalServer exception", e);
            return str;
        }
    }

    public static boolean d(String str) {
        if (str != null) {
            try {
                return Pattern.compile("([1-9]|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])(\\.(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])){3}").matcher(str).matches();
            } catch (Throwable e) {
                j.a("U", "isIp exception", e);
            }
        }
        return false;
    }

    public static boolean e(String str) {
        if ("mistat_basic".equals(str) || "mistat_session".equals(str) || "mistat_pt".equals(str) || "mistat_pv".equals(str) || "mistat_session_extra".equals(str) || "mistat_monitor".equals(str) || "mistat_pa".equals(str)) {
            return true;
        }
        return false;
    }

    public static String f(String str) {
        String str2 = "";
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", new Class[]{String.class}).invoke(null, new Object[]{str});
        } catch (Throwable e) {
            j.a("reflectGetSystemProperties exception", e);
            return str2;
        }
    }

    public static String b(Context context, String str) {
        Throwable e;
        if (context == null) {
            return str;
        }
        String name;
        String str2 = "";
        try {
            name = TextUtils.isEmpty(str) ? context instanceof Activity ? context.getClass().getName() : "" : str;
            try {
                CharSequence packageName = context.getPackageName();
                if (name.startsWith(packageName)) {
                    name = name.replace(packageName, "");
                }
            } catch (Exception e2) {
                e = e2;
                j.a("transformActName exception", e);
                return name;
            }
        } catch (Throwable e3) {
            Throwable th = e3;
            name = str2;
            e = th;
        }
        return name;
    }

    public static String g(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.contains(",")) {
            return str.replace(",", "");
        }
        return str;
    }

    public static void a(Context context, String str, Map<String, String> map) {
        map.put("app_id", d.b());
        map.put("app_key", d.c());
        map.put("sdk_version", "2.1.0");
        map.put("network", l.f(context));
        map.put("client_config", String.valueOf(n.a(str)));
        if (g(context)) {
            map.put("device_id_tv", g.b());
            map.put("network_tv", l.g(context));
        }
    }

    public static boolean g(Context context) {
        boolean z = false;
        if (m.b(context, "is_mitv")) {
            return m.a(context, "is_mitv");
        }
        try {
            if ((context.getPackageManager().getPackageInfo("com.xiaomi.mitv.services", 0).applicationInfo.flags & 1) != 0) {
                z = true;
            }
        } catch (NameNotFoundException e) {
            j.c("Is not Mi Tv system!");
        }
        m.b(context, "is_mitv", z);
        return z;
    }

    public static boolean d() {
        try {
            if (g(d.a()) && TextUtils.equals(f("ro.mitv.product.overseas"), "true")) {
                return true;
            }
        } catch (Throwable e) {
            j.a("U", "isMiTvIntlBuild", e);
        }
        return false;
    }

    public static String e() {
        String str = "";
        try {
            Class cls = Class.forName("mitv.common.ConfigurationManager");
            int parseInt = Integer.parseInt(String.valueOf(cls.getMethod("getProductCategory", new Class[0]).invoke(cls.getMethod("getInstance", new Class[0]).invoke(cls, new Object[0]), new Object[0])));
            Class cls2 = Class.forName("mitv.tv.TvContext");
            if (parseInt == Integer.parseInt(String.valueOf(a(cls2, "PRODUCT_CATEGORY_MITV")))) {
                return "tv";
            }
            if (parseInt == Integer.parseInt(String.valueOf(a(cls2, "PRODUCT_CATEGORY_MIBOX")))) {
                return "box";
            }
            if (parseInt == Integer.parseInt(String.valueOf(a(cls2, "PRODUCT_CATEGORY_MITVBOX")))) {
                return "tvbox";
            }
            if (parseInt == Integer.parseInt(String.valueOf(a(cls2, "PRODUCT_CATEGORY_MIPROJECTOR")))) {
                return "projector";
            }
            return str;
        } catch (Throwable e) {
            j.a("U", "getMiTvProductCategory exception", e);
            return str;
        }
    }

    private static <T> T a(Class<?> cls, String str) {
        T t = null;
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Throwable e) {
            j.a("U", "getStaticVariableValue exception", e);
            return t;
        }
    }

    private static boolean h(String str) {
        if (str != null) {
            try {
                return Pattern.compile("^[a-z0-9A-Z一-龥_]+$").matcher(str).matches();
            } catch (Throwable e) {
                j.a("U", "isLetterDigitChineseOrUnderline exception", e);
            }
        }
        return false;
    }

    public static boolean a(a aVar, String str) {
        if (aVar == a.TYPE_CATEGORY || aVar == a.TYPE_KEY) {
            if (str.length() > 64) {
                Log.e(j.b(), "The length of category or key is more than 64");
                return false;
            } else if (!h(str)) {
                Log.e(j.b(), "The string contains characters out of a-z/A-Z/0-9/Chinese/_.");
                return false;
            }
        }
        if (aVar != a.TYPE_VALUE || str.length() <= 256) {
            return true;
        }
        Log.e(j.b(), "The length of value is more than 256");
        return false;
    }

    public static boolean a(String str, double d) {
        if (d >= 1.0d) {
            return true;
        }
        if (d <= 0.0d) {
            return false;
        }
        if (d < 9.999999974752427E-7d) {
            d = 9.999999974752427E-7d;
        }
        return Math.abs(str.hashCode()) % 1000000 < ((int) (1000000.0d * d));
    }
}
