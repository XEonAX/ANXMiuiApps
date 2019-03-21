package com.xiaomi.clientreport.util;

import android.content.Context;
import android.content.SharedPreferences.Editor;

public class SPManager {
    private static volatile SPManager sInstance;
    private Context mContext;

    private SPManager(Context context) {
        this.mContext = context;
    }

    public static SPManager getInstance(Context context) {
        if (sInstance == null) {
            synchronized (SPManager.class) {
                if (sInstance == null) {
                    sInstance = new SPManager(context);
                }
            }
        }
        return sInstance;
    }

    public synchronized void setStringnValue(String file, String key, String value) {
        Editor editor = this.mContext.getSharedPreferences(file, 4).edit();
        editor.putString(key, value);
        editor.commit();
    }

    public synchronized void setLongValue(String file, String key, long value) {
        Editor editor = this.mContext.getSharedPreferences(file, 4).edit();
        editor.putLong(key, value);
        editor.commit();
    }

    public synchronized String getStringValue(String file, String key, String defaultValue) {
        try {
            defaultValue = this.mContext.getSharedPreferences(file, 4).getString(key, defaultValue);
        } catch (Throwable th) {
        }
        return defaultValue;
    }

    public synchronized long getLongValue(String file, String key, long defaultValue) {
        try {
            defaultValue = this.mContext.getSharedPreferences(file, 4).getLong(key, defaultValue);
        } catch (Throwable th) {
        }
        return defaultValue;
    }
}
