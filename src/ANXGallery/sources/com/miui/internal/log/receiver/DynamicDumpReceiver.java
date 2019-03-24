package com.miui.internal.log.receiver;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import java.util.List;

public class DynamicDumpReceiver extends DumpReceiver {
    private static final String TAG = "DynamicDumpReceiver";
    private static final Object hp = new Object();
    private static volatile boolean hq;
    private static boolean hr;

    public DynamicDumpReceiver(String str, String str2) {
        super(str, str2);
    }

    public void onReceive(Context context, Intent intent) {
        if (!hr) {
            if (g(context)) {
                Log.i(TAG, "Dynamic receiver removed");
                context.unregisterReceiver(this);
                return;
            }
            hr = true;
        }
        super.onReceive(context, intent);
    }

    public boolean register(Context context) {
        if (!hq) {
            synchronized (hp) {
                if (!hq) {
                    context.registerReceiver(this, new IntentFilter(DumpReceiver.INTENT_ACTION_DUMP_CACHED_LOG), "miui.permission.DUMP_CACHED_LOG", null);
                    hq = true;
                    Log.i(TAG, "Dynamic receiver registered");
                    return true;
                }
            }
        }
        return false;
    }

    private boolean g(Context context) {
        Intent intent = new Intent(DumpReceiver.INTENT_ACTION_DUMP_CACHED_LOG);
        intent.setPackage(context.getPackageName());
        List queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (queryBroadcastReceivers == null || queryBroadcastReceivers.isEmpty()) {
            return false;
        }
        return true;
    }
}
