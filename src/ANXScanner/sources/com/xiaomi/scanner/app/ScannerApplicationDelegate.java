package com.xiaomi.scanner.app;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Bundle;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.util.AppUtil;
import com.xiaomi.scanner.util.CameraUtil;
import com.xiaomi.scanner.util.ScannerThreadPool;
import com.xiaomi.scanner.util.Util;
import miui.external.ApplicationDelegate;

public class ScannerApplicationDelegate extends ApplicationDelegate implements ActivityLifecycleCallbacks {
    private static final Tag TAG = new Tag("AppDelegate");
    private static ScannerApp sContext;

    public ScannerApplicationDelegate(ScannerApp app) {
        sContext = app;
    }

    public void onCreate() {
        super.onCreate();
        preExcuteWork();
        registerActivityLifecycleCallbacks(this);
    }

    private void preExcuteWork() {
        ScannerThreadPool.poolExecute(new Runnable() {
            public void run() {
                UsageStatistics.initialize(ScannerApplicationDelegate.sContext);
                Util.initialize(ScannerApplicationDelegate.sContext);
                AppUtil.checkDeviceHasNavigationBar();
                CameraUtil.getDefaultDisplaySize();
            }
        });
    }

    public static Context getAndroidContext() {
        return sContext;
    }

    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
        Log.d(TAG, "onActivityCreated " + activity);
    }

    public void onActivityStarted(Activity activity) {
        Log.d(TAG, "onActivityStarted " + activity);
    }

    public void onActivityResumed(Activity activity) {
        Log.d(TAG, "onActivityResumed " + activity);
    }

    public void onActivityPaused(Activity activity) {
        Log.d(TAG, "onActivityPaused " + activity);
    }

    public void onActivityStopped(Activity activity) {
        Log.d(TAG, "onActivityStopped " + activity);
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Log.d(TAG, "onActivitySaveInstanceState " + activity);
    }

    public void onActivityDestroyed(Activity activity) {
        Log.d(TAG, "onActivityDestroyed " + activity);
    }
}
