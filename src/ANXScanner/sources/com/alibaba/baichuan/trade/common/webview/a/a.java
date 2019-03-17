package com.alibaba.baichuan.trade.common.webview.a;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.utils.JSONUtils;
import com.alibaba.baichuan.trade.common.webview.jsbridge.AlibcJsCallbackContext;
import com.alibaba.baichuan.trade.common.webview.jsbridge.AlibcJsResult;
import com.alibaba.baichuan.trade.common.webview.jsbridge.plugin.AlibcApiPlugin;
import org.json.JSONException;
import org.json.JSONObject;

public class a extends AlibcApiPlugin {
    public static String a = "AliBCBase";

    public static boolean a(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            return (packageManager == null || packageManager.getPackageInfo(str, 0) == null) ? false : true;
        } catch (Throwable e) {
            AlibcLogger.e("AlibcBasePlugin", "isAppInstalled", e);
            return false;
        }
    }

    public void a(AlibcJsCallbackContext alibcJsCallbackContext, String str) {
        AlibcJsResult alibcJsResult = new AlibcJsResult();
        alibcJsResult.setSuccess();
        alibcJsResult.addData("model", Build.MODEL);
        alibcJsResult.addData("brand", Build.BRAND);
        alibcJsCallbackContext.success(alibcJsResult);
    }

    public void b(AlibcJsCallbackContext alibcJsCallbackContext, String str) {
        String[] strArr = null;
        try {
            strArr = JSONUtils.toStringArray(new JSONObject(str).getJSONArray("apps"));
        } catch (JSONException e) {
            AlibcLogger.e("Base", "isInstall parse params error, params: " + str);
        }
        AlibcJsResult alibcJsResult = new AlibcJsResult();
        if (strArr == null) {
            alibcJsCallbackContext.error(alibcJsResult);
            return;
        }
        for (int i = 0; i < strArr.length; i++) {
            alibcJsResult.addData(strArr[i], Boolean.valueOf(a(AlibcTradeCommon.context, strArr[i])));
        }
        alibcJsResult.setSuccess();
        alibcJsCallbackContext.success(alibcJsResult);
    }

    public boolean execute(String str, String str2, AlibcJsCallbackContext alibcJsCallbackContext) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str) || alibcJsCallbackContext == null) {
            AlibcJsResult alibcJsResult = new AlibcJsResult(AlibcJsResult.FAIL);
            alibcJsResult.setResultCode("2");
            if (alibcJsCallbackContext != null) {
                alibcJsCallbackContext.error(alibcJsResult);
            }
            return false;
        }
        if ("getDeviceInfo".equals(str)) {
            a(alibcJsCallbackContext, str2);
        } else if ("isInstalled".equals(str)) {
            b(alibcJsCallbackContext, str2);
        }
        return true;
    }
}
