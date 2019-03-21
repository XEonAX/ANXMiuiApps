package com.xiaomi.micloudsdk.utils;

import android.os.Looper;

public class ThreadUtil {
    public static void ensureWorkerThread() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalArgumentException("You must call this method on the worker thread");
        }
    }
}
