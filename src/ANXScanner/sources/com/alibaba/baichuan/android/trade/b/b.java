package com.alibaba.baichuan.android.trade.b;

import android.webkit.WebView;
import com.alibaba.baichuan.android.trade.page.AlibcMyOrdersPage;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.messagebus.AlibcMessageListner;
import com.alibaba.baichuan.trade.common.utils.ResourceUtils;

public class b extends AlibcMessageListner {
    public b() {
        super(6002, true);
    }

    public void onMessageEvent(int i, Object obj) {
        if (obj != null && (obj instanceof WebView)) {
            WebView webView = (WebView) obj;
            AlibcMyOrdersPage alibcMyOrdersPage = new AlibcMyOrdersPage(0, true);
            webView.setTag(ResourceUtils.getIdentifier(AlibcTradeCommon.context, AlibcConstants.ID, "webviewload_monitor_cancel_point"), Boolean.valueOf(true));
            webView.loadUrl(alibcMyOrdersPage.genOpenUrl());
        }
    }
}
