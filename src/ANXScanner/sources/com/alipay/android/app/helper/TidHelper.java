package com.alipay.android.app.helper;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.alipay.sdk.app.statistic.a;
import com.alipay.sdk.sys.b;
import com.alipay.sdk.tid.c;
import org.json.JSONObject;

public class TidHelper {
    private static boolean a = false;

    public static Tid loadTID(Context context) {
        a(context);
        Tid a = a(c.a(context));
        if (a != null) {
            new StringBuilder("TidHelper:::loadTID > ").append(a.toString());
        }
        return a;
    }

    public static synchronized Tid loadOrCreateTID(Context context) {
        Tid loadTID;
        synchronized (TidHelper.class) {
            if (context == null) {
                String str = "tid";
                String str2 = com.alipay.sdk.app.statistic.c.G;
                String str3 = "";
                if (context != null) {
                    try {
                        com.alipay.sdk.app.statistic.c cVar = new com.alipay.sdk.app.statistic.c(context);
                        cVar.a(str, str2, str3);
                        a.a(context, cVar.a(""));
                    } catch (Throwable th) {
                    }
                }
            }
            a(context);
            loadTID = loadTID(context);
            if (loadTID == null || loadTID.isEmpty()) {
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    loadTID = null;
                } else {
                    try {
                        loadTID = b(context);
                    } catch (Throwable th2) {
                    }
                }
            }
        }
        return loadTID;
    }

    public static synchronized String getTIDValue(Context context) {
        String tid;
        synchronized (TidHelper.class) {
            Tid loadOrCreateTID = loadOrCreateTID(context);
            tid = (loadOrCreateTID == null || loadOrCreateTID.isEmpty()) ? "" : loadOrCreateTID.getTid();
        }
        return tid;
    }

    public static boolean resetTID(Context context) throws Exception {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new Exception("不能在主线程中调用此方法");
        }
        a(context);
        clearTID(context);
        Tid tid = null;
        try {
            tid = b(context);
        } catch (Throwable th) {
        }
        if (tid == null || tid.isEmpty()) {
            return false;
        }
        return true;
    }

    public static void clearTID(Context context) {
        String.format("TidStorage::delete > %s，%s，%s，%s，%s", new Object[]{r0.j, r0.k, Long.valueOf(r0.l), r0.m, c.a(context).n});
        r0.d();
    }

    public static String getIMEI(Context context) {
        a(context);
        return com.alipay.sdk.util.a.a(context).b();
    }

    public static String getIMSI(Context context) {
        a(context);
        return com.alipay.sdk.util.a.a(context).a();
    }

    public static String getVirtualImei(Context context) {
        a(context);
        com.alipay.sdk.data.c.a();
        return com.alipay.sdk.data.c.b();
    }

    public static String getVirtualImsi(Context context) {
        a(context);
        com.alipay.sdk.data.c.a();
        return com.alipay.sdk.data.c.c();
    }

    private static void a(Context context) {
        if (context != null) {
            b a = b.a();
            com.alipay.sdk.data.c.a();
            a.a(context);
        }
    }

    private static Tid b(Context context) throws Exception {
        try {
            com.alipay.sdk.packet.b a = new com.alipay.sdk.packet.impl.c().a(context);
            if (a == null) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(a.b);
            c a2 = c.a(context);
            Object optString = jSONObject.optString("tid");
            Object string = jSONObject.getString(c.e);
            if (!(TextUtils.isEmpty(optString) || TextUtils.isEmpty(string))) {
                a2.a(optString, string);
            }
            return a(a2);
        } catch (Throwable th) {
            return null;
        }
    }

    private static Tid a(c cVar) {
        if (cVar == null || cVar.c()) {
            return null;
        }
        Tid tid = new Tid();
        tid.setTid(cVar.a());
        tid.setTidSeed(cVar.b());
        tid.setTimestamp(Long.valueOf(cVar.l).longValue());
        return tid;
    }

    public static Tid loadLocalTid(Context context) {
        if (c.a(context).c()) {
            return null;
        }
        Tid tid = new Tid();
        tid.setTid(c.a(context).a());
        tid.setTidSeed(c.a(context).b());
        tid.setTimestamp(Long.valueOf(c.a(context).l).longValue());
        return tid;
    }
}
