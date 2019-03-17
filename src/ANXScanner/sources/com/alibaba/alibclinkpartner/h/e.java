package com.alibaba.alibclinkpartner.h;

import android.text.TextUtils;
import com.alibaba.alibclinkpartner.c.b;
import com.alibaba.alibclinkpartner.d.e.a.d;
import com.alibaba.alibclinkpartner.d.e.a.g;
import com.alibaba.alibclinkpartner.d.e.a.o;
import com.alibaba.alibclinkpartner.d.e.c;
import com.alibaba.alibclinkpartner.j.j;

public class e extends d {
    public e(b bVar) {
        super(bVar);
    }

    private void a() {
        d gVar = new g();
        gVar.e = this.a.e;
        gVar.a = com.alibaba.alibclinkpartner.b.a().b;
        gVar.b = this.a.g;
        gVar.c = false;
        gVar.d = "none";
        c.a(gVar);
    }

    private void a(String str) {
        if (str != null) {
            c.a(new o(str));
        }
    }

    public b a(String str, int i, int i2, boolean z, boolean z2) {
        b bVar = new b();
        String trim = (str == null || TextUtils.isEmpty(str.trim())) ? "taobao" : str.trim();
        bVar.a = trim;
        if (j.a(com.alibaba.alibclinkpartner.b.e(), trim)) {
            com.alibaba.alibclinkpartner.j.e.b("ALPUnDegradeHandler", "getStrategyHandlerInfo", "支持打开app linkKey= " + trim);
            bVar.b = z2 ? 3 : 1;
            bVar.a = trim;
        } else {
            com.alibaba.alibclinkpartner.j.e.b("ALPUnDegradeHandler", "getStrategyHandlerInfo", "不支持打开app linkKey= " + trim);
            a(trim);
            a();
            bVar.b = -1;
        }
        return bVar;
    }
}
