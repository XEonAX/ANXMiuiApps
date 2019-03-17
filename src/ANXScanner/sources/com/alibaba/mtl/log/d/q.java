package com.alibaba.mtl.log.d;

import android.util.Log;

/* compiled from: SystemProperties */
public class q {
    private static final String TAG = q.class.getSimpleName();

    public static String get(String key) {
        String str = "";
        try {
            Class cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", new Class[]{String.class}).invoke(cls.newInstance(), new Object[]{key});
        } catch (Throwable e) {
            Log.e(TAG, "get() ERROR!!! Exception!", e);
            return str;
        }
    }

    public static String get(String key, String defaultValue) {
        String str = "";
        try {
            Class cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", new Class[]{String.class, String.class}).invoke(cls.newInstance(), new Object[]{key, defaultValue});
        } catch (Throwable e) {
            Log.e(TAG, "get() ERROR!!! Exception!", e);
            return str;
        }
    }
}
