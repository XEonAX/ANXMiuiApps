package com.xiaomi.channel.commonutils.misc;

import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.xiaomi.channel.commonutils.logger.MyLog;

public class MobileStatusUtils {
    public static boolean isScreenLocked(Context context) {
        try {
            return ((KeyguardManager) context.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
        } catch (Throwable e) {
            MyLog.e(e);
            return false;
        }
    }

    public static boolean isCharging(Context context) {
        Intent batteryStatus = null;
        try {
            batteryStatus = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        } catch (Exception e) {
        }
        if (batteryStatus == null) {
            return false;
        }
        int status = batteryStatus.getIntExtra("status", -1);
        if (status == 2 || status == 5) {
            return true;
        }
        return false;
    }
}
