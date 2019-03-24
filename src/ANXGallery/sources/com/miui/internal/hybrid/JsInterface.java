package com.miui.internal.hybrid;

import android.util.Log;
import android.webkit.JavascriptInterface;

public class JsInterface {
    public static final String INTERFACE_NAME = "MiuiJsBridge";
    private HybridManager fy;

    public JsInterface(HybridManager hybridManager) {
        this.fy = hybridManager;
    }

    @JavascriptInterface
    public String config(String str) {
        str = this.fy.config(str);
        if (Log.isLoggable(HybridManager.TAG, 3)) {
            String str2 = HybridManager.TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("config response is ");
            stringBuilder.append(str);
            Log.d(str2, stringBuilder.toString());
        }
        return str;
    }

    @JavascriptInterface
    public String lookup(String str, String str2) {
        str = this.fy.lookup(str, str2);
        if (Log.isLoggable(HybridManager.TAG, 3)) {
            str2 = HybridManager.TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("lookup response is ");
            stringBuilder.append(str);
            Log.d(str2, stringBuilder.toString());
        }
        return str;
    }

    @JavascriptInterface
    public String invoke(String str, String str2, String str3, String str4) {
        str = this.fy.invoke(str, str2, str3, str4);
        if (Log.isLoggable(HybridManager.TAG, 3)) {
            str2 = HybridManager.TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("blocking response is ");
            stringBuilder.append(str);
            Log.d(str2, stringBuilder.toString());
        }
        return str;
    }
}
