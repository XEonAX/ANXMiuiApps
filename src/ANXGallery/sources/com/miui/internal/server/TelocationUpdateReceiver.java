package com.miui.internal.server;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import miui.telephony.phonenumber.ChineseTelocationConverter;

public class TelocationUpdateReceiver extends BroadcastReceiver {
    private static final String SERVICE_NAME = "com.miui.telocation";
    private static final String TAG = "TelocationUpdateReceiver";

    public void onReceive(Context context, Intent intent) {
        onReceiveIntent(context, intent);
    }

    public static void onReceiveIntent(Context context, Intent intent) {
        String action = intent.getAction();
        if (DataUpdateManager.DATA_UPDATE_RECEIVE.equals(action)) {
            long longExtra = intent.getLongExtra("water_mark", 0);
            String string = intent.getExtras().getString(DataUpdateManager.EXTRA_SERVICE_NAME);
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("current water mark is ");
            stringBuilder.append(longExtra);
            stringBuilder.append(", service: ");
            stringBuilder.append(string);
            Log.d(str, stringBuilder.toString());
            if (SERVICE_NAME.equals(string) && longExtra != ((long) ChineseTelocationConverter.getInstance().getVersion())) {
                intent = new Intent(TelocationUpdateService.ACTION_UPDATE_TELOCATION);
                intent.setClass(context, TelocationUpdateService.class);
                context.startService(intent);
            }
        } else if ("android.intent.action.DOWNLOAD_COMPLETE".equals(action)) {
            Log.d(TAG, "telocation download completed.");
            Intent intent2 = new Intent(TelocationUpdateService.ACTION_TELOCATION_DOWNLOAD_COMPLETED);
            Bundle extras = intent.getExtras();
            if (extras != null) {
                intent2.putExtras(extras);
            }
            intent2.setClass(context, TelocationUpdateService.class);
            context.startService(intent2);
        }
    }
}
