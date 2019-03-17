package com.taobao.applink.f;

import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import com.taobao.applink.f.a.b;
import com.taobao.applink.util.TBAppLinkUtil;
import java.util.List;

class c implements b {
    final /* synthetic */ WebView a;
    final /* synthetic */ b b;

    c(b bVar, WebView webView) {
        this.b = bVar;
        this.a = webView;
    }

    public void a(String str) {
        try {
            List f = f.f(str);
            if (f != null && f.size() != 0) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < f.size()) {
                        f fVar = (f) f.get(i2);
                        CharSequence a = fVar.a();
                        if (TextUtils.isEmpty(a)) {
                            b dVar;
                            Object c = fVar.c();
                            if (TextUtils.isEmpty(c)) {
                                c = new e(this);
                            } else {
                                dVar = new d(this, c);
                            }
                            (!TextUtils.isEmpty(fVar.e()) ? (com.taobao.applink.f.a.c) this.b.c.get(fVar.e()) : this.b.d).a(fVar.d(), dVar);
                        } else {
                            ((b) this.b.b.get(a)).a(fVar.b());
                            this.b.b.remove(a);
                        }
                        i = i2 + 1;
                    } else {
                        return;
                    }
                }
            }
        } catch (Exception e) {
            Log.d(TBAppLinkUtil.TAG, e.toString());
        }
    }
}
