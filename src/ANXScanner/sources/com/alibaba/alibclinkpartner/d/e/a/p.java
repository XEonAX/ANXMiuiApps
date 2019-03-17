package com.alibaba.alibclinkpartner.d.e.a;

import android.text.TextUtils;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import java.util.Map;

public class p extends d {
    public String a;
    public String b;
    public String c;
    public String d;

    public String a() {
        return "cf.linkpartner.3.1";
    }

    public Map<String, String> b() {
        Map<String, String> b = super.b();
        b.put(AppLinkConstants.TIME, TextUtils.isEmpty(this.a) ? "unknown" : this.a);
        b.put("targetAppInfo", TextUtils.isEmpty(this.b) ? "unknown" : this.b);
        b.put("targetUrl", TextUtils.isEmpty(this.c) ? "unknown" : this.c);
        b.put("utdid", TextUtils.isEmpty(this.d) ? "unknown" : this.d);
        return b;
    }
}
