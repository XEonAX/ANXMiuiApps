package com.miui.gallery.video.editor.util;

import android.content.Intent;
import android.net.Uri;

public class IntentUtil {
    public static Intent makeMarketIntent(String appId, boolean back) {
        StringBuilder sb = new StringBuilder();
        sb.append("market://details?").append("id=").append(appId).append("&").append("back=").append(back);
        return new Intent("android.intent.action.VIEW", Uri.parse(sb.toString()));
    }
}
