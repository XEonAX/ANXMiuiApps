package com.xiaomi.push.mpcd.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.xiaomi.push.mpcd.IntentHandler;

public class BroadcastActionsReceiver extends BroadcastReceiver {
    private IntentHandler mHandler;

    public BroadcastActionsReceiver(IntentHandler handler) {
        this.mHandler = handler;
    }

    public void onReceive(Context context, Intent intent) {
        if (this.mHandler != null) {
            this.mHandler.handle(context, intent);
        }
    }
}
