package com.xiaomi.analytics;

import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.analytics.internal.util.ALog;
import java.util.concurrent.ConcurrentHashMap;

class LoggerFactory<T extends BaseLogger> {
    private static final String TAG = "LoggerFactory";
    public ConcurrentHashMap<String, T> mMap = new ConcurrentHashMap();

    public T getLogger(Class<T> clazz, String configKey) {
        if (TextUtils.isEmpty(configKey) || clazz == null) {
            throw new IllegalArgumentException("Clazz is null or configKey is empty. configKey:" + configKey);
        }
        T t = (BaseLogger) this.mMap.get(configKey);
        if (t != null) {
            return t;
        }
        try {
            t = (BaseLogger) clazz.getDeclaredConstructor(new Class[]{String.class}).newInstance(new Object[]{configKey});
            this.mMap.put(configKey, t);
            return t;
        } catch (Exception e) {
            Log.e(ALog.addPrefix(TAG), "getLogger e", e);
            throw new IllegalStateException("Can not instantiate logger. configKey:" + configKey);
        }
    }
}
