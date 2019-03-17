package com.alibaba.baichuan.trade.common.webview.jsbridge.plugin;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class AlibcPluginManager {
    public static final String KEY_METHOD = "method";
    public static final String KEY_NAME = "name";
    private static final Map<String, a> a = new ConcurrentHashMap();

    static class a {
        private String a;
        private ClassLoader b;

        a(String str, ClassLoader classLoader) {
            this.a = str;
            this.b = classLoader;
        }

        public String a() {
            return this.a;
        }

        public ClassLoader b() {
            return this.b;
        }
    }

    public static AlibcApiPlugin createPlugin(String str, Context context, WebView webView) {
        a aVar = (a) a.get(str);
        if (aVar == null || aVar.a() == null) {
            return null;
        }
        String a = aVar.a();
        try {
            ClassLoader b = aVar.b();
            Class cls = b == null ? Class.forName(a) : b.loadClass(a);
            if (cls != null && AlibcApiPlugin.class.isAssignableFrom(cls)) {
                AlibcApiPlugin alibcApiPlugin = (AlibcApiPlugin) cls.newInstance();
                if (alibcApiPlugin.paramObj != null) {
                    alibcApiPlugin.initialize(context, webView, alibcApiPlugin.paramObj);
                    return alibcApiPlugin;
                }
                alibcApiPlugin.initialize(context, webView);
                return alibcApiPlugin;
            }
        } catch (Exception e) {
            AlibcLogger.e("AlibcPluginManager", "create plugin error: " + str + ". " + e.getMessage());
        }
        AlibcLogger.w("AlibcPluginManager", "create plugin failed: " + str);
        return null;
    }

    public static void registerPlugin(String str, Class<? extends AlibcApiPlugin> cls) {
        registerPlugin(str, cls, true);
    }

    public static void registerPlugin(String str, Class<? extends AlibcApiPlugin> cls, boolean z) {
        if (!TextUtils.isEmpty(str) && cls != null) {
            ClassLoader classLoader = null;
            if (z) {
                classLoader = cls.getClassLoader();
            }
            a.put(str, new a(cls.getName(), classLoader));
        }
    }

    public static void unregisterPlugin(String str) {
        a.remove(str);
    }
}
