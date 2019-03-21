package com.android.internal;

import android.os.SystemProperties;

public class SystemPropertiesCompat {
    public static String get(String key, String def) {
        try {
            return SystemProperties.get(key, def);
        } catch (Throwable t) {
            t.printStackTrace();
            return def;
        }
    }

    public static int getInt(String key, int def) {
        try {
            return SystemProperties.getInt(key, def);
        } catch (Throwable t) {
            t.printStackTrace();
            return def;
        }
    }
}
