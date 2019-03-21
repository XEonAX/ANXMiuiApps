package com.xiaomi.channel.commonutils.android;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

public class SharedPreferenceManager {
    private static volatile SharedPreferenceManager sInstance;
    private Map<String, Map<String, String>> mCaches = new HashMap();
    private Context mContext;
    private Handler mHandler = new Handler(Looper.getMainLooper());

    private SharedPreferenceManager(Context context) {
        this.mContext = context;
    }

    public static SharedPreferenceManager getInstance(Context context) {
        if (sInstance == null) {
            synchronized (SharedPreferenceManager.class) {
                if (sInstance == null) {
                    sInstance = new SharedPreferenceManager(context);
                }
            }
        }
        return sInstance;
    }

    private synchronized void putData2Cache(String file, String key, String value) {
        if (this.mCaches == null) {
            this.mCaches = new HashMap();
        }
        Map<String, String> cache = (Map) this.mCaches.get(file);
        if (cache == null) {
            cache = new HashMap();
        }
        cache.put(key, value);
        this.mCaches.put(file, cache);
    }

    public synchronized void setStringnValue(final String file, final String key, final String value) {
        putData2Cache(file, key, value);
        this.mHandler.post(new Runnable() {
            public void run() {
                Editor editor = SharedPreferenceManager.this.mContext.getSharedPreferences(file, 4).edit();
                editor.putString(key, value);
                editor.commit();
            }
        });
    }

    private synchronized String getDataFromCache(String file, String key) {
        String str;
        if (this.mCaches == null || TextUtils.isEmpty(file) || TextUtils.isEmpty(key)) {
            str = "";
        } else {
            try {
                Map<String, String> cache = (Map) this.mCaches.get(file);
                if (cache != null) {
                    str = (String) cache.get(key);
                } else {
                    str = "";
                }
            } catch (Throwable th) {
                str = "";
            }
        }
        return str;
    }

    public synchronized String getStringValue(String file, String key, String defaultValue) {
        String cachedValue;
        cachedValue = getDataFromCache(file, key);
        if (TextUtils.isEmpty(cachedValue)) {
            cachedValue = this.mContext.getSharedPreferences(file, 4).getString(key, defaultValue);
        }
        return cachedValue;
    }
}
