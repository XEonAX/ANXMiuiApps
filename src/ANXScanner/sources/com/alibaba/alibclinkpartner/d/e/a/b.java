package com.alibaba.alibclinkpartner.d.e.a;

import android.text.TextUtils;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import java.util.Map;

public class b extends d {
    public String a;
    public String b = com.alibaba.alibclinkpartner.b.a().c;

    public b(String str) {
        this.a = str;
    }

    public String a() {
        return "cf.linkpartner.1.11";
    }

    public Map<String, String> b() {
        Map<String, String> b = super.b();
        b.put("appkey", TextUtils.isEmpty(this.a) ? "unknown" : this.a);
        b.put(AppLinkConstants.TTID, TextUtils.isEmpty(this.b) ? "unknown" : this.b);
        return b;
    }
}
