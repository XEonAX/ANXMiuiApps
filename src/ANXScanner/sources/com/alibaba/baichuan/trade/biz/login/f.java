package com.alibaba.baichuan.trade.biz.login;

import android.app.Activity;
import android.webkit.WebView;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.utils.ResourceUtils;
import com.alibaba.baichuan.trade.common.utils.StringUtils;

class f implements AlibcLoginCallback {
    final /* synthetic */ WebView a;
    final /* synthetic */ d b;

    f(d dVar, WebView webView) {
        this.b = dVar;
        this.a = webView;
    }

    public void onFailure(int i, String str) {
        if (this.a != null) {
            AlibcLogger.d("AlibcLoginInterceptor", "登录失败,进入到页面后退逻辑");
            Activity activity = (Activity) this.a.getContext();
            if (!StringUtils.obj2Boolean(this.a.getTag(ResourceUtils.getIdentifier(activity, AlibcConstants.ID, "com_taobao_nb_sdk_webview_click")))) {
                if (this.a.canGoBack()) {
                    this.a.goBack();
                } else if (activity != null) {
                    activity.finish();
                }
            }
        }
    }

    public void onSuccess(int i) {
        AlibcLogger.d("AlibcLoginInterceptor", "登录成功,重新加载页面");
        this.a.setTag(ResourceUtils.getIdentifier(AlibcTradeCommon.context, AlibcConstants.ID, "webviewload_monitor_cancel_point"), Boolean.valueOf(true));
        this.a.reload();
        this.b.b(this.a);
    }
}
