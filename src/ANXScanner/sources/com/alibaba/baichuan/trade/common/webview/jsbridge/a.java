package com.alibaba.baichuan.trade.common.webview.jsbridge;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.ValueCallback;
import android.webkit.WebStorage.QuotaUpdater;
import android.webkit.WebView;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.webview.jsbridge.AlibcJsBridgeService.AlibcJSAPIAuthCheck;
import com.alibaba.baichuan.trade.common.webview.jsbridge.plugin.AlibcApiPlugin;
import com.alibaba.baichuan.trade.common.webview.jsbridge.plugin.AlibcPluginManager;

public class a implements Callback {
    private static a a;
    private static Handler b;
    private boolean c = true;
    private boolean d;
    private boolean e = false;

    private a() {
        b = new Handler(Looper.getMainLooper(), this);
    }

    public static synchronized a a() {
        a aVar;
        synchronized (a.class) {
            if (a == null) {
                a = new a();
            }
            aVar = a;
        }
        return aVar;
    }

    private c a(String str) {
        if (str == null || !str.startsWith("bchybrid://")) {
            return null;
        }
        try {
            c cVar = new c();
            int indexOf = str.indexOf(58, "bchybrid://".length());
            cVar.d = str.substring("bchybrid://".length(), indexOf);
            int indexOf2 = str.indexOf(47, indexOf);
            cVar.g = str.substring(indexOf + 1, indexOf2);
            indexOf = str.indexOf(63, indexOf2);
            if (indexOf > 0) {
                cVar.e = str.substring(indexOf2 + 1, indexOf);
                cVar.f = str.substring(indexOf + 1);
            } else {
                cVar.e = str.substring(indexOf2 + 1);
            }
            if (cVar.d.length() > 0 && cVar.g.length() > 0 && cVar.e.length() > 0) {
                return cVar;
            }
        } catch (StringIndexOutOfBoundsException e) {
        }
        return null;
    }

    public static void a(int i, c cVar) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.obj = cVar;
        b.sendMessage(obtain);
    }

    public static void a(c cVar, String str) {
        AlibcApiPlugin createPlugin = AlibcPluginManager.createPlugin(cVar.d, cVar.b, cVar.a);
        if (createPlugin == null || !(createPlugin instanceof AlibcApiPlugin)) {
            AlibcLogger.w("AlibcJsBridge", "callMethod: Plugin " + cVar.d + " didn't found, you should call WVPluginManager.registerPlugin first.");
            a(2, cVar);
            return;
        }
        AlibcLogger.i("AlibcJsBridge", "call new method execute.");
        cVar.c = createPlugin;
        a(0, cVar);
    }

    private void b(c cVar, String str) {
        AlibcLogger.d("AlibcJsBridge", String.format("callMethod-obj:%s method:%s param:%s sid:%s", new Object[]{cVar.d, cVar.e, cVar.f, cVar.g}));
        if (!this.c || cVar.a == null) {
            AlibcLogger.w("AlibcJsBridge", "jsbridge is closed.");
            a(4, cVar);
            return;
        }
        if (!(this.d || AlibcJsBridgeService.a() == null || AlibcJsBridgeService.a().isEmpty())) {
            for (AlibcJSAPIAuthCheck a : AlibcJsBridgeService.a()) {
                if (!a.a(str, cVar.d, cVar.e, cVar.f)) {
                    AlibcLogger.w("AlibcJsBridge", "preprocessor call fail, callMethod cancel.");
                    a(3, cVar);
                    return;
                }
            }
        }
        a(cVar, str);
    }

    public void a(WebView webView, int i) {
    }

    public void a(WebView webView, String str) {
    }

    public void a(WebView webView, String str, GeolocationPermissions.Callback callback) {
        callback.invoke(str, true, false);
    }

    public void a(WebView webView, String str, String str2, long j, long j2, long j3, QuotaUpdater quotaUpdater) {
        if (j2 < 20971520) {
            quotaUpdater.updateQuota(j2);
        } else {
            quotaUpdater.updateQuota(j);
        }
    }

    public boolean a(WebView webView, ConsoleMessage consoleMessage) {
        String message = consoleMessage.message();
        if (message == null || !message.startsWith("bcNativeCallback")) {
            return false;
        }
        message = message.substring(message.indexOf("/") + 1);
        int indexOf = message.indexOf("/");
        String substring = message.substring(0, indexOf);
        message = message.substring(indexOf + 1);
        ValueCallback a = e.a(substring);
        if (a != null) {
            a.onReceiveValue(message);
            e.b(substring);
        } else {
            Log.e("alibc", "NativeCallback failed: " + message);
        }
        return true;
    }

    public boolean a(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        if (str3 == null || !str3.equals("bc_hybrid:")) {
            return false;
        }
        a().b(webView, str2);
        jsPromptResult.confirm("");
        return true;
    }

    public synchronized void b() {
        this.e = true;
    }

    public void b(WebView webView, String str) {
        AlibcLogger.d("AlibcJsBridge", "callMethod: url=" + str);
        if (this.e) {
            c a = a(str);
            if (a == null) {
                AlibcLogger.w("AlibcJsBridge", "url format error and call canceled. url=" + str);
                return;
            }
            a.a = webView;
            new b(this, a, webView.getUrl()).execute(new Void[0]);
            return;
        }
        AlibcLogger.w("AlibcJsBridge", "jsbridge is not init.");
    }

    public boolean handleMessage(Message message) {
        c cVar = (c) message.obj;
        if (cVar == null) {
            AlibcLogger.e("AlibcJsBridge", "CallMethodContext is null, and do nothing.");
            return false;
        }
        AlibcJsCallbackContext alibcJsCallbackContext = new AlibcJsCallbackContext(cVar.a, cVar.g, cVar.d, cVar.e);
        switch (message.what) {
            case 0:
                if (!((AlibcApiPlugin) cVar.c).execute(cVar.e, TextUtils.isEmpty(cVar.f) ? "{}" : cVar.f, alibcJsCallbackContext)) {
                    AlibcLogger.w("AlibcJsBridge", "AlibcApiPlugin execute failed. method: " + cVar.e);
                    a(2, cVar);
                }
                return true;
            case 2:
                alibcJsCallbackContext.error(AlibcJsResult.RET_NO_METHOD);
                return true;
            case 3:
                alibcJsCallbackContext.error(AlibcJsResult.RET_NO_PERMISSION);
                return true;
            case 4:
                alibcJsCallbackContext.error(AlibcJsResult.RET_CLOSED);
                return true;
            default:
                return false;
        }
    }
}
