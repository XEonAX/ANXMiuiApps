package com.xiaomi.channel.commonutils.misc;

import android.os.Looper;
import com.xiaomi.channel.commonutils.logger.MyLog;

public class ThreadUtils {
    public static void checkNotUIThread() {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            throw new RuntimeException("can't do this on ui thread");
        }
    }

    public static void checkNotUIThread(boolean debug_switch) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread() && debug_switch) {
            throw new RuntimeException("can't do this on ui thread when debug_switch:" + debug_switch);
        } else if (Looper.getMainLooper().getThread() == Thread.currentThread() && !debug_switch) {
            MyLog.w("can't do this on ui thread when debug_switch:" + debug_switch);
        }
    }
}
