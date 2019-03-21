package com.miui.gallery.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;

public class VoiceAssistantReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("com.miui.gallery.action.VOICE_ASSISTANT_SHARE".equals(action)) {
            LocalBroadcastManager.getInstance(context).sendBroadcast(intent);
        } else if ("com.miui.gallery.action.VOICE_ASSISTANT_SELECT_SHARE".equals(action)) {
            LocalBroadcastManager.getInstance(context).sendBroadcast(intent);
        }
    }
}
