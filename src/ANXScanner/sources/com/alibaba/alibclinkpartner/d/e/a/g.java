package com.alibaba.alibclinkpartner.d.e.a;

import android.text.TextUtils;
import com.alibaba.alibclinkpartner.b;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import com.alibaba.baichuan.trade.biz.core.usertracker.UserTrackerConstants;
import java.util.Map;

public class g extends d {
    public String a;
    public String b;
    public boolean c;
    public String d;
    public String e;
    public String f = b.a().c;

    public String a() {
        return "cf.linkpartner.1.3";
    }

    public Map<String, String> b() {
        Map<String, String> b = super.b();
        b.put(UserTrackerConstants.IS_SUCCESS, this.c ? "1" : "0");
        b.put("appkey", TextUtils.isEmpty(this.a) ? "unknown" : this.a);
        b.put("clientType", TextUtils.isEmpty(this.b) ? "unknown" : this.b);
        b.put("failStrategy", TextUtils.isEmpty(this.d) ? "unknown" : this.d);
        b.put("apiType", TextUtils.isEmpty(this.e) ? "unknown" : this.e);
        b.put(AppLinkConstants.TTID, TextUtils.isEmpty(this.f) ? "unknown" : this.f);
        return b;
    }
}
