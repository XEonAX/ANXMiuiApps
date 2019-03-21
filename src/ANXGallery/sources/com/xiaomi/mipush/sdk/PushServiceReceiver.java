package com.xiaomi.mipush.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class PushServiceReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        Intent serviceIntent = new Intent(context, PushMessageHandler.class);
        serviceIntent.putExtras(intent);
        serviceIntent.setAction(intent.getAction());
        PushMessageHandler.addJob(context, serviceIntent);
    }
}
