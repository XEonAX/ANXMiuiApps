package com.alibaba.mtl.log.d;

import android.annotation.TargetApi;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.alibaba.mtl.appmonitor.AppMonitor;
import com.alibaba.mtl.appmonitor.b.b;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardOldestPolicy;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: TaskExecutor */
public class r {
    private static int F = 1;
    private static int G = 2;
    private static int H = 10;
    private static int I = 60;
    public static r a;
    /* renamed from: a */
    private static ThreadPoolExecutor f51a;
    private static final AtomicInteger f = new AtomicInteger();
    private HandlerThread b = new HandlerThread(AppMonitor.TAG);
    private Handler mHandler;

    /* compiled from: TaskExecutor */
    static class a implements ThreadFactory {
        private int priority;

        public a(int i) {
            this.priority = i;
        }

        public Thread newThread(Runnable r) {
            Thread thread = new Thread(r, "AppMonitor:" + r.a().getAndIncrement());
            thread.setPriority(this.priority);
            return thread;
        }
    }

    @TargetApi(9)
    private static ThreadPoolExecutor a(int i, int i2, int i3, int i4, int i5) {
        BlockingQueue linkedBlockingQueue;
        if (i5 > 0) {
            linkedBlockingQueue = new LinkedBlockingQueue(i5);
        } else {
            linkedBlockingQueue = new LinkedBlockingQueue();
        }
        return new ThreadPoolExecutor(i2, i3, (long) i4, TimeUnit.SECONDS, linkedBlockingQueue, new a(i), new DiscardOldestPolicy());
    }

    /* renamed from: a */
    private static synchronized ThreadPoolExecutor m10a() {
        ThreadPoolExecutor threadPoolExecutor;
        synchronized (r.class) {
            if (a == null) {
                a = a(F, G, H, I, 500);
            }
            threadPoolExecutor = a;
        }
        return threadPoolExecutor;
    }

    public static synchronized r a() {
        r rVar;
        synchronized (r.class) {
            if (a == null) {
                a = new r();
            }
            rVar = a;
        }
        return rVar;
    }

    private r() {
        this.b.start();
        this.mHandler = new Handler(this.b.getLooper()) {
            public void handleMessage(Message msg) {
                super.handleMessage(msg);
                try {
                    if (msg.obj != null && (msg.obj instanceof Runnable)) {
                        r.a().submit((Runnable) msg.obj);
                    }
                } catch (Throwable th) {
                }
            }
        };
    }

    public final void a(int i, Runnable runnable, long j) {
        try {
            Message obtain = Message.obtain(this.mHandler, i);
            obtain.obj = runnable;
            this.mHandler.sendMessageDelayed(obtain, j);
        } catch (Throwable e) {
            b.a(e);
        }
    }

    public final void f(int i) {
        this.mHandler.removeMessages(i);
    }

    public final boolean b(int i) {
        return this.mHandler.hasMessages(i);
    }

    public void b(Runnable runnable) {
        try {
            a().submit(runnable);
        } catch (Throwable th) {
        }
    }
}
