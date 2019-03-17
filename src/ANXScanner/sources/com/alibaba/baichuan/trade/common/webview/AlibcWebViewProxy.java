package com.alibaba.baichuan.trade.common.webview;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.utils.ResourceUtils;
import com.alibaba.baichuan.trade.common.utils.network.NetworkUtils;
import com.alibaba.baichuan.trade.common.webview.a.b;
import com.alibaba.baichuan.trade.common.webview.jsbridge.a;
import java.util.ArrayList;
import java.util.Iterator;

public class AlibcWebViewProxy {
    private static final String a = (" AliApp(BC/" + AlibcTradeCommon.systemVersion + ")");
    private static final String b = (" tae_sdk_" + AlibcTradeCommon.systemVersion);
    private static ArrayList<String> c = new ArrayList();

    private static void a(WebView webView) {
        a(webView, true);
        webView.setTag(ResourceUtils.getIdentifier(AlibcTradeCommon.context, AlibcConstants.ID, "com_taobao_nb_sdk_webview_click"), Boolean.valueOf(false));
        webView.setOnTouchListener(new a(webView));
    }

    @TargetApi(21)
    private static void a(WebView webView, boolean z) {
        WebSettings settings = webView.getSettings();
        if (settings != null) {
            try {
                settings.setJavaScriptEnabled(true);
            } catch (Exception e) {
                e.printStackTrace();
            }
            settings.setSavePassword(false);
            settings.setUseWideViewPort(true);
            settings.setLoadWithOverviewMode(true);
            settings.setJavaScriptCanOpenWindowsAutomatically(false);
            settings.setDomStorageEnabled(true);
            settings.setAppCachePath(webView.getContext().getApplicationContext().getDir("cache", 0).getPath());
            settings.setAllowFileAccess(true);
            settings.setAppCacheEnabled(true);
            settings.setDefaultTextEncodingName("UTF-8");
            if (NetworkUtils.isNetworkAvaiable(webView.getContext())) {
                settings.setCacheMode(-1);
            } else {
                settings.setCacheMode(1);
            }
            settings.setBuiltInZoomControls(false);
            if (z) {
                StringBuilder stringBuilder = new StringBuilder();
                String userAgentString = settings.getUserAgentString();
                if (userAgentString != null) {
                    stringBuilder.append(userAgentString);
                }
                stringBuilder.append(b);
                stringBuilder.append(a);
                stringBuilder.append(String.format(" AliBaichuan(%s/%s)", new Object[]{AlibcTradeCommon.ttid, AlibcTradeCommon.isvVersion}));
                Iterator it = c.iterator();
                while (it.hasNext()) {
                    stringBuilder.append(" " + ((String) it.next()));
                }
                settings.setUserAgentString(stringBuilder.toString());
            }
            if (VERSION.SDK_INT >= 21) {
                CookieManager.getInstance().setAcceptThirdPartyCookies(webView, true);
            }
        }
    }

    public static void addWebviewUA(String str) {
        if (!TextUtils.isEmpty(str)) {
            c.add(str);
        }
    }

    public static void init() {
        a.a().b();
        b.a();
    }

    public static void initAlibcWebViewProxy(Context context, WebView webView, WebViewClient webViewClient, WebChromeClient webChromeClient, boolean z) {
        a(webView);
        if (z) {
            webView.setWebViewClient(new AlibcWebViewClient(webView, webViewClient));
            webView.setWebChromeClient(new AlibcWebChromeClient(webView, webChromeClient));
        }
    }
}
