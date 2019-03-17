package com.uploader.portal;

import android.util.Log;
import com.taobao.tlog.adapter.AdapterForTLog;
import com.uploader.export.IUploaderLog;
import com.xiaomi.scanner.camera.exif.ExifInterface.GpsLongitudeRef;
import com.xiaomi.scanner.camera.exif.ExifInterface.GpsStatus;
import java.util.HashMap;
import java.util.Map;

public class UploaderLogImpl implements IUploaderLog {
    private static Map<String, Integer> levelMap = new HashMap(6);
    private volatile boolean enableTLog = true;
    private volatile int priority = 31;

    static {
        levelMap.put(GpsStatus.INTEROPERABILITY, Integer.valueOf(31));
        levelMap.put("D", Integer.valueOf(30));
        levelMap.put("I", Integer.valueOf(28));
        levelMap.put(GpsLongitudeRef.WEST, Integer.valueOf(24));
        levelMap.put(GpsLongitudeRef.EAST, Integer.valueOf(16));
        levelMap.put("L", Integer.valueOf(0));
    }

    public void enable(int priority) {
        this.priority = priority;
    }

    public boolean isEnabled(int priority) {
        if (this.enableTLog) {
            return isTLogLevelEnable(priority);
        }
        return (this.priority & priority) != 0;
    }

    public int print(int priority, String tag, String msg, Throwable t) {
        switch (priority) {
            case 1:
                if (!this.enableTLog) {
                    return Log.v(tag, msg);
                }
                AdapterForTLog.logv(tag, msg);
                return 0;
            case 2:
                if (!this.enableTLog) {
                    return Log.d(tag, msg);
                }
                AdapterForTLog.logd(tag, msg);
                return 0;
            case 4:
                if (!this.enableTLog) {
                    return Log.i(tag, msg);
                }
                AdapterForTLog.logi(tag, msg);
                return 0;
            case 8:
                if (!this.enableTLog) {
                    return Log.w(tag, msg, t);
                }
                AdapterForTLog.logw(tag, msg, t);
                return 0;
            case 16:
                if (!this.enableTLog) {
                    return Log.e(tag, msg, t);
                }
                AdapterForTLog.loge(tag, msg, t);
                return 0;
            default:
                return 0;
        }
    }

    public void setEnableTLog(boolean enableTLog) {
        this.enableTLog = enableTLog;
    }

    public int v(String tag, String msg) {
        return print(1, tag, msg, null);
    }

    public int d(String tag, String msg) {
        return print(2, tag, msg, null);
    }

    public int i(String tag, String msg) {
        return print(4, tag, msg, null);
    }

    public int w(String tag, String msg) {
        return print(8, tag, msg, null);
    }

    public int e(String tag, String msg) {
        return print(16, tag, msg, null);
    }

    public int w(String tag, String msg, Throwable t) {
        return print(8, tag, msg, t);
    }

    public int e(String tag, String msg, Throwable t) {
        return print(16, tag, msg, t);
    }

    private boolean isTLogLevelEnable(int priority) {
        int tlogLevel = ((Integer) levelMap.get(AdapterForTLog.getLogLevel())).intValue();
        if (tlogLevel != this.priority) {
            this.priority = tlogLevel;
        }
        return (this.priority & priority) != 0;
    }
}
