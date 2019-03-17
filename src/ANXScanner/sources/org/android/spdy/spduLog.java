package org.android.spdy;

import android.util.Log;

public class spduLog {
    private static long savedTraffic = 0;

    public static void Logd(String tag, String msg) {
        if (SpdyAgent.enableDebug && tag != null && msg != null) {
            Log.d(tag, Thread.currentThread().getId() + " - " + msg);
        }
    }

    public static void Logd(String tag, String msg, long startTime) {
        if (SpdyAgent.enableDebug && tag != null && msg != null) {
            Log.i(tag, Thread.currentThread().getId() + " - " + msg + ((System.nanoTime() - startTime) / 1000000));
        }
    }

    public static void Loge(String tag, String msg) {
        if (SpdyAgent.enableDebug && tag != null && msg != null) {
            Log.e(tag, Thread.currentThread().getId() + " - " + msg);
        }
    }

    public static void Logi(String tag, String msg) {
        if (SpdyAgent.enableDebug && tag != null && msg != null) {
            Log.i(tag, Thread.currentThread().getId() + " - " + msg);
        }
    }

    public static void Logv(String tag, String msg) {
        if (SpdyAgent.enableDebug && tag != null && msg != null) {
            Log.v(tag, Thread.currentThread().getId() + " - " + msg);
        }
    }

    public static void Logw(String tag, String msg) {
        if (SpdyAgent.enableDebug && tag != null && msg != null) {
            Log.w(tag, Thread.currentThread().getId() + " - " + msg);
        }
    }

    public static void Logf(String tag, String msg) {
        if (tag != null && msg != null) {
            Log.d(tag, Thread.currentThread().getId() + " - " + msg);
        }
    }

    public static void addTraffic(long adds) {
        savedTraffic += adds;
    }

    public static long getSavedTraffic() {
        return savedTraffic;
    }

    public static long now() {
        if (SpdyAgent.enableDebug) {
            return System.nanoTime();
        }
        return 0;
    }
}
