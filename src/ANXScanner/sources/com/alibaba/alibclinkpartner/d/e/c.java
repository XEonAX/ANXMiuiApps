package com.alibaba.alibclinkpartner.d.e;

import com.alibaba.alibclinkpartner.d.e.a.d;
import com.alibaba.alibclinkpartner.j.e;
import com.alibaba.alibclinkpartner.j.h;
import java.util.Map;

public class c {
    private static boolean a = true;
    private static boolean b = false;

    public static void a(d dVar) {
        if (a()) {
            b(dVar);
        } else {
            c(dVar);
        }
    }

    private static synchronized boolean a() {
        boolean z;
        synchronized (c.class) {
            if (a) {
                try {
                    Class.forName("com.ut.mini.UTAnalytics");
                    b = true;
                } catch (ClassNotFoundException e) {
                    e.a("ALPUserTraceManager", "isUTExsist", "ut do not exist , errmsg =" + e.toString());
                    b = false;
                }
                a = false;
            }
            z = b;
        }
        return z;
    }

    private static void b(d dVar) {
        Object a = h.a("com.ut.mini.UTHitBuilders$UTCustomHitBuilder", new String[]{"java.lang.String"}, new Object[]{dVar.a()});
        h.a("com.ut.mini.UTHitBuilders$UTCustomHitBuilder", "setProperties", new String[]{"java.util.Map"}, a, new Object[]{dVar.b()});
        Map map = (Map) h.a("com.ut.mini.UTHitBuilders$UTCustomHitBuilder", "build", null, a, null);
        String[] strArr = new String[]{"java.lang.String"};
        Object a2 = h.a("com.ut.mini.UTAnalytics", "getTracker", strArr, h.a("com.ut.mini.UTAnalytics", "getInstance", null, null, null), new String[]{"ALPLinkPartnerSDK"});
        h.a("com.ut.mini.UTTracker", "send", new String[]{"java.util.Map"}, a2, new Object[]{map});
    }

    private static void c(d dVar) {
        a a = a.a();
        a.a(dVar.a());
        a.a(dVar.b());
        a.b();
    }
}
