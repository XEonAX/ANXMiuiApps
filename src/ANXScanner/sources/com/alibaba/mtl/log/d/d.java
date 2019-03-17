package com.alibaba.mtl.log.d;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import com.alibaba.mtl.appmonitor.SdkMeta;
import com.alibaba.mtl.log.b;
import com.alibaba.mtl.log.model.LogField;
import com.ut.device.UTDevice;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import mtopsdk.common.util.SymbolExpUtil;

/* compiled from: DeviceUtil */
public class d {
    private static Map<String, String> w = null;

    public static synchronized Map<String, String> a(Context context) {
        Map<String, String> map = null;
        synchronized (d.class) {
            Object imei;
            if (w != null) {
                w.put(LogField.CHANNEL.toString(), b.n());
                w.put(LogField.APPKEY.toString(), b.getAppkey());
                imei = m.getImei(context);
                Object imsi = m.getImsi(context);
                if (TextUtils.isEmpty(imei) || TextUtils.isEmpty(imsi)) {
                    imei = "";
                    imsi = "";
                }
                w.put(LogField.IMEI.toString(), imei);
                w.put(LogField.IMSI.toString(), imsi);
                a(w, context);
                map = w;
            } else {
                w = new HashMap();
                if (context != null) {
                    if (w != null) {
                        try {
                            Object imei2 = m.getImei(context);
                            imei = m.getImsi(context);
                            if (TextUtils.isEmpty(imei2) || TextUtils.isEmpty(imei)) {
                                imei2 = "";
                                imei = "";
                            }
                            w.put(LogField.IMEI.toString(), imei2);
                            w.put(LogField.IMSI.toString(), imei);
                            w.put(LogField.BRAND.toString(), Build.BRAND);
                            w.put(LogField.DEVICE_MODEL.toString(), Build.MODEL);
                            w.put(LogField.RESOLUTION.toString(), c(context));
                            w.put(LogField.CHANNEL.toString(), b.n());
                            w.put(LogField.APPKEY.toString(), b.getAppkey());
                            w.put(LogField.APPVERSION.toString(), d(context));
                            w.put(LogField.LANGUAGE.toString(), b(context));
                            w.put(LogField.OS.toString(), q());
                            w.put(LogField.OSVERSION.toString(), getOsVersion());
                            w.put(LogField.SDKVERSION.toString(), SdkMeta.SDK_VERSION);
                            w.put(LogField.SDKTYPE.toString(), "mini");
                            try {
                                w.put(LogField.UTDID.toString(), UTDevice.getUtdid(context));
                            } catch (Throwable th) {
                                Log.e("DeviceUtil", "utdid4all jar doesn't exist, please copy the libs folder.");
                                th.printStackTrace();
                            }
                            a(w, context);
                        } catch (Exception e) {
                        }
                    }
                    map = w;
                }
            }
        }
        return map;
    }

    private static String getOsVersion() {
        String str = VERSION.RELEASE;
        if (i()) {
            System.getProperty("ro.yunos.version");
            str = s();
            if (!TextUtils.isEmpty(str)) {
            }
        }
        return str;
    }

    private static String q() {
        String str = "a";
        if (!i() || j()) {
            return str;
        }
        return "y";
    }

    private static void a(Map<String, String> map, Context context) {
        try {
            String[] networkState = l.getNetworkState(context);
            map.put(LogField.ACCESS.toString(), networkState[0]);
            if (networkState[0].equals("2G/3G")) {
                map.put(LogField.ACCESS_SUBTYPE.toString(), networkState[1]);
            } else {
                map.put(LogField.ACCESS_SUBTYPE.toString(), "Unknown");
            }
        } catch (Exception e) {
            map.put(LogField.ACCESS.toString(), "Unknown");
            map.put(LogField.ACCESS_SUBTYPE.toString(), "Unknown");
        }
        try {
            Object networkOperatorName;
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            String str = "";
            if (telephonyManager == null || telephonyManager.getSimState() != 5) {
                String networkOperatorName2 = str;
            } else {
                networkOperatorName2 = telephonyManager.getNetworkOperatorName();
            }
            if (TextUtils.isEmpty(networkOperatorName2)) {
                networkOperatorName2 = "Unknown";
            }
            map.put(LogField.CARRIER.toString(), networkOperatorName2);
        } catch (Exception e2) {
        }
    }

    private static String b(Context context) {
        String str = "Unknown";
        try {
            return Locale.getDefault().getLanguage();
        } catch (Throwable th) {
            return str;
        }
    }

    private static String c(Context context) {
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            int i = displayMetrics.widthPixels;
            int i2 = displayMetrics.heightPixels;
            if (i > i2) {
                i ^= i2;
                i2 ^= i;
                i ^= i2;
            }
            return i2 + "*" + i;
        } catch (Exception e) {
            return "Unknown";
        }
    }

    public static String d(Context context) {
        Object f = b.a().f();
        if (!TextUtils.isEmpty(f)) {
            return f;
        }
        String str = "Unknown";
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            if (packageInfo == null) {
                return str;
            }
            w.put(LogField.APPVERSION.toString(), packageInfo.versionName);
            return packageInfo.versionName;
        } catch (Throwable th) {
            return str;
        }
    }

    public static boolean i() {
        try {
            if ((System.getProperty("java.vm.name") == null || !System.getProperty("java.vm.name").toLowerCase().contains("lemur")) && System.getProperty("ro.yunos.version") == null && TextUtils.isEmpty(q.get("ro.yunos.build.version"))) {
                return j();
            }
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    private static boolean j() {
        if (TextUtils.isEmpty(c("ro.yunos.product.chip")) && TextUtils.isEmpty(c("ro.yunos.hardware"))) {
            return false;
        }
        return true;
    }

    public static String c(String str) {
        try {
            Class cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", new Class[]{String.class}).invoke(cls.newInstance(), new Object[]{str});
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getUUID() {
        String str = q.get("ro.aliyun.clouduuid", SymbolExpUtil.STRING_FALSE);
        if (SymbolExpUtil.STRING_FALSE.equals(str)) {
            str = q.get("ro.sys.aliyun.clouduuid", SymbolExpUtil.STRING_FALSE);
        }
        if (TextUtils.isEmpty(str)) {
            return r();
        }
        return str;
    }

    private static String r() {
        try {
            return (String) Class.forName("com.yunos.baseservice.clouduuid.CloudUUID").getMethod("getCloudUUID", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    private static String s() {
        try {
            Field declaredField = Build.class.getDeclaredField("YUNOS_BUILD_VERSION");
            if (declaredField != null) {
                declaredField.setAccessible(true);
                return (String) declaredField.get(new String());
            }
        } catch (Exception e) {
        }
        return null;
    }
}
