package com.alibaba.alibclinkpartner.g;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.webkit.WebView;
import com.alibaba.alibclinkpartner.j.e;
import com.alibaba.alibclinkpartner.ui.ALPWebviewActivity;
import com.alibaba.wireless.security.SecExceptionCode;

public class b extends d {
    private String b;
    private WebView c;

    public b(com.alibaba.alibclinkpartner.c.b bVar, String str, WebView webView) {
        super(bVar);
        this.b = str;
        this.c = webView;
    }

    public int a(Context context) {
        e.b("ALPNavOpenClient", "execute", "现在的context = " + this.a);
        if (this.b == null) {
            e.a("ALPH5OpenClient", "execute", "url is null");
            return 304;
        }
        if (this.c == null) {
            Intent intent = new Intent(com.alibaba.alibclinkpartner.b.e(), ALPWebviewActivity.class);
            intent.putExtra("webviewUrl", this.b);
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            context.startActivity(intent);
        } else {
            this.c.loadUrl(this.b);
        }
        return SecExceptionCode.SEC_ERROR_STA_STORE_KEY_NOT_EXSITED;
    }
}
