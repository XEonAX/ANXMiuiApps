package com.taobao.applink.f;

import android.os.Looper;
import android.webkit.WebView;
import com.taobao.applink.f.a.a;
import com.taobao.applink.f.a.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class b implements a {
    long a = 0;
    private Map b = new HashMap();
    private Map c = new HashMap();
    private c d = new a();
    private List e = new ArrayList();

    private void b(WebView webView, f fVar) {
        if (this.e != null) {
            this.e.add(fVar);
        } else {
            a(webView, fVar);
        }
    }

    public void a(WebView webView) {
        if (this.e != null) {
            for (f a : this.e) {
                a(webView, a);
            }
            this.e = null;
        }
    }

    public void a(WebView webView, f fVar) {
        String replaceAll = fVar.f().replaceAll("(\\\\)([^utrn])", "\\\\\\\\$1$2").replaceAll("(?<=[^\\\\])(\")", "\\\\\"");
        replaceAll = String.format("javascript:TBAppLinkJsBridge._handleMessageFromNative(\"%s\");", new Object[]{replaceAll});
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            webView.loadUrl(replaceAll);
        }
    }

    public void a(WebView webView, String str) {
        String a = com.taobao.applink.util.a.a(str);
        com.taobao.applink.f.a.b bVar = (com.taobao.applink.f.a.b) this.b.get(a);
        String c = com.taobao.applink.util.a.c(str);
        if (bVar != null) {
            bVar.a(c);
            this.b.remove(a);
        }
    }

    public void a(WebView webView, String str, com.taobao.applink.f.a.b bVar) {
        webView.loadUrl(str);
        this.b.put(com.taobao.applink.util.a.b(str), bVar);
    }

    public void a(WebView webView, String str, c cVar) {
        if (cVar != null) {
            this.c.put(str, cVar);
        }
    }

    public void b(WebView webView) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            a(webView, "javascript:TBAppLinkJsBridge._fetchQueue();", new c(this, webView));
        }
    }
}
