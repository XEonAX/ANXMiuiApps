package com.xiaomi.scanner.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public class ScannerThreadPool {
    private static final Tag TAG = new Tag("ScannerThreadPool");
    private static volatile Handler sHandler;
    private static volatile Executor sPool;
    private static Handler sUiHandler = new Handler(Looper.getMainLooper());

    public static abstract class ScanThreadCallback<T> {
        public abstract T onBackground();

        public void onMainResult(T t) {
        }
    }

    private static Executor getExecutor() {
        if (sPool != null) {
            return sPool;
        }
        synchronized (ScannerThreadPool.class) {
            if (sPool == null) {
                sPool = Executors.newCachedThreadPool();
            }
        }
        return sPool;
    }

    private static Handler getSerialHandler() {
        if (sHandler != null) {
            return sHandler;
        }
        synchronized (ScannerThreadPool.class) {
            if (sHandler == null) {
                HandlerThread thread = new HandlerThread("serial-looper");
                thread.start();
                sHandler = new Handler(thread.getLooper());
            }
        }
        return sHandler;
    }

    @Deprecated
    public static void poolExecute(Runnable runnable) {
        getExecutor().execute(runnable);
    }

    public static <T> void poolExecute(ScanThreadCallback<T> callback) {
        final WeakReference<ScanThreadCallback<T>> weakReference = new WeakReference(callback);
        getExecutor().execute(new Runnable() {
            public void run() {
                final ScanThreadCallback<T> call = (ScanThreadCallback) weakReference.get();
                if (call == null) {
                    Log.e(ScannerThreadPool.TAG, "poolExecute callback null");
                    return;
                }
                final T result = call.onBackground();
                ScannerThreadPool.runOnUiThread(new Runnable() {
                    public void run() {
                        call.onMainResult(result);
                    }
                });
            }
        });
    }

    public static void serialExecute(Runnable runnable) {
        getSerialHandler().post(runnable);
    }

    public static void runOnUiThread(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            sUiHandler.post(runnable);
        }
    }
}
