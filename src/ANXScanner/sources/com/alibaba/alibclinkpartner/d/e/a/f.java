package com.alibaba.alibclinkpartner.d.e.a;

import android.text.TextUtils;
import com.alibaba.alibclinkpartner.b;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import com.alibaba.baichuan.trade.biz.core.usertracker.UserTrackerConstants;
import java.util.Map;

public class f extends d {
    public boolean a;
    public boolean b;
    public boolean c;
    public int d;
    public String e = b.a().c;

    public f(boolean z, boolean z2, boolean z3, int i) {
        this.a = z;
        this.b = z2;
        this.c = z3;
        this.d = i;
    }

    public String a() {
        return "cf.linkpartner.2.1";
    }

    public Map<String, String> b() {
        Map<String, String> b = super.b();
        b.put(UserTrackerConstants.IS_SUCCESS, this.a ? "1" : "0");
        b.put("appkeyExist", this.b ? "1" : "0");
        b.put("configExist", this.c ? "1" : "0");
        b.put("exp", String.valueOf(this.d));
        b.put(AppLinkConstants.TTID, TextUtils.isEmpty(this.e) ? "unknown" : this.e);
        return b;
    }
}
