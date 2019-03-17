package com.alibaba.baichuan.trade.common.webview;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.List;

public class AlibcUrlBus {
    private static List<IUrlInterceptor> a = new ArrayList();

    public interface IUrlInterceptor {
        boolean interceptor(WebView webView, String str);
    }

    static synchronized boolean a(WebView webView, String str) {
        boolean z;
        synchronized (AlibcUrlBus.class) {
            z = false;
            for (IUrlInterceptor interceptor : a) {
                z = interceptor.interceptor(webView, str);
                if (z) {
                    break;
                }
            }
        }
        return z;
    }

    public static synchronized void registInterceptor(IUrlInterceptor iUrlInterceptor) {
        synchronized (AlibcUrlBus.class) {
            if (iUrlInterceptor != null) {
                a.add(0, iUrlInterceptor);
            }
        }
    }
}
