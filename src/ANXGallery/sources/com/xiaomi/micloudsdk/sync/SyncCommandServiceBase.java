package com.xiaomi.micloudsdk.sync;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;

public abstract class SyncCommandServiceBase extends IntentService {
    private static Map<String, String> mPackageNameMap = new HashMap();

    public abstract void handleCommand(String str);

    static {
        mPackageNameMap.put("com.miui.gallery.cloud.provider", "com.miui.gallery");
    }

    public static void sendCommandService(Context context, String authority, String command) {
        if (context == null || TextUtils.isEmpty(authority) || TextUtils.isEmpty(command)) {
            Log.e("SyncCommandServiceBase", "illegal arguments");
        } else if (mPackageNameMap.containsKey(authority)) {
            Intent intent = new Intent("com.xiaomi.micloud.action.SYNC_COMMAND");
            intent.setPackage((String) mPackageNameMap.get(authority));
            intent.putExtra("key_command", command);
            context.startService(intent);
        } else {
            Log.e("SyncCommandServiceBase", "authority does not have target package name");
        }
    }

    public SyncCommandServiceBase() {
        super("SyncCommandServiceBase");
    }

    protected void onHandleIntent(Intent intent) {
        if (intent == null || !"com.xiaomi.micloud.action.SYNC_COMMAND".equals(intent.getAction())) {
            Log.e("SyncCommandServiceBase", "illegal arguments");
        } else {
            handleCommand(intent.getStringExtra("key_command"));
        }
    }
}
