package com.xiaomi.analytics.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import com.xiaomi.analytics.internal.util.ALog;
import com.xiaomi.analytics.internal.util.AndroidUtils;

public class Debugger {
    private static final String INTENT_DEBUG_OFF = "com.xiaomi.analytics.intent.DEBUG_OFF";
    private static final String INTENT_DEBUG_ON = "com.xiaomi.analytics.intent.DEBUG_ON";
    private static final String INTENT_STAGING_OFF = "com.xiaomi.analytics.intent.STAGING_OFF";
    private static final String INTENT_STAGING_ON = "com.xiaomi.analytics.intent.STAGING_ON";
    private static final String TAG = "Debugger";
    private static volatile Debugger sInstance;
    public static boolean sUseStaging = false;
    private Context mContext;
    private BroadcastReceiver mDebugReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                String action = intent.getAction();
                Log.d(ALog.addPrefix(Debugger.TAG), "action = " + action);
                if (Debugger.INTENT_DEBUG_ON.equals(action)) {
                    ALog.sEnable = true;
                } else if (Debugger.INTENT_DEBUG_OFF.equals(action)) {
                    ALog.sEnable = false;
                } else if (Debugger.INTENT_STAGING_ON.equals(action)) {
                    Debugger.sUseStaging = true;
                } else if (Debugger.INTENT_STAGING_OFF.equals(action)) {
                    Debugger.sUseStaging = false;
                }
            }
        }
    };
    private volatile boolean mIsRegistered = false;

    private Debugger(Context context) {
        this.mContext = AndroidUtils.getApplicationContext(context);
    }

    public static synchronized Debugger getDebugger(Context context) {
        Debugger debugger;
        synchronized (Debugger.class) {
            if (sInstance == null) {
                sInstance = new Debugger(context);
            }
            debugger = sInstance;
        }
        return debugger;
    }

    public void register() {
        if (!this.mIsRegistered) {
            this.mIsRegistered = true;
            IntentFilter filter = new IntentFilter();
            filter.addAction(INTENT_DEBUG_ON);
            filter.addAction(INTENT_DEBUG_OFF);
            filter.addAction(INTENT_STAGING_ON);
            filter.addAction(INTENT_STAGING_OFF);
            this.mContext.registerReceiver(this.mDebugReceiver, filter);
        }
    }

    public void unregister() {
        this.mContext.unregisterReceiver(this.mDebugReceiver);
        this.mIsRegistered = false;
    }
}
