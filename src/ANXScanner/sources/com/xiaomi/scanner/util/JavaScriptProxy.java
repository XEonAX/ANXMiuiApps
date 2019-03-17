package com.xiaomi.scanner.util;

import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram.Req;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;

public class JavaScriptProxy {
    private static final Tag TAG = new Tag("JavaScriptProxy");
    public static final String XIAOMI_SCANNER = "xiaomiScanner";

    @JavascriptInterface
    public void launchMiniProgram(String userName, String path) {
        Log.d(TAG, "launchMiniProgram two params");
        IWXAPI iwxapi = WXUtils.getWXApi();
        Req req = new Req();
        req.userName = userName;
        if (!TextUtils.isEmpty(path)) {
            req.path = path;
        }
        req.miniprogramType = 0;
        iwxapi.sendReq(req);
    }

    @JavascriptInterface
    public void launchMiniProgram(String userName) {
        Log.d(TAG, "launchMiniProgram");
        launchMiniProgram(userName, "");
    }
}
