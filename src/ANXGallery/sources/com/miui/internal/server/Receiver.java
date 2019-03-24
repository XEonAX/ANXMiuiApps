package com.miui.internal.server;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class Receiver extends BroadcastReceiver {
    public static boolean isActionEquals(Intent intent, String str) {
        return intent != null && str.equals(intent.getAction());
    }

    public void onReceive(Context context, Intent intent) {
        DropBoxManagerService.onReceive(context, intent);
        AssetsExtractReceiver.onReceive(context, intent);
        TelocationUpdateReceiver.onReceiveIntent(context, intent);
    }
}
