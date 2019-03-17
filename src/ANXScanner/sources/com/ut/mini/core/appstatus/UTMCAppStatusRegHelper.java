package com.ut.mini.core.appstatus;

import android.annotation.TargetApi;
import android.app.Application;

public class UTMCAppStatusRegHelper {
    @TargetApi(14)
    public static void registerAppStatusCallbacks(UTMCAppStatusCallbacks aCallbacks) {
        if (aCallbacks != null) {
            UTMCAppStatusMonitor.getInstance().registerAppStatusCallbacks(aCallbacks);
        }
    }

    @TargetApi(14)
    public static void unRegisterAppStatusCallbacks(UTMCAppStatusCallbacks aCallbacks) {
        if (aCallbacks != null) {
            UTMCAppStatusMonitor.getInstance().unregisterAppStatusCallbacks(aCallbacks);
        }
    }

    @TargetApi(14)
    public static void registeActivityLifecycleCallbacks(Application aApplicationInstance) {
        if (aApplicationInstance != null) {
            aApplicationInstance.registerActivityLifecycleCallbacks(UTMCAppStatusMonitor.getInstance());
        }
    }

    @TargetApi(14)
    public static void unregisterActivityLifecycleCallbacks(Application aApplicationInstance) {
        if (aApplicationInstance != null) {
            aApplicationInstance.unregisterActivityLifecycleCallbacks(UTMCAppStatusMonitor.getInstance());
        }
    }
}
