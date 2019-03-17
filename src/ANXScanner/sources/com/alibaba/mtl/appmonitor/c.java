package com.alibaba.mtl.appmonitor;

import com.alibaba.mtl.appmonitor.a.e;
import com.alibaba.mtl.appmonitor.a.f;
import com.alibaba.mtl.log.d.i;
import com.alibaba.mtl.log.d.r;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: UploadTask */
class c implements Runnable {
    private static Map<Integer, c> f;
    private static boolean j = false;
    private int d = 180000;
    private int e;
    private long startTime;

    static void init() {
        int i = 0;
        if (!j) {
            i.a("CommitTask", "init StatisticsAlarmEvent");
            f = new ConcurrentHashMap();
            f[] a = f.a();
            int length = a.length;
            while (i < length) {
                f fVar = a[i];
                if (fVar.isOpen()) {
                    int a2 = fVar.a();
                    Runnable cVar = new c(a2, fVar.c() * 1000);
                    f.put(Integer.valueOf(a2), cVar);
                    r.a().a(a(a2), cVar, (long) cVar.d);
                }
                i++;
            }
            j = true;
        }
    }

    static void destroy() {
        for (f a : f.a()) {
            r.a().f(a(a.a()));
        }
        j = false;
        f = null;
    }

    static void a(int i, int i2) {
        long j = 0;
        i.a("CommitTask", "[setStatisticsInterval] eventId" + i + " statisticsInterval:" + i2);
        synchronized (f) {
            c cVar = (c) f.get(Integer.valueOf(i));
            if (cVar == null) {
                if (i2 > 0) {
                    Runnable cVar2 = new c(i, i2 * 1000);
                    f.put(Integer.valueOf(i), cVar2);
                    i.a("CommitTask", "post next eventId" + i + ": uploadTask.interval " + cVar2.d);
                    r.a().a(a(i), cVar2, (long) cVar2.d);
                }
            } else if (i2 <= 0) {
                i.a("CommitTask", "uploadTasks.size:" + f.size());
                f.remove(Integer.valueOf(i));
                i.a("CommitTask", "uploadTasks.size:" + f.size());
            } else if (cVar.d != i2 * 1000) {
                r.a().f(a(i));
                cVar.d = i2 * 1000;
                long currentTimeMillis = System.currentTimeMillis();
                long j2 = ((long) cVar.d) - (currentTimeMillis - cVar.startTime);
                if (j2 >= 0) {
                    j = j2;
                }
                i.a("CommitTask", cVar + "post next eventId" + i + " next:" + j + "  uploadTask.interval: " + cVar.d);
                r.a().a(a(i), cVar, j);
                cVar.startTime = currentTimeMillis;
            }
        }
    }

    private c(int i, int i2) {
        this.e = i;
        this.d = i2;
        this.startTime = System.currentTimeMillis();
    }

    public void run() {
        i.a("CommitTask", "check&commit event:", Integer.valueOf(this.e));
        e.a().a(this.e);
        if (f.containsValue(this)) {
            this.startTime = System.currentTimeMillis();
            i.a("CommitTask", "next:" + this.e);
            r.a().a(a(this.e), this, (long) this.d);
        }
    }

    static void d() {
        for (f a : f.a()) {
            e.a().a(a.a());
        }
    }

    private static int a(int i) {
        switch (i) {
            case 65133:
                return 11;
            case 65501:
                return 6;
            case 65502:
                return 9;
            case 65503:
                return 10;
            default:
                return 0;
        }
    }
}
