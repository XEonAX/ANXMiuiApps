package com.alibaba.alibclinkpartner.i;

import com.alibaba.alibclinkpartner.b;
import com.alibaba.alibclinkpartner.constants.open.ALPLinkKeyType;
import com.alibaba.alibclinkpartner.j.e;
import com.alibaba.alibclinkpartner.j.i;
import com.alibaba.alibclinkpartner.j.l;
import com.taobao.applink.util.TBAppLinkUtil;

public class a implements b {
    public com.alibaba.alibclinkpartner.param.a a;

    public a(com.alibaba.alibclinkpartner.param.a aVar) {
        this.a = aVar;
    }

    private String b() {
        String str;
        if (b.b == null || b.b.a() == null) {
            str = null;
        } else {
            str = (String) b.b.a().e.get(this.a.getModule());
            str = str == null ? null : i.d(str) + this.a.getPostfix();
        }
        return str == null ? this.a.getBackUpH5Url() : str;
    }

    public com.alibaba.alibclinkpartner.e.b a(String str) {
        String str2;
        com.alibaba.alibclinkpartner.e.b bVar = new com.alibaba.alibclinkpartner.e.b();
        e.b("ALPJumpUrlHandler", "getNativeUrlAndAction", "获取native打开的信息");
        com.alibaba.alibclinkpartner.d.a.a aVar = (com.alibaba.alibclinkpartner.d.a.a) b.b.a().d.get(str);
        if (aVar != null) {
            String str3 = aVar.a;
            bVar.b = aVar.b;
            bVar.c = aVar.c;
            str2 = str3;
        } else {
            e.a("ALPJumpUrlHandler", "getNativeUrlAndAction", "从配置中获取的schmeInfo为空");
            str2 = null;
        }
        if (str2 == null) {
            str2 = TBAppLinkUtil.BASE_URL;
        }
        bVar.a = l.a(this.a, str2, b.b.a().f);
        e.b("ALPJumpUrlHandler", "getNativeUrlAndAction", "native打开信息为 info = " + bVar);
        return bVar;
    }

    public String a() {
        return l.b(this.a, b(), b.b.a().f);
    }

    public String b(String str) {
        if (str == null || b.b.a() == null || b.b.a().g == null) {
            return "";
        }
        Object str2;
        if (str2.equals("taobao")) {
            str2 = "taobao";
        } else if (str2.equals(ALPLinkKeyType.TMALL)) {
            str2 = ALPLinkKeyType.TMALL;
        }
        String str3 = (String) b.b.a().g.get(str2);
        return str3 == null ? "" : str3;
    }
}
