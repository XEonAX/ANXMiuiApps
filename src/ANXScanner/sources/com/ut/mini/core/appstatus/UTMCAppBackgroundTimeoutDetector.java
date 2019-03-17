package com.ut.mini.core.appstatus;

import android.app.Activity;
import android.os.Bundle;
import android.os.SystemClock;
import com.alibaba.mtl.log.c;
import java.util.HashMap;

public class UTMCAppBackgroundTimeoutDetector implements UTMCAppStatusCallbacks {
    private static UTMCAppBackgroundTimeoutDetector a = null;
    private long B = 0;

    private UTMCAppBackgroundTimeoutDetector() {
    }

    public static synchronized UTMCAppBackgroundTimeoutDetector getInstance() {
        UTMCAppBackgroundTimeoutDetector uTMCAppBackgroundTimeoutDetector;
        synchronized (UTMCAppBackgroundTimeoutDetector.class) {
            if (a == null) {
                a = new UTMCAppBackgroundTimeoutDetector();
            }
            uTMCAppBackgroundTimeoutDetector = a;
        }
        return uTMCAppBackgroundTimeoutDetector;
    }

    public void onSwitchBackground() {
        this.B = SystemClock.elapsedRealtime();
    }

    public void onSwitchForeground() {
        if (0 != this.B && SystemClock.elapsedRealtime() - this.B > 30000) {
            c.a().c(new HashMap());
        }
        this.B = 0;
    }

    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
    }

    public void onActivityDestroyed(Activity activity) {
    }

    public void onActivityPaused(Activity activity) {
    }

    public void onActivityResumed(Activity activity) {
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
    }

    public void onActivityStarted(Activity activity) {
    }

    public void onActivityStopped(Activity activity) {
    }
}
