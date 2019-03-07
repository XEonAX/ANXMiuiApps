package com.xiaomi.stat.d;

import android.content.Context;
import android.os.SystemClock;
import com.miui.screenrecorder.config.ScreenRecorderConfig;
import com.xiaomi.stat.I;
import com.xiaomi.stat.b.e;
import java.util.Calendar;

public class r {
    public static final long a = 86400000;
    private static final String b = "TimeUtil";
    private static final long c = 300000;
    private static long d;
    private static long e;
    private static long f;

    public static void a() {
        Context a = I.a();
        long f = p.f(a);
        long g = p.g(a);
        long h = p.h(a);
        boolean z = true;
        if (!(f == 0 || g == 0 || h == 0 || Math.abs((System.currentTimeMillis() - g) - (SystemClock.elapsedRealtime() - h)) > c)) {
            d = f;
            f = g;
            e = h;
            z = false;
        }
        if (z) {
            e.a().b().execute(new s());
        }
        k.b(b, "syncTimeIfNeeded sync: " + z);
    }

    public static long b() {
        if (d == 0 || e == 0) {
            return System.currentTimeMillis();
        }
        return (d + SystemClock.elapsedRealtime()) - e;
    }

    public static void a(long j) {
        if (j > 0) {
            k.b("MI_STAT_TEST", "update server time:" + j);
            d = j;
            e = SystemClock.elapsedRealtime();
            f = System.currentTimeMillis();
            Context a = I.a();
            p.a(a, d);
            p.b(a, f);
            p.c(a, e);
        }
    }

    public static boolean a(long j, long j2) {
        return Math.abs(b() - j) >= j2;
    }

    public static boolean b(long j) {
        boolean z;
        k.b("MI_STAT_TEST", "inToday,current ts :" + b());
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(b());
        instance.set(11, 0);
        instance.set(12, 0);
        instance.set(13, 0);
        instance.set(14, 0);
        long timeInMillis = instance.getTimeInMillis();
        long j2 = timeInMillis + a;
        k.b("MI_STAT_TEST", "[start]:" + timeInMillis + "\n[end]:" + j2 + ScreenRecorderConfig.DURATION + ((j2 - timeInMillis) - a));
        String str = "MI_STAT_TEST";
        StringBuilder append = new StringBuilder().append("is in today:");
        if (timeInMillis > j || j >= j2) {
            z = false;
        } else {
            z = true;
        }
        k.b(str, append.append(z).toString());
        if (timeInMillis > j || j >= j2) {
            return false;
        }
        return true;
    }
}
