package com.uploader.implement.e;

import android.os.Build.VERSION;
import android.os.Process;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ThreadPoolExecutorFactory */
public class b {
    private static int a = 10;
    private static volatile ThreadPoolExecutor b;

    /* compiled from: ThreadPoolExecutorFactory */
    private static class a implements ThreadFactory {
        private int a = 10;
        private final AtomicInteger b = new AtomicInteger();

        public a(int priority) {
            this.a = priority;
        }

        public Thread newThread(Runnable r) {
            StringBuilder threadName = new StringBuilder("aus work thread:");
            threadName.append(this.b.getAndIncrement());
            return new Thread(r, threadName.toString()) {
                public void run() {
                    Process.setThreadPriority(a.this.a);
                    super.run();
                }
            };
        }
    }

    public static ThreadPoolExecutor a() {
        if (b == null) {
            synchronized (b.class) {
                if (b == null) {
                    b = a(2, 4, 30, 128, new a(a));
                    if (VERSION.SDK_INT > 8) {
                        b.allowCoreThreadTimeOut(true);
                    }
                }
            }
        }
        return b;
    }

    public static Future<?> a(Runnable runnable) {
        Future future = null;
        try {
            return a().submit(runnable);
        } catch (Throwable th) {
            return future;
        }
    }

    public static ThreadPoolExecutor a(int coreSize, int maxSize, int keepAliveTime, int queenSize, ThreadFactory factory) {
        BlockingQueue queue;
        if (queenSize > 0) {
            queue = new LinkedBlockingQueue(queenSize);
        } else {
            queue = new LinkedBlockingQueue();
        }
        return new ThreadPoolExecutor(coreSize, maxSize, (long) keepAliveTime, TimeUnit.SECONDS, queue, factory);
    }
}
