package com.miui.internal.server;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.miui.internal.util.DirectIndexedFileExtractor;

public class AssetsExtractReceiver {
    private static final String TAG = "AssetsExtractReceiver";

    public static void onReceive(Context context, Intent intent) {
        if ("android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
            Log.i(TAG, "receive boot_completed broadcast");
            DirectIndexedFileExtractor.tryExtractDirectIndexedFiles(context);
        }
    }
}
