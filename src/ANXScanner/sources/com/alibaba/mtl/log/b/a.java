package com.alibaba.mtl.log.b;

import android.text.TextUtils;
import com.alibaba.mtl.log.d.i;
import com.alibaba.mtl.log.d.l;
import java.util.List;

/* compiled from: CoreStatics */
public class a {
    private static StringBuilder a = new StringBuilder();
    private static volatile long e;
    private static long f;
    private static long g;
    private static long h;
    private static long i;
    private static long j = 0;
    private static long k = 0;
    private static long l = 0;
    private static long m = 0;
    private static long n = 0;
    private static long o = 0;
    private static long p = 0;
    private static long q = 0;
    private static long r = 0;
    private static long s = 0;
    private static long t = 0;
    private static int u;
    /* renamed from: u */
    private static long f39u = 0;
    private static int v = 0;
    /* renamed from: v */
    private static long f40v = 0;
    private static int w = 0;
    /* renamed from: w */
    private static long f41w = 0;
    private static long x = 0;
    private static long y = 0;

    public static synchronized void k(String str) {
        synchronized (a.class) {
            if (!e(str)) {
                if ("65501".equalsIgnoreCase(str)) {
                    y++;
                } else if ("65133".equalsIgnoreCase(str)) {
                    w++;
                } else if ("65502".equalsIgnoreCase(str)) {
                    x++;
                } else if ("65503".equalsIgnoreCase(str)) {
                    v++;
                }
                e++;
            }
        }
    }

    public static synchronized void l(String str) {
        synchronized (a.class) {
            if (!e(str)) {
                f++;
                C();
            }
        }
    }

    public static synchronized void a(List<com.alibaba.mtl.log.model.a> list, int i) {
        int i2 = 0;
        synchronized (a.class) {
            if (list != null) {
                int i3 = 0;
                while (true) {
                    int i4 = i2;
                    if (i3 < list.size()) {
                        com.alibaba.mtl.log.model.a aVar = (com.alibaba.mtl.log.model.a) list.get(i3);
                        if (aVar != null) {
                            if (!"6005".equalsIgnoreCase(aVar.S)) {
                                i4++;
                            }
                            a.append(aVar.W);
                            if (i3 != list.size() - 1) {
                                a.append(",");
                            }
                        }
                        i2 = i4;
                        i3++;
                    } else {
                        i.a("CoreStatics", "[uploadInc]:", Long.valueOf(g), "count:", Integer.valueOf(i));
                        g += (long) i;
                        i.a("CoreStatics", "[uploadInc]:", Long.valueOf(g));
                        if (i4 != i) {
                            i.a("CoreStatics", (Object) "Mutil Process Upload Error");
                        }
                    }
                }
            }
        }
    }

    public static synchronized void d(int i) {
        synchronized (a.class) {
            u += i;
        }
    }

    public static synchronized void s() {
        synchronized (a.class) {
            h++;
        }
    }

    public static synchronized void t() {
        synchronized (a.class) {
            i++;
        }
    }

    public static synchronized void u() {
        synchronized (a.class) {
            n++;
        }
    }

    public static synchronized void v() {
        synchronized (a.class) {
            o++;
        }
    }

    public static synchronized void w() {
        synchronized (a.class) {
            p++;
        }
    }

    public static synchronized void x() {
        synchronized (a.class) {
            q++;
        }
    }

    public static synchronized void y() {
        synchronized (a.class) {
            r++;
        }
    }

    public static synchronized void z() {
        synchronized (a.class) {
            s++;
        }
    }

    public static synchronized void A() {
        synchronized (a.class) {
            t++;
        }
    }

    public static synchronized void B() {
        synchronized (a.class) {
            u++;
        }
    }

    public static synchronized void commit(boolean auto) {
        synchronized (a.class) {
        }
    }

    private static void C() {
        String t = l.t();
        if ("wifi".equalsIgnoreCase(t)) {
            m++;
        } else if ("3G".equalsIgnoreCase(t)) {
            k++;
        } else if ("4G".equalsIgnoreCase(t)) {
            l++;
        } else if ("2G".equalsIgnoreCase(t)) {
            j++;
        } else {
            v++;
        }
    }

    public static synchronized void D() {
        synchronized (a.class) {
            w++;
            if (!(e == 0 && g == 0)) {
                if (com.alibaba.mtl.log.a.o || w >= 6) {
                    commit(true);
                }
            }
        }
    }

    private static boolean e(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return "6005".equalsIgnoreCase(str.trim());
    }
}
