package com.ali.auth.third.core.service.impl;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.ali.auth.third.core.service.MemberExecutorService;
import com.ali.auth.third.core.trace.SDKLogger;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;

public final class a implements MemberExecutorService {
    private final Handler a = new Handler(Looper.getMainLooper());
    private ThreadPoolExecutor b;
    private final BlockingQueue<Runnable> c = new LinkedBlockingQueue(128);
    private final HandlerThread d = new HandlerThread("SDK Looper Thread");
    private final Handler e;

    public static class a implements RejectedExecutionHandler {
        private BlockingQueue<Runnable> a;

        public a(BlockingQueue<Runnable> blockingQueue) {
            this.a = blockingQueue;
        }

        private Object a(Object obj) {
            try {
                Field declaredField = obj.getClass().getDeclaredField("this$0");
                declaredField.setAccessible(true);
                return declaredField.get(obj);
            } catch (Exception e) {
                e.printStackTrace();
                return obj;
            }
        }

        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            Object[] toArray = this.a.toArray();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append('[');
            for (Object obj : toArray) {
                if (obj.getClass().isAnonymousClass()) {
                    stringBuilder.append(a(obj));
                    stringBuilder.append(',').append(' ');
                } else {
                    stringBuilder.append(obj.getClass());
                    stringBuilder.append(',').append(' ');
                }
            }
            stringBuilder.append(']');
            throw new RejectedExecutionException("Task " + runnable.toString() + " rejected from " + threadPoolExecutor.toString() + " in " + stringBuilder.toString());
        }
    }

    public a() {
        this.d.start();
        synchronized (this.d) {
            while (this.d.getLooper() == null) {
                try {
                    this.d.wait();
                } catch (InterruptedException e) {
                }
            }
        }
        this.e = new Handler(this.d.getLooper());
        this.b = new ThreadPoolExecutor(8, 16, (long) 1, TimeUnit.SECONDS, this.c, new ThreadFactory() {
            private final AtomicInteger b = new AtomicInteger(1);

            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "ExecutorTask #" + this.b.getAndIncrement());
            }
        }, new a(this.c));
    }

    public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.b.awaitTermination(j, timeUnit);
    }

    public void execute(Runnable runnable) {
        this.b.execute(runnable);
    }

    public Looper getDefaultLooper() {
        return this.d.getLooper();
    }

    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.b.invokeAll(collection);
    }

    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException {
        return this.b.invokeAll(collection, j, timeUnit);
    }

    public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        return this.b.invokeAny(collection);
    }

    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.b.invokeAny(collection, j, timeUnit);
    }

    public boolean isShutdown() {
        return this.b.isShutdown();
    }

    public boolean isTerminated() {
        return this.b.isTerminated();
    }

    public void postHandlerTask(Runnable runnable) {
        this.e.post(runnable);
    }

    public void postTask(Runnable runnable) {
        this.b.execute(runnable);
    }

    public void postUITask(final Runnable runnable) {
        this.a.post(new Runnable() {
            public void run() {
                try {
                    runnable.run();
                } catch (Throwable th) {
                    SDKLogger.e("kernel", th.getMessage(), th);
                }
            }
        });
    }

    public void shutdown() {
        this.b.shutdown();
    }

    public List<Runnable> shutdownNow() {
        return this.b.shutdownNow();
    }

    public Future<?> submit(Runnable runnable) {
        return this.b.submit(runnable);
    }

    public <T> Future<T> submit(Runnable runnable, T t) {
        return this.b.submit(runnable, t);
    }

    public <T> Future<T> submit(Callable<T> callable) {
        return this.b.submit(callable);
    }
}
