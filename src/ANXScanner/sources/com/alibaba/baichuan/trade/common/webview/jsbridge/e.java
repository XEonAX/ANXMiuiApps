package com.alibaba.baichuan.trade.common.webview.jsbridge;

import android.webkit.ValueCallback;
import java.util.concurrent.ConcurrentHashMap;

public class e {
    private static ConcurrentHashMap<String, ValueCallback<String>> a = new ConcurrentHashMap();

    public static ValueCallback<String> a(String str) {
        return (ValueCallback) a.get(str);
    }

    public static void b(String str) {
        a.remove(str);
    }
}
