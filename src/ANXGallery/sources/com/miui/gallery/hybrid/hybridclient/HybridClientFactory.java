package com.miui.gallery.hybrid.hybridclient;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.miui.gallery.util.Log;

public class HybridClientFactory {
    public static HybridClient createHybridClient(Context context, Intent intent) {
        if (context == null || intent == null) {
            return null;
        }
        String action = intent.getAction();
        if ("android.intent.action.VIEW".equals(action)) {
            String url = intent.getData().getQueryParameter("url");
            if (TextUtils.isEmpty(url)) {
                url = intent.getDataString();
            }
            return new GalleryHybridClient(context, url);
        } else if ("com.miui.gallery.action.VIEW_WEB".equals(action)) {
            return new GalleryHybridClient(context, intent.getStringExtra("url"));
        } else {
            if ("com.miui.gallery.action.VIEW_WEB_DEVICE_ID".equals(action)) {
                return new DeviceIdHybridClient(context, intent.getStringExtra("url"));
            }
            if ("com.miui.gallery.action.VIEW_WEB_LOGIN".equals(action)) {
                return new LoginHybridClient(context, intent.getStringExtra("url"));
            }
            if ("com.miui.gallery.action.VIEW_WEB_OPERATION_STORY".equals(action)) {
                return new OperationHybridClient(context, intent.getStringExtra("url"));
            }
            Log.e("HybridClientFactory", "Not supported action " + action);
            return null;
        }
    }
}
