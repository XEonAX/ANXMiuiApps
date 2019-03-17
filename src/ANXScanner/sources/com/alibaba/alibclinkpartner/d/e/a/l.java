package com.alibaba.alibclinkpartner.d.e.a;

import android.text.TextUtils;
import com.alibaba.alibclinkpartner.b;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import java.util.Map;

public class l extends d {
    public String a;
    public String b;
    public String c = b.a().c;

    public String a() {
        return "cf.linkpartner.2.5";
    }

    public Map<String, String> b() {
        Map<String, String> b = super.b();
        b.put("clientType", TextUtils.isEmpty(this.b) ? "unknown" : this.b);
        b.put("module", TextUtils.isEmpty(this.a) ? "unknown" : this.a);
        b.put(AppLinkConstants.TTID, TextUtils.isEmpty(this.c) ? "unknown" : this.c);
        return b;
    }
}
