package com.miui.internal.server;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.media.ExtraRingtoneManager;
import android.util.Log;

public class UpdaterReceiver extends BroadcastReceiver {
    private static final String ACTION_UPDATE_SUCCESSED = "com.android.updater.action.UPDATE_SUCCESSED";
    private static final String TAG = "MiuiSystemSdk.UpdaterReceiver";

    public void onReceive(Context context, Intent intent) {
        if (ACTION_UPDATE_SUCCESSED.equals(intent.getAction())) {
            Log.d(TAG, "UpdaterReceiver, OTA update successed, try updateDefaultTone");
            ExtraRingtoneManager.updateDefaultToneForX(context);
        }
    }
}
