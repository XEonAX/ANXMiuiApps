package com.xiaomi.scanner.util;

import android.app.KeyguardManager;
import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.WindowManager;
import com.xiaomi.scanner.app.ScannerApp;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;

public class AndroidServices {
    private static final boolean LOG_ALL_REQUESTS = false;
    private static final int LOG_THRESHOLD_MILLIS = 10;
    private static Tag TAG = new Tag("AndroidServices");
    private final Context mContext;

    private static class Singleton {
        private static final AndroidServices INSTANCE = new AndroidServices(ScannerApp.getAndroidContext());

        private Singleton() {
        }
    }

    public static AndroidServices instance() {
        return Singleton.INSTANCE;
    }

    private AndroidServices(Context context) {
        this.mContext = context;
    }

    public DevicePolicyManager provideDevicePolicyManager() {
        return (DevicePolicyManager) getSystemService("device_policy");
    }

    public WindowManager provideWindowManager() {
        return (WindowManager) getSystemService("window");
    }

    public KeyguardManager provideKeyguardManager() {
        return (KeyguardManager) getSystemService("keyguard");
    }

    public PackageManager providePackageManager() {
        return this.mContext.getPackageManager();
    }

    private Object getSystemService(String service) {
        try {
            long start = System.currentTimeMillis();
            Object result = this.mContext.getSystemService(service);
            long duration = System.currentTimeMillis() - start;
            if (duration <= 10) {
                return result;
            }
            Log.w(TAG, "Warning: providing system service " + service + " took " + duration + "ms");
            return result;
        } catch (Exception e) {
            return null;
        }
    }
}
