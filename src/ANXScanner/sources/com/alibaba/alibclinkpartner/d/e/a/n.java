package com.alibaba.alibclinkpartner.d.e.a;

import android.text.TextUtils;
import com.alibaba.alibclinkpartner.b;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import java.util.Map;

public class n extends d {
    public String a;
    public String b;
    public String c;
    public String d = b.a().c;

    public n(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public String a() {
        return "cf.linkpartner.2.2";
    }

    public Map<String, String> b() {
        Map<String, String> b = super.b();
        b.put("module", TextUtils.isEmpty(this.a) ? "unknown" : this.a);
        b.put("clientType", TextUtils.isEmpty(this.b) ? "unknown" : this.b);
        b.put("type", TextUtils.isEmpty(this.c) ? "unknown" : this.c);
        b.put(AppLinkConstants.TTID, TextUtils.isEmpty(this.d) ? "unknown" : this.d);
        return b;
    }
}
