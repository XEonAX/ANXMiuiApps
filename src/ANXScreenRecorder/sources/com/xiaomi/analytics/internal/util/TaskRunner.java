package com.xiaomi.analytics.internal.util;

import android.util.Log;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class TaskRunner {
    private static int NUMBER_OF_CORES = Runtime.getRuntime().availableProcessors();
    public static final ExecutorService SINGLE_EXECUTOR = Executors.newSingleThreadExecutor();
    private static final String TAG = "TaskRunner";
    private static ThreadPoolExecutor sExecutor = new ThreadPoolExecutor(NUMBER_OF_CORES, NUMBER_OF_CORES, 1, TimeUnit.SECONDS, new LinkedBlockingQueue());

    static {
        sExecutor.allowCoreThreadTimeOut(true);
    }

    public static void execute(Runnable runnable) {
        try {
            sExecutor.execute(runnable);
        } catch (Exception e) {
            Log.e(ALog.addPrefix(TAG), "execute e", e);
        }
    }
}
