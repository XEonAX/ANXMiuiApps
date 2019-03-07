package com.miui.screenrecorder.tools;

import android.content.Context;
import com.xiaomi.stat.MiStat;
import com.xiaomi.stat.MiStatParams;
import miui.os.Build;

public class MiStatInterfaceUtils {
    private static final String APP_ID = "2882303761517546984";
    private static final String APP_KEY = "5881754667984";

    public static final void init(Context appContext) {
        MiStat.initialize(appContext, APP_ID, APP_KEY, false, Build.MODEL);
        MiStat.setUseSystemUploadingService(true);
        MiStat.setUploadNetworkType(8);
        MiStat.setExceptionCatcherEnabled(true);
    }

    public static final void trackEvent(String eventGroup, String eventName) {
        if (!ScreenRecorderUtils.isMonkeyMode && !RegionUtils.isInEURegion()) {
            MiStat.trackEvent(eventName, eventGroup);
        }
    }

    public static final void trackEvent(String eventGroup, String eventName, MiStatParams params) {
        if (!ScreenRecorderUtils.isMonkeyMode && !RegionUtils.isInEURegion()) {
            if (params.isEmpty()) {
                MiStat.trackEvent(eventName, eventGroup);
            } else {
                MiStat.trackEvent(eventName, eventGroup, params);
            }
        }
    }

    public static final void recordPageStart(String pageName) {
        if (!ScreenRecorderUtils.isMonkeyMode && !RegionUtils.isInEURegion()) {
            MiStat.trackPageStart(pageName);
        }
    }

    public static final void recordPageEnd(String pageName) {
        if (!ScreenRecorderUtils.isMonkeyMode && !RegionUtils.isInEURegion()) {
            MiStat.trackPageEnd(pageName);
        }
    }
}
