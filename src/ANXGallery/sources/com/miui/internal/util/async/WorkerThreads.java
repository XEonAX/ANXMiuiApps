package com.miui.internal.util.async;

import android.os.HandlerThread;
import android.os.Looper;
import java.util.Map;
import miui.util.ArrayMap;

public class WorkerThreads {
    public static final String TAG_COMMON_WORK = "common_work";
    private static final Map<String, ThreadWrapper> jU = new ArrayMap();

    private static class ThreadWrapper {
        final HandlerThread jV;
        int jW = 1;

        ThreadWrapper(String str) {
            this.jV = new HandlerThread(str);
            this.jV.start();
        }
    }

    private WorkerThreads() {
    }

    public static synchronized Looper aquireWorker(String str) {
        Looper looper;
        synchronized (WorkerThreads.class) {
            ThreadWrapper threadWrapper = (ThreadWrapper) jU.get(str);
            if (threadWrapper == null) {
                threadWrapper = new ThreadWrapper(str);
                jU.put(str, threadWrapper);
            } else {
                threadWrapper.jW++;
            }
            looper = threadWrapper.jV.getLooper();
        }
        return looper;
    }

    public static synchronized void releaseWorker(String str) {
        synchronized (WorkerThreads.class) {
            ThreadWrapper threadWrapper = (ThreadWrapper) jU.get(str);
            if (threadWrapper != null) {
                threadWrapper.jW--;
                if (threadWrapper.jW == 0) {
                    jU.remove(str);
                    threadWrapper.jV.quitSafely();
                }
            }
        }
    }
}
