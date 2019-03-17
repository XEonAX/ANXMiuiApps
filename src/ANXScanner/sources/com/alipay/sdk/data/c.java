package com.alipay.sdk.data;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.widget.TextView;
import com.alipay.mobilesecuritysdk.face.SecurityClientMobile;
import com.alipay.sdk.cons.a;
import com.alipay.sdk.sys.b;
import com.alipay.sdk.util.k;
import com.alipay.sdk.util.l;
import java.util.HashMap;
import java.util.Random;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public final class c {
    private static final String d = "virtualImeiAndImsi";
    private static final String e = "virtual_imei";
    private static final String f = "virtual_imsi";
    private static c g;
    public String a;
    public String b = "sdk-and-lite";
    public String c;

    private String d() {
        return this.c;
    }

    private c() {
    }

    public static synchronized c a() {
        c cVar;
        synchronized (c.class) {
            if (g == null) {
                g = new c();
            }
            cVar = g;
        }
        return cVar;
    }

    public final synchronized void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            PreferenceManager.getDefaultSharedPreferences(b.a().a).edit().putString(com.alipay.sdk.cons.b.i, str).commit();
            a.c = str;
        }
    }

    private static String e() {
        return "1";
    }

    private static String b(Context context) {
        return Float.toString(new TextView(context).getTextSize());
    }

    private static String f() {
        return "-1;-1";
    }

    private String a(com.alipay.sdk.tid.c cVar) {
        String b;
        String c;
        String f;
        String a;
        String g;
        String ssid;
        String bssid;
        Context context = b.a().a;
        com.alipay.sdk.util.a a2 = com.alipay.sdk.util.a.a(context);
        if (TextUtils.isEmpty(this.a)) {
            b = l.b();
            c = l.c();
            f = l.f(context);
            a = k.a(context);
            a = a.substring(0, a.indexOf("://"));
            g = l.g(context);
            this.a = "Msp/15.5.3" + " (" + b + ";" + c + ";" + f + ";" + a + ";" + g + ";" + Float.toString(new TextView(context).getTextSize());
        }
        b = com.alipay.sdk.util.a.b(context).p;
        c = "-1;-1";
        f = "1";
        a = a2.a();
        g = a2.b();
        String c2 = c();
        String b2 = b();
        if (cVar != null) {
            this.c = cVar.b();
        }
        String replace = Build.MANUFACTURER.replace(";", " ");
        String replace2 = Build.MODEL.replace(";", " ");
        boolean b3 = b.b();
        String str = a2.a;
        WifiInfo connectionInfo = ((WifiManager) context.getApplicationContext().getSystemService("wifi")).getConnectionInfo();
        if (connectionInfo != null) {
            ssid = connectionInfo.getSSID();
        } else {
            ssid = "-1";
        }
        connectionInfo = ((WifiManager) context.getApplicationContext().getSystemService("wifi")).getConnectionInfo();
        if (connectionInfo != null) {
            bssid = connectionInfo.getBSSID();
        } else {
            bssid = "00";
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.a).append(";").append(b).append(";").append(c).append(";").append(f).append(";").append(a).append(";").append(g).append(";").append(this.c).append(";").append(replace).append(";").append(replace2).append(";").append(b3).append(";").append(str).append(";-1;-1;").append(this.b).append(";").append(c2).append(";").append(b2).append(";").append(ssid).append(";").append(bssid);
        if (cVar != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("tid", com.alipay.sdk.tid.c.a(context).a());
            hashMap.put("utdid", b.a().c());
            Object b4 = b(context, hashMap);
            if (!TextUtils.isEmpty(b4)) {
                stringBuilder.append(";").append(b4);
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public static String b() {
        Context context = b.a().a;
        SharedPreferences sharedPreferences = context.getSharedPreferences("virtualImeiAndImsi", 0);
        String string = sharedPreferences.getString("virtual_imei", null);
        if (TextUtils.isEmpty(string)) {
            if (TextUtils.isEmpty(com.alipay.sdk.tid.c.a(context).a())) {
                string = g();
            } else {
                string = com.alipay.sdk.util.a.a(context).b();
            }
            sharedPreferences.edit().putString("virtual_imei", string).commit();
        }
        return string;
    }

    public static String c() {
        Context context = b.a().a;
        SharedPreferences sharedPreferences = context.getSharedPreferences("virtualImeiAndImsi", 0);
        String string = sharedPreferences.getString("virtual_imsi", null);
        if (TextUtils.isEmpty(string)) {
            if (TextUtils.isEmpty(com.alipay.sdk.tid.c.a(context).a())) {
                Object c = b.a().c();
                if (TextUtils.isEmpty(c)) {
                    string = g();
                } else {
                    string = c.substring(3, 18);
                }
            } else {
                string = com.alipay.sdk.util.a.a(context).a();
            }
            sharedPreferences.edit().putString("virtual_imsi", string).commit();
        }
        return string;
    }

    private static String g() {
        return Long.toHexString(System.currentTimeMillis()) + (new Random().nextInt(9000) + 1000);
    }

    private static String c(Context context) {
        WifiInfo connectionInfo = ((WifiManager) context.getApplicationContext().getSystemService("wifi")).getConnectionInfo();
        if (connectionInfo != null) {
            return connectionInfo.getSSID();
        }
        return "-1";
    }

    private static String d(Context context) {
        WifiInfo connectionInfo = ((WifiManager) context.getApplicationContext().getSystemService("wifi")).getConnectionInfo();
        if (connectionInfo != null) {
            return connectionInfo.getBSSID();
        }
        return "00";
    }

    static String a(Context context, HashMap<String, String> hashMap) {
        Object obj = "";
        try {
            obj = SecurityClientMobile.GetApdid(context, hashMap);
        } catch (Throwable th) {
            com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.e, com.alipay.sdk.app.statistic.c.h, th);
        }
        if (TextUtils.isEmpty(obj)) {
            com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.e, com.alipay.sdk.app.statistic.c.i, "apdid == null");
        }
        return obj;
    }

    public final String b(Context context, HashMap<String, String> hashMap) {
        Future submit = Executors.newFixedThreadPool(2).submit(new d(this, context, hashMap));
        String str = "";
        try {
            return (String) submit.get(3000, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.e, com.alipay.sdk.app.statistic.c.j, th);
            return str;
        }
    }

    public static String a(Context context) {
        if (context != null) {
            try {
                StringBuilder stringBuilder = new StringBuilder();
                String packageName = context.getPackageName();
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
                stringBuilder.append("(");
                stringBuilder.append(packageName);
                stringBuilder.append(";");
                stringBuilder.append(packageInfo.versionCode);
                stringBuilder.append(")");
                return stringBuilder.toString();
            } catch (Exception e) {
            }
        }
        return "";
    }
}
