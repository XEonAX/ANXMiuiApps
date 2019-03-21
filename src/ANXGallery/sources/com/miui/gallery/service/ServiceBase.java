package com.miui.gallery.service;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.miui.gallery.util.Log;

public abstract class ServiceBase extends Service {
    protected static String TAG = "ServiceBase";
    protected boolean mHasForeground;

    protected abstract Notification getNotification();

    protected abstract int getNotificationId();

    public int onStartCommand(Intent intent, int flags, int startId) {
        if (intent != null && intent.getBooleanExtra("is_start_foreground_service", false)) {
            startForegroundInternal();
        }
        return 2;
    }

    public void onTrimMemory(int level) {
        super.onTrimMemory(level);
        if (level == 20 && !this.mHasForeground) {
            startForegroundInternal();
        }
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    private void startForegroundInternal() {
        Log.i(TAG, "start foreground service");
        this.mHasForeground = true;
        startForeground(getNotificationId(), getNotification());
    }
}
