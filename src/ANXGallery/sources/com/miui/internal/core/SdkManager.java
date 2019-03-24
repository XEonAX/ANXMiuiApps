package com.miui.internal.core;

import android.app.Application;
import java.util.Map;

public class SdkManager {
    private SdkManager() {
    }

    public static int initialize(Application application, Map<String, Object> map) {
        return miui.core.SdkManager.initialize(application, map);
    }

    public static int start(Map<String, Object> map) {
        return miui.core.SdkManager.start(map);
    }

    public static boolean supportUpdate(Map<String, Object> map) {
        return miui.core.SdkManager.supportUpdate(map);
    }

    public static boolean update(Map<String, Object> map) {
        return miui.core.SdkManager.update(map);
    }
}
