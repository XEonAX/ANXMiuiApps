package com.alibaba.mtl.appmonitor.c;

import com.alibaba.mtl.appmonitor.b.b;
import java.util.HashMap;
import java.util.Map;

/* compiled from: BalancedPool */
public class a {
    private static a a = new a();
    private Map<Class<? extends b>, c<? extends b>> p = new HashMap();

    public static a a() {
        return a;
    }

    private a() {
    }

    /* JADX WARNING: Removed duplicated region for block: B:5:0x0012  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <T extends b> T a(Class<T> cls, Object... objArr) {
        T t;
        T a = a((Class) cls).a();
        if (a == null) {
            try {
                t = (b) cls.newInstance();
            } catch (Throwable e) {
                b.a(e);
            }
            if (t != null) {
                t.fill(objArr);
            }
            return t;
        }
        t = a;
        if (t != null) {
        }
        return t;
    }

    public <T extends b> void a(T t) {
        if (t != null && !(t instanceof e) && !(t instanceof d)) {
            a(t.getClass()).a(t);
        }
    }

    private synchronized <T extends b> c<T> a(Class<T> cls) {
        c<T> cVar;
        cVar = (c) this.p.get(cls);
        if (cVar == null) {
            cVar = new c();
            this.p.put(cls, cVar);
        }
        return cVar;
    }
}
