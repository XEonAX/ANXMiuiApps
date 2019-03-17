package com.ali.auth.third.ui.webview;

import android.annotation.TargetApi;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.ali.auth.third.core.message.Message;
import com.ali.auth.third.core.message.MessageUtils;
import com.ali.auth.third.core.model.KernelMessageConstants;
import com.ali.auth.third.core.model.SystemMessageConstants;
import com.ali.auth.third.core.trace.SDKLogger;
import java.lang.reflect.Method;

public class BridgeWebChromeClient extends WebChromeClient {
    private static final String a = BridgeWebChromeClient.class.getSimpleName();
    private static boolean b = (VERSION.SDK_INT >= 19);

    private static class a implements Runnable {
        public WebView a;
        public String b;

        public a(WebView webView, String str) {
            this.a = webView;
            this.b = str;
        }

        @TargetApi(19)
        public void run() {
            try {
                if (BridgeWebChromeClient.b) {
                    try {
                        this.a.evaluateJavascript(this.b, null);
                        return;
                    } catch (Throwable e) {
                        SDKLogger.e("ui", "fail to evaluate the script " + e.getMessage(), e);
                    }
                }
                String str = "javascript:" + this.b;
                if (this.a instanceof AuthWebView) {
                    ((AuthWebView) this.a).loadUrl(str);
                } else {
                    this.a.loadUrl(str);
                }
            } catch (Exception e2) {
            }
        }
    }

    private a a(String str) {
        Uri parse = Uri.parse(str);
        String host = parse.getHost();
        int port = parse.getPort();
        String lastPathSegment = parse.getLastPathSegment();
        parse.getQuery();
        int indexOf = str.indexOf("?");
        String substring = indexOf == -1 ? null : str.substring(indexOf + 1);
        a aVar = new a();
        aVar.b = lastPathSegment;
        aVar.a = host;
        aVar.c = substring;
        aVar.d = port;
        return aVar;
    }

    private void a(WebView webView, String str) {
        try {
            int indexOf = str.indexOf(58, 9);
            String substring = str.substring(indexOf + 1, str.indexOf(47, indexOf));
            webView.post(new a(webView, String.format("window.WindVane&&window.WindVane.onFailure(%s,'{\"ret\":\"HY_NO_HANDLER\"');", new Object[]{substring})));
        } catch (Throwable e) {
            SDKLogger.e("ui", "fail to handler windvane request, the error message is " + e.getMessage(), e);
        }
    }

    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return false;
    }

    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        Message createMessage;
        if (str3 == null) {
            return false;
        }
        if (str3.equals("wv_hybrid:")) {
            a(webView, str2);
            jsPromptResult.confirm("");
            return true;
        } else if (!TextUtils.equals(str3, "hv_hybrid:")) {
            return false;
        } else {
            if (!(webView instanceof AuthWebView)) {
                return false;
            }
            AuthWebView authWebView = (AuthWebView) webView;
            a a = a(str2);
            com.ali.auth.third.ui.context.a aVar = new com.ali.auth.third.ui.context.a();
            aVar.b = a.d;
            aVar.a = authWebView;
            Object bridgeObj = authWebView.getBridgeObj(a.a);
            Message createMessage2;
            if (bridgeObj == null) {
                createMessage2 = MessageUtils.createMessage(10000, a.a);
                SDKLogger.e(a, createMessage2.toString());
                aVar.a(createMessage2.code, createMessage2.message);
                jsPromptResult.confirm("");
                return true;
            }
            try {
                Method method = bridgeObj.getClass().getMethod(a.b, new Class[]{com.ali.auth.third.ui.context.a.class, String.class});
                if (method.isAnnotationPresent(BridgeMethod.class)) {
                    try {
                        Object[] objArr = new Object[2];
                        objArr[0] = aVar;
                        objArr[1] = TextUtils.isEmpty(a.c) ? "{}" : a.c;
                        method.invoke(bridgeObj, objArr);
                    } catch (Exception e) {
                        createMessage = MessageUtils.createMessage(KernelMessageConstants.GENERIC_SYSTEM_ERROR, e.getMessage());
                        SDKLogger.e(a, createMessage.toString() + "," + e.toString());
                        aVar.a(createMessage.code, createMessage.message);
                    }
                } else {
                    createMessage2 = MessageUtils.createMessage(SystemMessageConstants.JS_BRIDGE_ANNOTATION_NOT_PRESENT, a.a, a.b);
                    SDKLogger.e(a, createMessage2.toString());
                    aVar.a(createMessage2.code, createMessage2.message);
                }
                jsPromptResult.confirm("");
                return true;
            } catch (NoSuchMethodException e2) {
                createMessage = MessageUtils.createMessage(SystemMessageConstants.JS_BRIDGE_METHOD_NOT_FOUND, a.a, a.b);
                SDKLogger.e(a, createMessage + "," + e2.toString());
                aVar.a(createMessage.code, createMessage.message);
                jsPromptResult.confirm("");
                return true;
            }
        }
    }
}
