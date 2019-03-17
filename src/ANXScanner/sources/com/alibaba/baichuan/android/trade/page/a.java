package com.alibaba.baichuan.android.trade.page;

import android.app.Activity;
import android.text.TextUtils;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContext;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeShowParam;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcTaokeTraceCallback;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.utils.ExecutorServiceUtils;
import java.util.Map;

class a implements AlibcTaokeTraceCallback {
    final /* synthetic */ com.alibaba.baichuan.android.trade.usertracker.monitor.a a;
    final /* synthetic */ Activity b;
    final /* synthetic */ WebView c;
    final /* synthetic */ WebViewClient d;
    final /* synthetic */ WebChromeClient e;
    final /* synthetic */ Map f;
    final /* synthetic */ AlibcTradeContext g;
    final /* synthetic */ AlibcTradeShowParam h;
    final /* synthetic */ AlibcBasePage i;

    a(AlibcBasePage alibcBasePage, com.alibaba.baichuan.android.trade.usertracker.monitor.a aVar, Activity activity, WebView webView, WebViewClient webViewClient, WebChromeClient webChromeClient, Map map, AlibcTradeContext alibcTradeContext, AlibcTradeShowParam alibcTradeShowParam) {
        this.i = alibcBasePage;
        this.a = aVar;
        this.b = activity;
        this.c = webView;
        this.d = webViewClient;
        this.e = webChromeClient;
        this.f = map;
        this.g = alibcTradeContext;
        this.h = alibcTradeShowParam;
    }

    public void getTaokeUrl(int i, String str) {
        AlibcLogger.d("AlibcBasePage", "淘客打点流程回调,type = " + i + "\n openUrl = " + str);
        if (i == 1) {
            this.a.a = AlibcConstants.TK_SYNC;
            this.a.i();
        } else {
            this.a.a = AlibcConstants.TK_ASYNC;
            this.a.n();
        }
        if (TextUtils.isEmpty(str)) {
            this.g.callback.onFailure(-1, "openH5 url is null");
        } else {
            ExecutorServiceUtils.getInstance().postUITask(new b(this, str));
        }
    }
}
