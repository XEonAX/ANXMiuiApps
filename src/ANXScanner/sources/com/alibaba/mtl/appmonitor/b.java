package com.alibaba.mtl.appmonitor;

import com.alibaba.mtl.appmonitor.a.e;
import com.alibaba.mtl.log.d.i;
import com.alibaba.mtl.log.d.r;

/* compiled from: CleanTask */
class b implements Runnable {
    private static long a = 300000;
    /* renamed from: a */
    private static b f47a;
    private static boolean j = false;

    private b() {
    }

    static void init() {
        if (!j) {
            i.a("CleanTask", "init TimeoutEventManager");
            a = new b();
            r.a().a(5, a, a);
            j = true;
        }
    }

    static void destroy() {
        r.a().f(5);
        j = false;
        a = null;
    }

    public void run() {
        i.a("CleanTask", "clean TimeoutEvent");
        e.a().g();
        r.a().a(5, a, a);
    }
}
