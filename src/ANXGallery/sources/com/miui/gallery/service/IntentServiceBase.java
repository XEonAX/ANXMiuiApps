package com.miui.gallery.service;

import android.app.IntentService;
import android.app.Notification;
import android.content.Intent;
import com.miui.gallery.util.Log;

public abstract class IntentServiceBase extends IntentService {
    protected static String TAG = "ServiceBase";
    protected boolean mHasForeground;

    protected abstract Notification getNotification();

    protected abstract int getNotificationId();

    public IntentServiceBase() {
        super(TAG);
    }

    protected void onHandleIntent(Intent intent) {
        if (intent != null && intent.getBooleanExtra("is_start_foreground_service", false)) {
            startForegroundInternal();
        }
    }

    public void onTrimMemory(int level) {
        super.onTrimMemory(level);
        if (level == 20 && !this.mHasForeground) {
            startForegroundInternal();
        }
    }

    private void startForegroundInternal() {
        Log.i(TAG, "start foreground service");
        this.mHasForeground = true;
        startForeground(getNotificationId(), getNotification());
    }
}
