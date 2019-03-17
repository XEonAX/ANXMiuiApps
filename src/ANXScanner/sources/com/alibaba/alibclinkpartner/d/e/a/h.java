package com.alibaba.alibclinkpartner.d.e.a;

import android.text.TextUtils;
import com.alibaba.alibclinkpartner.b;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import java.util.Map;

public class h extends d {
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;

    public h() {
        if (b.a() != null) {
            this.f = b.a().c;
        }
    }

    public String a() {
        return "cf.linkpartner.1.2";
    }

    public Map<String, String> b() {
        Map<String, String> b = super.b();
        b.put("sourcePN", TextUtils.isEmpty(this.a) ? "unknown" : this.a);
        b.put("currentPN", TextUtils.isEmpty(this.b) ? "unknown" : this.b);
        b.put("targetUrl", TextUtils.isEmpty(this.c) ? "unknown" : this.c);
        b.put("sourceVC", TextUtils.isEmpty(this.e) ? "unknown" : this.e);
        b.put("currentAppkey", TextUtils.isEmpty(this.d) ? "unknown" : this.d);
        b.put(AppLinkConstants.TTID, TextUtils.isEmpty(this.f) ? "unknown" : this.f);
        return b;
    }
}
