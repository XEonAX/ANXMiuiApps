package com.alibaba.baichuan.trade.common.webview.a;

import com.alibaba.baichuan.trade.common.webview.jsbridge.plugin.AlibcPluginManager;

public class b {
    public static void a() {
        AlibcPluginManager.registerPlugin(a.a, a.class, true);
        AlibcPluginManager.registerPlugin("AliBCNetWork", c.class, true);
        AlibcPluginManager.registerPlugin("AliBCUserTrack", e.class, true);
    }
}
