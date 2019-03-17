package com.android.ex.camera2.portability.util;

import com.android.ex.camera2.portability.debug.Log;
import com.android.ex.camera2.portability.debug.Log.Tag;

public final class SystemProperties {
    private static final Tag TAG = new Tag("SysProps");

    public static String get(String key, String defaultValue) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", new Class[]{String.class, String.class}).invoke(null, new Object[]{key, defaultValue});
        } catch (Exception e) {
            Log.e(TAG, "Exception while getting system property: ", e);
            return defaultValue;
        }
    }

    private SystemProperties() {
    }
}
