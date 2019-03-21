package com.miui.gallery.threadpool;

import android.os.HandlerThread;
import android.os.Looper;
import com.android.internal.CompatHandler;

public class ThreadManager {
    private static final Object sDecodeLock = new Object();
    private static ThreadPool sDecodePool;
    private static CompatHandler sMainHandler;
    private static final Object sMainHandlerLock = new Object();
    private static final Object sMiscLock = new Object();
    private static ThreadPool sMiscPool;
    private static final Object sNetworkLock = new Object();
    private static ThreadPool sNetworkPool;
    private static final Object sPreviewLock = new Object();
    private static ThreadPool sPreviewThread;
    private static final Object sRequestLock = new Object();
    private static HandlerThread sRequestThread;
    private static CompatHandler sRequestThreadHandler;
    private static CompatHandler sWorkHandler;
    private static final Object sWorkHandlerLock = new Object();

    public static ThreadPool getDecodePool() {
        ThreadPool threadPool;
        synchronized (sDecodeLock) {
            if (sDecodePool == null) {
                sDecodePool = new ThreadPool(2, 4);
            }
            threadPool = sDecodePool;
        }
        return threadPool;
    }

    public static ThreadPool getMiscPool() {
        ThreadPool threadPool;
        synchronized (sMiscLock) {
            if (sMiscPool == null) {
                sMiscPool = new ThreadPool();
            }
            threadPool = sMiscPool;
        }
        return threadPool;
    }

    public static ThreadPool getPreviewPool() {
        ThreadPool threadPool;
        synchronized (sPreviewLock) {
            if (sPreviewThread == null) {
                sPreviewThread = new ThreadPool(1, 1);
            }
            threadPool = sPreviewThread;
        }
        return threadPool;
    }

    public static ThreadPool getNetworkPool() {
        ThreadPool threadPool;
        synchronized (sNetworkLock) {
            if (sNetworkPool == null) {
                sNetworkPool = new ThreadPool(2, 2);
            }
            threadPool = sNetworkPool;
        }
        return threadPool;
    }

    public static CompatHandler getMainHandler() {
        CompatHandler compatHandler;
        synchronized (sMainHandlerLock) {
            if (sMainHandler == null) {
                sMainHandler = new CompatHandler(Looper.getMainLooper());
            }
            compatHandler = sMainHandler;
        }
        return compatHandler;
    }

    public static CompatHandler getWorkHandler() {
        CompatHandler compatHandler;
        synchronized (sWorkHandlerLock) {
            if (sWorkHandler == null) {
                HandlerThread t = new HandlerThread("work_thread", 10);
                t.start();
                sWorkHandler = new CompatHandler(t.getLooper());
            }
            compatHandler = sWorkHandler;
        }
        return compatHandler;
    }

    public static void runOnMainThread(Runnable runnable) {
        if (runnable != null) {
            if (Looper.getMainLooper() == Looper.myLooper()) {
                runnable.run();
            } else {
                getMainHandler().post(runnable);
            }
        }
    }

    public static CompatHandler getRequestThreadHandler() {
        CompatHandler compatHandler;
        synchronized (sRequestLock) {
            if (sRequestThreadHandler == null) {
                sRequestThread = new HandlerThread("request_thread");
                sRequestThread.start();
                sRequestThreadHandler = new CompatHandler(sRequestThread.getLooper());
            }
            compatHandler = sRequestThreadHandler;
        }
        return compatHandler;
    }

    public static Looper getRequestThreadLooper() {
        return getRequestThreadHandler().getLooper();
    }

    public static void sleepThread(long duration) {
        try {
            Thread.sleep(duration);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public static boolean isMainThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }
}
