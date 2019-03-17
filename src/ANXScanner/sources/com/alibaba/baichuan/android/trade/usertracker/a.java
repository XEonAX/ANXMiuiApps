package com.alibaba.baichuan.android.trade.usertracker;

import android.graphics.Bitmap;
import android.webkit.WebView;
import com.alibaba.baichuan.android.trade.AlibcTrade;
import com.alibaba.baichuan.android.trade.page.AlibcBasePage;
import com.alibaba.baichuan.android.trade.usertracker.monitor.d;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTradeHelper;
import com.alibaba.baichuan.trade.common.utils.AlarmUtils;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.utils.ResourceUtils;
import com.alibaba.baichuan.trade.common.webview.AlibcWebViewService;
import com.alibaba.baichuan.trade.common.webview.AlibcWebViewService.IAlibcWebViewClient;

public class a implements IAlibcWebViewClient {
    private static a g;
    private boolean a = false;
    private com.alibaba.baichuan.android.trade.usertracker.monitor.a b;
    private d c;
    private AlibcBasePage d;
    private boolean e = true;
    private boolean f = false;

    private a() {
    }

    public static a a() {
        a aVar;
        synchronized (a.class) {
            if (g == null) {
                g = new a();
            }
            aVar = g;
        }
        return aVar;
    }

    private static void a(AlibcBasePage alibcBasePage, String str, String str2) {
        if (alibcBasePage == null) {
            AlarmUtils.alarm("AlibcTraceWebviewClient", "sendH5OpenUsabilityFailure", "tradePage is null!");
            AlibcLogger.e("AlibcTraceWebviewClient", "tradePage is null");
            return;
        }
        AlibcUserTradeHelper.sendUseabilityFailure(AlibcTrade.MONITOR_POINT_H5, str, AlibcTrade.ERRCODE_PAGE_H5 + alibcBasePage.getUsabilityPageType() + str2);
    }

    private static void c() {
        AlibcUserTradeHelper.sendUseabilitySuccess(AlibcTrade.MONITOR_POINT_H5);
    }

    public void a(com.alibaba.baichuan.android.trade.usertracker.monitor.a aVar, AlibcBasePage alibcBasePage) {
        synchronized (a.class) {
            this.b = aVar;
            this.d = alibcBasePage;
            this.a = true;
            this.f = false;
            this.c = null;
        }
    }

    public void b() {
        synchronized (a.class) {
            if (this.e) {
                AlibcWebViewService.registAliWebViewClient(this);
                this.e = false;
            }
        }
    }

    public void onPageFinished(WebView webView, String str) {
        synchronized (a.class) {
            if (this.a) {
                if (!(this.f || this.b == null)) {
                    this.b.m();
                    this.b.d();
                    this.b.e();
                    this.b = null;
                    this.a = false;
                    c();
                }
            } else if (this.c != null) {
                this.c.b();
                this.c.d();
                this.c.f();
                this.c = null;
            }
        }
    }

    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        synchronized (a.class) {
            if (webView.getTag(ResourceUtils.getIdentifier(AlibcTradeCommon.context, AlibcConstants.ID, "webviewload_monitor_cancel_point")) != null) {
                this.c = null;
                webView.setTag(ResourceUtils.getIdentifier(AlibcTradeCommon.context, AlibcConstants.ID, "webviewload_monitor_cancel_point"), null);
            }
        }
    }

    public void onReceivedError(WebView webView, int i, String str, String str2) {
        synchronized (a.class) {
            if (this.a) {
                a(this.d, "页面加载失败,failingUrl = " + str2, String.valueOf(i));
                this.f = true;
            }
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str, boolean z) {
        synchronized (a.class) {
            if (!this.a) {
                this.c = new d();
                this.c.c();
                this.c.a();
            }
        }
        return false;
    }
}
