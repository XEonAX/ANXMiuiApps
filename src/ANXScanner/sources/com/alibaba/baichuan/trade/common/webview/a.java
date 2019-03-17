package com.alibaba.baichuan.trade.common.webview;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.webkit.WebView;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.utils.ResourceUtils;

final class a implements OnTouchListener {
    final /* synthetic */ WebView a;

    a(WebView webView) {
        this.a = webView;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        this.a.setTag(ResourceUtils.getIdentifier(AlibcTradeCommon.context, AlibcConstants.ID, "com_taobao_nb_sdk_webview_click"), Boolean.valueOf(true));
        return false;
    }
}
