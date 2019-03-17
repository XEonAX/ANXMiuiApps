package com.alibaba.alibclinkpartner.d.e.a;

import android.text.TextUtils;
import com.alibaba.alibclinkpartner.b;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import java.util.Map;

public class i extends d {
    public String a;
    public String b;
    public String c;
    public String d = b.a().c;

    public String a() {
        return "cf.linkpartner.1.1";
    }

    public Map<String, String> b() {
        Map<String, String> b = super.b();
        b.put("targetUrl", TextUtils.isEmpty(this.a) ? "unknown" : this.a);
        b.put("currentAppkey", TextUtils.isEmpty(this.b) ? "unknown" : this.b);
        b.put("currentVC", TextUtils.isEmpty(this.c) ? "unknown" : this.c);
        b.put(AppLinkConstants.TTID, TextUtils.isEmpty(this.d) ? "unknown" : this.d);
        return b;
    }
}
