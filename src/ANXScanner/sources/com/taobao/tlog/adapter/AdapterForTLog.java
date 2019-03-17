package com.taobao.tlog.adapter;

import android.text.TextUtils;
import com.taobao.tao.log.ITLogController;
import com.taobao.tao.log.LogLevel;
import com.taobao.tao.log.TLog;
import com.taobao.tao.log.TLogInitializer;

public class AdapterForTLog {
    private static boolean isValid;

    static {
        isValid = false;
        try {
            Class.forName("com.taobao.tao.log.TLog");
            isValid = true;
        } catch (ClassNotFoundException e) {
            isValid = false;
        }
    }

    public static boolean isValid() {
        return isValid;
    }

    public static void formatLogv(String tag, String format, Object... args) {
        if (isValid) {
            TLog.formatLogv(tag, format, args);
        }
    }

    public static void formatLogd(String tag, String format, Object... args) {
        if (isValid) {
            TLog.formatLogd(tag, format, args);
        }
    }

    public static void formatLogi(String tag, String format, Object... args) {
        if (isValid) {
            TLog.formatLogi(tag, format, args);
        }
    }

    public static void formatLogw(String tag, String format, Object... args) {
        if (isValid) {
            TLog.formatLogw(tag, format, args);
        }
    }

    public static void formatLoge(String tag, String format, Object... args) {
        if (isValid) {
            TLog.formatLoge(tag, format, args);
        }
    }

    public static void logv(String tag, String... content) {
        if (isValid) {
            TLog.logv(tag, content);
        }
    }

    public static void logd(String tag, String... content) {
        if (isValid) {
            TLog.logd(tag, content);
        }
    }

    public static void logi(String tag, String... content) {
        if (isValid) {
            TLog.logi(tag, content);
        }
    }

    public static void logw(String tag, String... content) {
        if (isValid) {
            TLog.logw(tag, content);
        }
    }

    public static void loge(String tag, String... content) {
        if (isValid) {
            TLog.loge(tag, content);
        }
    }

    public static void logv(String tag, String content) {
        if (isValid) {
            TLog.logv(tag, content);
        }
    }

    public static void logd(String tag, String content) {
        if (isValid) {
            TLog.logd(tag, content);
        }
    }

    public static void logi(String tag, String content) {
        if (isValid) {
            TLog.logi(tag, content);
        }
    }

    public static void logw(String tag, String content) {
        if (isValid) {
            TLog.logw(tag, content);
        }
    }

    public static void loge(String tag, String content) {
        if (isValid) {
            TLog.loge(tag, content);
        }
    }

    public static void logw(String tag, String content, Throwable throwable) {
        if (isValid) {
            TLog.logw(tag, content, throwable);
        }
    }

    public static void loge(String tag, String content, Throwable throwable) {
        if (isValid) {
            TLog.loge(tag, content, throwable);
        }
    }

    public static void traceLog(String clientTraceId, String serverTraceId) {
        if (isValid && !TextUtils.isEmpty(clientTraceId) && !TextUtils.isEmpty(serverTraceId)) {
            TLog.traceLog(clientTraceId, serverTraceId);
        }
    }

    public static void userOptionLog(String module, String option, String target, String extData) {
        if (isValid && !TextUtils.isEmpty(module) && !TextUtils.isEmpty(option)) {
            TLog.userOptionLog(module, option, target, extData);
        }
    }

    public static void logicErrorLog(String module, String errCode, String extData) {
        if (isValid && !TextUtils.isEmpty(module) && !TextUtils.isEmpty(errCode)) {
            TLog.logicErrorLog(module, errCode, extData);
        }
    }

    public static void sceneLog(String module, String content, String extData) {
        if (isValid && !TextUtils.isEmpty(module) && !TextUtils.isEmpty(content)) {
            TLog.sceneLog(module, content, extData);
        }
    }

    public static String getLogLevel(String module) {
        if (!isValid) {
            return "L";
        }
        ITLogController controller = TLogInitializer.getTLogControler();
        if (controller == null) {
            return LogLevel.L.toString();
        }
        LogLevel level = controller.getLogLevel(module);
        if (level != null) {
            return level.toString();
        }
        return LogLevel.L.toString();
    }

    public static String getLogLevel() {
        return getLogLevel(null);
    }
}
