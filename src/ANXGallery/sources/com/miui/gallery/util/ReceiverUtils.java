package com.miui.gallery.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.text.TextUtils;

public class ReceiverUtils {
    public static boolean safeUnregisterReceiver(Context context, BroadcastReceiver receiver) {
        if (!(context == null || receiver == null)) {
            try {
                context.unregisterReceiver(receiver);
                return true;
            } catch (Exception e) {
                Log.e("ReceiverUtils", "fail to unregister receiver: " + receiver + e.toString());
            }
        }
        return false;
    }

    public static void registerReceiver(Context context, BroadcastReceiver receiver, String... actions) {
        registerReceiver(context, receiver, 0, null, actions);
    }

    public static void registerReceiver(Context context, BroadcastReceiver receiver, int priority, String dataScheme, String... actions) {
        if (receiver != null && actions != null && actions.length > 0) {
            IntentFilter filter = new IntentFilter();
            filter.setPriority(priority);
            if (!TextUtils.isEmpty(dataScheme)) {
                filter.addDataScheme(dataScheme);
            }
            for (String action : actions) {
                filter.addAction(action);
            }
            context.registerReceiver(receiver, filter);
        }
    }
}
