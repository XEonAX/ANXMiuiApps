package com.alibaba.baichuan.trade.biz.context;

import android.util.LruCache;
import android.webkit.WebView;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.utils.ResourceUtils;
import java.util.Map.Entry;

public class AlibcTradeContextManager {
    private static LruCache<String, AlibcTradeContext> a = new LruCache(30);

    private static Integer a() {
        return AlibcTradeCommon.context != null ? Integer.valueOf(ResourceUtils.getRLayout(AlibcTradeCommon.context, "com_alibaba_bc_layout")) : null;
    }

    public static void cleanMap() {
        for (Entry entry : a.snapshot().entrySet()) {
            AlibcTradeContext alibcTradeContext = (AlibcTradeContext) entry.getValue();
            if (!(alibcTradeContext == null || alibcTradeContext.isValid())) {
                a.remove(entry.getKey());
            }
        }
    }

    public static AlibcTradeContext getContext(WebView webView) {
        return webView == null ? null : (AlibcTradeContext) a.get(webView.getTag(a().intValue()).toString());
    }

    public static void removeContext(WebView webView) {
        if (webView != null) {
            a.remove(webView.getTag(a().intValue()).toString());
        }
    }

    public static void setContext(AlibcTradeContext alibcTradeContext) {
        if (alibcTradeContext != null) {
            WebView webView = (WebView) alibcTradeContext.webview.get();
            if (webView != null) {
                webView.setTag(a().intValue(), Integer.valueOf(webView.hashCode()));
                a.put(String.valueOf(webView.hashCode()), alibcTradeContext);
            }
        }
    }
}
