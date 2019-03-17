package com.ta.utdid2.b.a;

import java.lang.reflect.Method;

/* compiled from: DebugUtils */
public class d {
    private static Class<?> a = null;
    /* renamed from: a */
    private static Method f74a = null;
    private static Method b = null;
    public static boolean e;

    public static int getInt(String key, int def) {
        a();
        try {
            return ((Integer) b.invoke(a, new Object[]{key, Integer.valueOf(def)})).intValue();
        } catch (Exception e) {
            e.printStackTrace();
            return def;
        }
    }

    static {
        boolean z = true;
        if (getInt("alidebug", 0) != 1) {
            z = false;
        }
        e = z;
    }

    private static void a() {
        try {
            if (a == null) {
                a = Class.forName("android.os.SystemProperties");
                a = a.getDeclaredMethod("get", new Class[]{String.class});
                b = a.getDeclaredMethod("getInt", new Class[]{String.class, Integer.TYPE});
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
