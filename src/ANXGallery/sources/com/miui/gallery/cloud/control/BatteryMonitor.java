package com.miui.gallery.cloud.control;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ReceiverUtils;

public class BatteryMonitor {
    private int mCount;
    private BroadcastReceiver mPowerIntentReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                Sync.setPowerCanSync(BatteryMonitor.isPowerCanSync(context, intent));
            }
        }
    };

    public static class Holder {
        private static final BatteryMonitor sInstance = new BatteryMonitor();
    }

    public static BatteryMonitor getInstance() {
        return Holder.sInstance;
    }

    public static boolean isPowerCanSync(Context context, Intent intent) {
        boolean isCharging;
        int status = intent.getIntExtra("status", -1);
        if (status == 2 || status == 5) {
            isCharging = true;
        } else {
            isCharging = false;
        }
        Log.d("BatteryMonitor", "ACTION_BATTERY_CHANGED, plugged:" + isCharging);
        if (context != null) {
            if (isCharging) {
                Sync.setIsPlugged(true);
                Log.d("BatteryMonitor", "power is connected");
            } else {
                Sync.setIsPlugged(false);
                Log.d("BatteryMonitor", "power disconnected");
            }
        }
        if (isCharging) {
            return true;
        }
        int level = intent.getIntExtra("level", 0);
        int powerRemaining = (level * 100) / intent.getIntExtra("scale", 100);
        Log.d("BatteryMonitor", "ACTION_BATTERY_CHANGED, power remaining:" + powerRemaining);
        if (powerRemaining > 20) {
            return true;
        }
        return false;
    }

    public synchronized void start() {
        if (this.mCount == 0) {
            GalleryApp.sGetAndroidContext().registerReceiver(this.mPowerIntentReceiver, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        }
        this.mCount++;
    }

    public synchronized void end() {
        this.mCount--;
        if (this.mCount == 0) {
            ReceiverUtils.safeUnregisterReceiver(GalleryApp.sGetAndroidContext(), this.mPowerIntentReceiver);
        }
    }
}
