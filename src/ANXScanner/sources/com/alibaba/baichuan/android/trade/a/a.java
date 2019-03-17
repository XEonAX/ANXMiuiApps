package com.alibaba.baichuan.android.trade.a;

import android.app.Activity;
import android.content.Intent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.alibaba.baichuan.android.trade.ui.AlibcWebViewActivity;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContext;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContextManager;
import com.alibaba.baichuan.trade.common.webview.AlibcWebViewProxy;
import java.util.Map;

public class a {
    public static void a(Activity activity, String str, WebView webView, WebViewClient webViewClient, WebChromeClient webChromeClient, AlibcTradeContext alibcTradeContext, Map<String, String> map, com.alibaba.baichuan.android.trade.usertracker.monitor.a aVar, boolean z) {
        alibcTradeContext.setActivity(activity);
        alibcTradeContext.setWebview(webView);
        AlibcTradeContextManager.setContext(alibcTradeContext);
        AlibcWebViewProxy.initAlibcWebViewProxy(activity, webView, webViewClient, webChromeClient, z);
        if (aVar != null) {
            aVar.l();
        }
        if (map != null) {
            webView.loadUrl(str, map);
        } else {
            webView.loadUrl(str);
        }
    }

    public static void a(Activity activity, String str, AlibcTradeContext alibcTradeContext, com.alibaba.baichuan.android.trade.usertracker.monitor.a aVar) {
        AlibcWebViewActivity.a(alibcTradeContext);
        AlibcWebViewActivity.a(aVar);
        Intent intent = new Intent(activity, AlibcWebViewActivity.class);
        intent.putExtra("url", str);
        if (!(alibcTradeContext == null || alibcTradeContext.showParam == null)) {
            intent.putExtra("bc_webview_activity_title", alibcTradeContext.showParam.getTitle());
        }
        activity.startActivity(intent);
    }
}
