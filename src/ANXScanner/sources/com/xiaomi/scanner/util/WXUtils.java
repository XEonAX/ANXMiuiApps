package com.xiaomi.scanner.util;

import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import com.xiaomi.scanner.app.ScannerApp;

public class WXUtils {
    private static final String APP_ID = "wx3e772a7eb0393d4d";
    private static IWXAPI mWXapi;

    public static IWXAPI getWXApi() {
        if (mWXapi == null) {
            synchronized (WXUtils.class) {
                if (mWXapi == null) {
                    mWXapi = WXAPIFactory.createWXAPI(ScannerApp.getAndroidContext(), APP_ID);
                }
            }
        }
        return mWXapi;
    }
}
