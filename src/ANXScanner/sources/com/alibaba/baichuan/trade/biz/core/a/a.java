package com.alibaba.baichuan.trade.biz.core.a;

import android.text.TextUtils;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContext;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContextManager;
import com.alibaba.baichuan.trade.biz.utils.AlibcTradeHelper;
import com.alibaba.baichuan.trade.common.utils.StringUtils;
import com.alibaba.baichuan.trade.common.webview.jsbridge.AlibcJsCallbackContext;
import com.alibaba.baichuan.trade.common.webview.jsbridge.AlibcJsResult;
import com.alibaba.baichuan.trade.common.webview.jsbridge.plugin.AlibcApiPlugin;
import com.alibaba.fastjson.JSON;
import java.util.Map;
import java.util.Map.Entry;

public class a extends AlibcApiPlugin {
    public static String a = "AliBCWebView";

    public void a(AlibcJsCallbackContext alibcJsCallbackContext, String str) {
        Map obj2MapString = StringUtils.obj2MapString(JSON.parseObject(str));
        if (obj2MapString != null) {
            obj2MapString = AlibcTradeHelper.createUrlParams(obj2MapString);
            if (obj2MapString != null && obj2MapString.size() > 0) {
                AlibcTradeContext context = AlibcTradeContextManager.getContext(this.mWebView);
                for (Entry entry : obj2MapString.entrySet()) {
                    context.urlParam.put(entry.getKey(), entry.getValue());
                }
            }
        }
        AlibcJsResult alibcJsResult = new AlibcJsResult();
        alibcJsResult.setResultCode("0");
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
        if ("setYbhpss".equals(str)) {
            a(alibcJsCallbackContext, str2);
        }
        return true;
    }
}
