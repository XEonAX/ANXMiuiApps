package com.alibaba.alibclinkpartner.d.e.a;

import android.text.TextUtils;
import com.alibaba.alibclinkpartner.b;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import java.util.Map;

public class c extends d {
    public String a;
    public String b = b.a().c;

    public c(String str) {
        this.a = str;
    }

    public String a() {
        return "cf.linkpartner.1.10";
    }

    public Map<String, String> b() {
        Map<String, String> b = super.b();
        b.put("appkey", TextUtils.isEmpty(this.a) ? "unknown" : this.a);
        b.put(AppLinkConstants.TTID, TextUtils.isEmpty(this.b) ? "unknown" : this.b);
        return b;
    }
}
