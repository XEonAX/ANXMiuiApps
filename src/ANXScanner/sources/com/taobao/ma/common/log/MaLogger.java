package com.taobao.ma.common.log;

import android.util.Log;

public class MaLogger {
    private static final String MA_LOG_TAG = "Ma";
    private static final String NO_MESSAGE = "";
    private static LogLevel mLogLevel = LogLevel.ERROR;

    public static void setLogLevel(LogLevel logLevel) {
        mLogLevel = logLevel;
    }

    public static void v(String msg) {
        log(LogLevel.TRACE, msg, null);
    }

    public static void v(Throwable t) {
        log(LogLevel.TRACE, "", t);
    }

    public static void v(String msg, Throwable t) {
        log(LogLevel.TRACE, msg, t);
    }

    public static void d(String msg) {
        log(LogLevel.DEBUG, msg, null);
    }

    public static void d(Throwable t) {
        log(LogLevel.TRACE, "", t);
    }

    public static void d(String msg, Throwable t) {
        log(LogLevel.DEBUG, msg, t);
    }

    public static void i(String msg) {
        log(LogLevel.INFO, msg, null);
    }

    public static void i(Throwable t) {
        log(LogLevel.TRACE, "", t);
    }

    public static void i(String msg, Throwable t) {
        log(LogLevel.INFO, msg, t);
    }

    public static void w(String msg) {
        log(LogLevel.WARN, msg, null);
    }

    public static void w(Throwable t) {
        log(LogLevel.TRACE, "", t);
    }

    public void w(String msg, Throwable t) {
        log(LogLevel.WARN, msg, t);
    }

    public static void e(String msg) {
        log(LogLevel.ERROR, msg, null);
    }

    public static void e(Throwable t) {
        log(LogLevel.TRACE, "", t);
    }

    public static void e(String msg, Throwable t) {
        log(LogLevel.ERROR, msg, t);
    }

    private static void log(LogLevel logLevel, String message, Throwable throwable) {
        if (isLevelEnabled(logLevel)) {
            switch (logLevel.getAndroidLogLevel()) {
                case 2:
                    logAndroidVerbose(message, throwable);
                    return;
                case 3:
                    logAndroidDebug(message, throwable);
                    return;
                case 4:
                    logAndroidInfo(message, throwable);
                    return;
                case 5:
                    logAndroidWarn(message, throwable);
                    return;
                case 6:
                    logAndroidError(message, throwable);
                    return;
                default:
                    return;
            }
        }
    }

    protected static boolean isLevelEnabled(LogLevel logLevel) {
        return logLevel.getAndroidLogLevel() >= mLogLevel.getAndroidLogLevel();
    }

    private static void logAndroidVerbose(String message, Throwable throwable) {
        if (throwable != null) {
            Log.v(MA_LOG_TAG, message, throwable);
        } else {
            Log.v(MA_LOG_TAG, message);
        }
    }

    private static void logAndroidDebug(String message, Throwable throwable) {
        if (throwable != null) {
            Log.d(MA_LOG_TAG, message, throwable);
        } else {
            Log.d(MA_LOG_TAG, message);
        }
    }

    private static void logAndroidInfo(String message, Throwable throwable) {
        if (throwable != null) {
            Log.i(MA_LOG_TAG, message, throwable);
        } else {
            Log.i(MA_LOG_TAG, message);
        }
    }

    private static void logAndroidWarn(String message, Throwable throwable) {
        if (throwable != null) {
            Log.w(MA_LOG_TAG, message, throwable);
        } else {
            Log.w(MA_LOG_TAG, message);
        }
    }

    private static void logAndroidError(String message, Throwable throwable) {
        if (throwable != null) {
            Log.e(MA_LOG_TAG, message, throwable);
        } else {
            Log.e(MA_LOG_TAG, message);
        }
    }
}
