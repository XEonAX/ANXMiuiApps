package com.xiaomi.mistatistic.sdk.controller;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: AsyncJobDispatcher */
public class e {
    private static e a = null;
    private static e b = null;
    private volatile Handler c;
    private Looper d;
    private ArrayList<a> e = new ArrayList();

    /* compiled from: AsyncJobDispatcher */
    public interface a {
        void execute();
    }

    /* compiled from: AsyncJobDispatcher */
    private class b extends HandlerThread {
        public b(String str) {
            super(str);
        }

        protected void onLooperPrepared() {
            j.a("AJD", getName() + ": onLooperPrepared");
            e.this.c = new Handler();
            e.this.d = getLooper();
            ArrayList arrayList = null;
            synchronized (e.this.e) {
                if (!e.this.e.isEmpty()) {
                    arrayList = (ArrayList) e.this.e.clone();
                    String valueOf = String.valueOf(e.this.e.size());
                    e.this.e.clear();
                    j.a("AJD", "mPendingJob(cnt=" + valueOf + ") not empty, clone a job list and clear original list");
                }
            }
            if (arrayList != null) {
                j.a("AJD", "start execute the pending jobs ...");
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    try {
                        ((a) it.next()).execute();
                    } catch (Throwable e) {
                        j.a("AJD", "error while executing job.", e);
                    }
                }
            }
            super.onLooperPrepared();
        }
    }

    public static synchronized e a() {
        e eVar;
        synchronized (e.class) {
            if (a == null) {
                a = new e("local_job_dispatcher");
            }
            eVar = a;
        }
        return eVar;
    }

    public static synchronized e b() {
        e eVar;
        synchronized (e.class) {
            if (b == null) {
                b = new e("remote_job_dispatcher");
            }
            eVar = b;
        }
        return eVar;
    }

    public static Looper c() {
        Looper e = a().e();
        if (e == null) {
            try {
                Thread.sleep(5);
            } catch (Throwable e2) {
                j.a("AJD", "getLocalLooper exception", e2);
            }
            e = a().e();
        }
        if (e != null) {
            return e;
        }
        return Looper.getMainLooper();
    }

    public static Looper d() {
        Looper e = b().e();
        if (e == null) {
            try {
                Thread.sleep(5);
            } catch (Throwable e2) {
                j.a("AJD", "getRemoteLooper exception", e2);
            }
            e = b().e();
        }
        if (e != null) {
            return e;
        }
        return Looper.getMainLooper();
    }

    public Looper e() {
        if (this.d == null) {
            j.d("AJD", "getLooper return null!");
        }
        return this.d;
    }

    private e(String str) {
        new b(str).start();
    }

    public void a(final a aVar) {
        if (this.c == null) {
            j.a("AJD", "mHander is null, add job to pending queue");
            synchronized (this.e) {
                this.e.add(aVar);
            }
            return;
        }
        synchronized (this.c) {
            this.c.post(new Runnable() {
                public void run() {
                    try {
                        aVar.execute();
                    } catch (Throwable e) {
                        j.a("AJD", "error while executing job.", e);
                    }
                }
            });
        }
    }

    public void a(final a aVar, long j) {
        if (this.c != null) {
            synchronized (this.c) {
                this.c.postDelayed(new Runnable() {
                    public void run() {
                        try {
                            aVar.execute();
                        } catch (Throwable e) {
                            j.a("AJD", "error while executing job.", e);
                        }
                    }
                }, j);
            }
            return;
        }
        j.a("AJD", "drop the job as handler is not ready.", null);
    }
}
