package com.alibaba.baichuan.trade.common.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

public class ExecutorServiceUtils {
    public static final String TAG = "ExecutorServiceUtils";
    private static volatile ExecutorServiceUtils d = null;
    private Handler a = new Handler(Looper.getMainLooper());
    private HandlerThread b = new HandlerThread("SDK Looper Thread");
    private Handler c;

    private ExecutorServiceUtils() {
        this.b.start();
        while (this.b.getLooper() == null) {
            try {
                this.b.wait();
            } catch (InterruptedException e) {
                AlibcLogger.e(TAG, "创建handlerThread错误：" + e.getMessage());
            }
        }
        this.c = new b(this, this.b.getLooper());
    }

    public static ExecutorServiceUtils getInstance() {
        if (d == null) {
            synchronized (ExecutorServiceUtils.class) {
                if (d == null) {
                    d = new ExecutorServiceUtils();
                }
            }
        }
        return d;
    }

    public void destroy() {
        if (this.a != null) {
            this.a.removeCallbacksAndMessages(null);
            this.a = null;
        }
        if (this.c != null) {
            this.c.removeCallbacksAndMessages(null);
            this.c = null;
        }
        if (this.b != null) {
            this.b.quit();
        }
    }

    public void postDelayTask(Runnable runnable, long j) {
        this.c.postDelayed(runnable, j);
    }

    public void postHandlerTask(Runnable runnable) {
        this.c.post(runnable);
    }

    public void postUITask(Runnable runnable) {
        this.a.post(runnable);
    }
}
