package com.miui.gallery.util;

import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.PowerManager;

public class BackgroundServiceHelper {
    public static void startForegroundServiceIfNeed(Context context, Intent intent) {
        if (VERSION.SDK_INT < 26 || MiscUtil.isAppProcessInForeground(context) || ((PowerManager) context.getSystemService(PowerManager.class)).isIgnoringBatteryOptimizations(context.getPackageName())) {
            context.startService(intent);
            return;
        }
        intent.putExtra("is_start_foreground_service", true);
        context.startForegroundService(intent);
    }
}
