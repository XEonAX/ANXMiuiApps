package com.alibaba.baichuan.trade.biz.context;

import android.app.Activity;
import android.webkit.WebView;
import java.io.Serializable;
import java.lang.ref.WeakReference;

public class AlibcTradeContext {
    public WeakReference<Activity> activity;
    public AlibcTradeCallback callback;
    public AlibcTradeShowParam showParam;
    public AlibcTradeTaokeParam taokeParam;
    public AlibcTradeTrackParam urlParam;
    public WeakReference<WebView> webview;

    public interface AlibcTradeCallback extends Serializable {
        void onFailure(int i, String str);

        void onTradeSuccess(AlibcTradeResult alibcTradeResult);
    }

    public AlibcTradeContext(Activity activity, WebView webView, AlibcTradeShowParam alibcTradeShowParam, AlibcTradeTaokeParam alibcTradeTaokeParam, AlibcTradeTrackParam alibcTradeTrackParam, AlibcTradeCallback alibcTradeCallback) {
        this.activity = new WeakReference(activity);
        this.webview = new WeakReference(webView);
        this.showParam = alibcTradeShowParam;
        this.taokeParam = alibcTradeTaokeParam;
        this.urlParam = alibcTradeTrackParam;
        this.callback = alibcTradeCallback;
    }

    public boolean isValid() {
        return (this.webview == null || this.webview.get() == null || this.activity == null || this.activity.get() == null) ? false : true;
    }

    public void setActivity(Activity activity) {
        if (activity != null) {
            this.activity = new WeakReference(activity);
        }
    }

    public void setWebview(WebView webView) {
        if (webView != null) {
            this.webview = new WeakReference(webView);
        }
    }
}
