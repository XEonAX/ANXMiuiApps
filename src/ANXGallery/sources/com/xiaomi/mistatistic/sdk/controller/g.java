package com.xiaomi.mistatistic.sdk.controller;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.BuildSetting;
import com.xiaomi.mistatistic.sdk.controller.e.a;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.UUID;

/* compiled from: DeviceIdHolder */
public class g {
    private static final Object a = new Object();
    private static final Object b = new Object();
    private static final Object c = new Object();
    private static volatile String d = null;
    private static volatile String e = null;
    private static volatile String f = null;
    private static String g = null;

    public static String a() {
        if (!TextUtils.isEmpty(d)) {
            return d;
        }
        e.a().a(new a() {
            public void execute() {
                g.e(d.a());
            }
        });
        return null;
    }

    public static String a(Context context) {
        if (TextUtils.isEmpty(d)) {
            return e(context);
        }
        return d;
    }

    private static String e(Context context) {
        synchronized (a) {
            if (TextUtils.isEmpty(d)) {
                try {
                    Context applicationContext = context.getApplicationContext();
                    Object a = m.a(applicationContext, "device_id", "");
                    if (TextUtils.isEmpty(a)) {
                        if (BuildSetting.isInternationalBuild() || t.c()) {
                            a = b(context);
                            if (TextUtils.isEmpty(a)) {
                                d = c(context);
                            } else {
                                d = a;
                            }
                        } else {
                            String c = t.c(applicationContext);
                            d = t.c(f(context) + c + t.a());
                        }
                        m.b(applicationContext, "device_id", d);
                    } else {
                        d = a;
                    }
                } catch (Throwable e) {
                    j.a("DIH", "getDeviceId exception", e);
                }
            }
        }
        return d;
    }

    @TargetApi(9)
    private static String f(Context context) {
        if (TextUtils.isEmpty(f)) {
            synchronized (c) {
                if (TextUtils.isEmpty(f)) {
                    try {
                        if (TextUtils.isEmpty(f)) {
                            if (context.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", context.getPackageName()) == 0) {
                                f = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
                            } else {
                                j.d("DIH", "cannot get READ_PHONE_STATE permission");
                            }
                        }
                    } catch (Throwable e) {
                        j.a("DIH", "getImei exception:", e);
                    }
                }
            }
        }
        if (TextUtils.isEmpty(f)) {
            j.c("DIH", "Imei is empty");
        }
        return f;
    }

    public static String b(Context context) {
        Object a = m.a(context, "imei_md5", "");
        if (!TextUtils.isEmpty(a)) {
            return a;
        }
        String f = f(context);
        if (TextUtils.isEmpty(f)) {
            return "";
        }
        f = t.b(f);
        if (TextUtils.isEmpty(f)) {
            return f;
        }
        m.b(context, "imei_md5", f);
        return f;
    }

    public static String b() {
        if (TextUtils.isEmpty(e)) {
            synchronized (b) {
                try {
                    String b = t.b(c());
                    if (b != null && b.length() > 0) {
                        e = b;
                    }
                } catch (Throwable e) {
                    j.a("DIH", "getDeviceIdTv exception", e);
                }
            }
        }
        return e;
    }

    private static String c() {
        Throwable e;
        Object obj = 1;
        String a;
        try {
            if (!TextUtils.equals("tv", t.e())) {
                String str = Build.PRODUCT;
                if (!("augustrush".equals(str) || "casablanca".equals(str))) {
                    obj = null;
                }
            }
            if (obj != null) {
                a = a("/sys/class/net/eth0/address");
            } else {
                a = t.f("ro.boot.btmac");
            }
            if (a == null) {
                return a;
            }
            try {
                if (a.length() > 0) {
                    return a.trim();
                }
                return a;
            } catch (Exception e2) {
                e = e2;
                j.a("DIH", "getDeviceMacTv exception", e);
                return a;
            }
        } catch (Throwable e3) {
            Throwable th = e3;
            a = null;
            e = th;
            j.a("DIH", "getDeviceMacTv exception", e);
            return a;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0061 A:{SYNTHETIC, Splitter: B:21:0x0061} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0072 A:{SYNTHETIC, Splitter: B:28:0x0072} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static String a(String str) {
        String readLine;
        Throwable e;
        Throwable e2;
        String str2 = "";
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(str)), 512);
            try {
                readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (str2.length() > 0) {
                        str2 = str2 + "\n";
                    }
                    readLine = str2 + readLine;
                } else {
                    readLine = str2;
                }
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable e3) {
                        j.a("DIH", "catEntry finally exception", e3);
                    }
                }
            } catch (Throwable e22) {
                Throwable th = e22;
                readLine = str2;
                e3 = th;
                try {
                    j.a("DIH", "catEntry exception", e3);
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable e32) {
                            j.a("DIH", "catEntry finally exception", e32);
                        }
                    }
                    return readLine;
                } catch (Throwable th2) {
                    e22 = th2;
                    if (bufferedReader != null) {
                    }
                    throw e22;
                }
            }
        } catch (Throwable e222) {
            bufferedReader = null;
            String str3 = str2;
            e32 = e222;
            readLine = str3;
            j.a("DIH", "catEntry exception", e32);
            if (bufferedReader != null) {
            }
            return readLine;
        } catch (Throwable th3) {
            e222 = th3;
            bufferedReader = null;
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (Throwable e322) {
                    j.a("DIH", "catEntry finally exception", e322);
                }
            }
            throw e222;
        }
        return readLine;
    }

    public static synchronized String c(Context context) {
        String str;
        synchronized (g.class) {
            if (TextUtils.isEmpty(g)) {
                long currentTimeMillis = System.currentTimeMillis();
                Object a = m.a(context, "anonymous_id", "");
                long a2 = m.a(context, "aigt", 0);
                long a3 = m.a(context, "anonymous_ei", 7776000000L);
                if (TextUtils.isEmpty(a) || currentTimeMillis - a2 >= a3) {
                    g = UUID.randomUUID().toString();
                    m.b(context, "anonymous_id", g);
                } else {
                    g = a;
                }
                m.b(context, "aigt", currentTimeMillis);
                str = g;
            } else {
                str = g;
            }
        }
        return str;
    }
}
