package com.xiaomi.stat.d;

import android.text.TextUtils;
import android.util.Log;

public class k {
    private static final String a = "MI_STAT";
    private static boolean b = false;
    private static final int c = 4000;

    public static class a {
        public static final int a = 0;
        public static final int b = 1;
        public static final int c = 2;
        public static final int d = 3;
        public static final int e = 4;
    }

    private static void a(int i, String str, String str2, Throwable th) {
        if (TextUtils.isEmpty(str)) {
            str = a;
        }
        if (i == 0) {
            Log.v(str, str2, th);
        } else if (i == 1) {
            Log.i(str, str2, th);
        } else if (i == 2) {
            Log.d(str, str2, th);
        } else if (i == 3) {
            Log.w(str, str2, th);
        } else if (i == 4) {
            Log.e(str, str2, th);
        }
    }

    private static void b(int i, String str, String str2, Throwable th) {
        if (!TextUtils.isEmpty(str2)) {
            if (str2.length() > c) {
                a(i, str, str2.substring(0, c), null);
                b(i, str, str2.substring(c, str2.length()), null);
                return;
            }
            a(i, str, str2, th);
        }
    }

    public static void a(boolean z) {
        b = z;
    }

    public static boolean a() {
        return b;
    }

    public static void a(String str) {
        a(a, str);
    }

    public static void a(String str, String str2) {
        if (b) {
            b(0, str, str2, null);
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (b) {
            b(0, str, str2, th);
        }
    }

    public static void b(String str) {
        b(a, str);
    }

    public static void b(String str, String str2) {
        if (b) {
            b(2, str, str2, null);
        }
    }

    public static void b(String str, String str2, Throwable th) {
        if (b) {
            b(2, str, str2, th);
        }
    }

    public static void c(String str) {
        c(a, str);
    }

    public static void c(String str, String str2) {
        if (b) {
            b(1, str, str2, null);
        }
    }

    public static void c(String str, String str2, Throwable th) {
        if (b) {
            b(1, str, str2, th);
        }
    }

    public static void d(String str) {
        d(a, str);
    }

    public static void d(String str, String str2, Throwable th) {
        b(3, str, str2, th);
    }

    public static void d(String str, String str2) {
        if (b) {
            b(3, str, str2, null);
        }
    }

    public static void a(String str, Throwable th) {
        if (b) {
            b(3, str, null, th);
        }
    }

    public static void e(String str) {
        e(a, str);
    }

    public static void e(String str, String str2) {
        b(4, str, str2, null);
    }

    public static void e(String str, String str2, Throwable th) {
        b(4, str, str2, th);
    }

    public static String a(Throwable th) {
        return Log.getStackTraceString(th);
    }
}
