package com.xiaomi.scanner.debug;

import com.xiaomi.scanner.util.ReflectUtil.ReflAgent;

public class LogHelper {
    private static LogHelper mInstance;
    private boolean mDebugMode;

    private LogHelper() {
        this.mDebugMode = false;
        this.mDebugMode = ReflAgent.getClass("android.os.SystemProperties").callStaticMethod("getBoolean", new Class[]{String.class, Boolean.TYPE}, "miuiscanner_debug", Boolean.valueOf(false)).booleanResult();
    }

    public static LogHelper instance() {
        if (mInstance == null) {
            mInstance = new LogHelper();
        }
        return mInstance;
    }

    public int getOverrideLevel() {
        return 2;
    }

    public boolean isDebugMode() {
        return this.mDebugMode;
    }
}
