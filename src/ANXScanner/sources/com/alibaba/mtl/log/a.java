package com.alibaba.mtl.log;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.mtl.log.c.c;
import com.alibaba.mtl.log.d.b;
import com.alibaba.mtl.log.d.i;
import com.alibaba.mtl.log.d.l;
import com.alibaba.mtl.log.sign.IRequestAuth;
import com.alibaba.mtl.log.upload.UploadEngine;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: UTDC */
public class a {
    public static String B = String.valueOf(System.currentTimeMillis());
    public static IRequestAuth a = null;
    /* renamed from: a */
    private static boolean f44a = false;
    public static long b = -1;
    public static final AtomicInteger d = new AtomicInteger(0);
    private static Context mContext;
    public static boolean o = false;
    public static boolean p = false;
    private static boolean q = (t <= s);
    public static boolean r = true;
    public static int s = 10000;
    /* renamed from: s */
    public static boolean f45s = true;
    public static int t = 0;

    public static synchronized void a(Context context) {
        synchronized (a.class) {
            if (context == null) {
                i.a("UTDC", "UTDC init failed ,context:" + context);
            } else if (!a) {
                a = true;
                mContext = context.getApplicationContext();
                UploadEngine.getInstance().start();
            }
        }
    }

    public static void a(IRequestAuth iRequestAuth) {
        a = iRequestAuth;
        if (a != null) {
            b.n(a.getAppkey());
        }
    }

    public static void setChannel(String channel) {
        b.m(channel);
    }

    public static void k() {
        i.a("UTDC", "[onBackground]");
        o = true;
        com.alibaba.mtl.log.b.a.D();
    }

    public static void l() {
        i.a("UTDC", "[onForeground]");
        o = false;
        UploadEngine.getInstance().start();
    }

    public static void a(String str, String str2, String str3, String str4, String str5, Map<String, String> map) {
        if (mContext == null) {
            i.a("UTDC", (Object) "please call UTDC.init(context) before commit log,and this log will be discarded");
        } else if (a == null) {
            i.a("UTDC", (Object) "please call UTDC.setRequestAuthentication(auth) before commit log,and this log will be discarded");
        } else {
            i.a("UTDC", "[commit] page:", str, "eventId:", str2, "arg1:", str3, "arg2:", str4, "arg3:", str5, "args:", map);
            com.alibaba.mtl.log.b.a.k(str2);
            c.a().a(new com.alibaba.mtl.log.model.a(str, str2, str3, str4, str5, map));
        }
    }

    public static Context getContext() {
        return mContext;
    }

    public static IRequestAuth a() {
        if (a == null || TextUtils.isEmpty(a.getAppkey())) {
            if (i.l()) {
                throw new RuntimeException("please Set <meta-data android:value=\"YOU KEY\" android:name=\"com.alibaba.apmplus.app_key\"></meta-data> in app AndroidManifest.xml ");
            }
            Log.w("UTDC", "please Set <meta-data android:value=\"YOU KEY\" android:name=\"com.alibaba.apmplus.app_key\"></meta-data> in app AndroidManifest.xml ");
        }
        return a;
    }

    public static String b() {
        try {
            return l.getNetworkState(getContext())[0];
        } catch (Exception e) {
            return "Unknown";
        }
    }

    public static String c() {
        try {
            String[] networkState = l.getNetworkState(getContext());
            if (networkState[0].equals("2G/3G")) {
                return networkState[1];
            }
            return "Unknown";
        } catch (Exception e) {
            return "Unknown";
        }
    }

    public static String d() {
        return "";
    }

    public static String e() {
        return "";
    }

    public static void m() {
        UploadEngine.getInstance().start();
    }
}
