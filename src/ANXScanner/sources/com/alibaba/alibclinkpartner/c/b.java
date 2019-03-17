package com.alibaba.alibclinkpartner.c;

import android.content.Context;
import android.webkit.WebView;
import com.alibaba.alibclinkpartner.b.c;
import java.util.ArrayList;
import java.util.List;

public class b {
    public WebView a;
    public String b;
    public int c;
    public String d;
    public String e;
    public c f;
    public String g;
    public Context h;
    public List<String> i;
    public List<String> j;
    public boolean k;
    public String l;
    public boolean m = false;
    public boolean n;
    public String o;
    public boolean p = false;
    public boolean q = false;
    public int r = 0;

    public b(Context context) {
        this.h = context;
        this.i = new ArrayList();
        this.j = new ArrayList();
    }

    public String toString() {
        return "ALPDistributionContext{degradeWebview=" + this.a + ", url='" + this.b + '\'' + ", openType=" + this.c + ", module='" + this.d + '\'' + ", apiType='" + this.e + '\'' + ", linkKey='" + this.g + '\'' + ", context=" + this.h + ", actions=" + this.i + ", categories=" + this.j + ", degradeH5Url='" + this.o + '\'' + ", isDegradeToTB=" + this.p + ", hasSendFailOpenPoint=" + this.q + ", requestCode=" + this.r + '}';
    }
}
