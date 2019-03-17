package com.alibaba.alibclinkpartner.d.e.a;

import android.text.TextUtils;
import com.alibaba.alibclinkpartner.b;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import com.alimama.tunion.trade.net.TUnionNetworkRequest;
import java.util.Map;

public class k extends d {
    public String a;
    public String b = b.a().c;

    public k(String str) {
        this.a = str;
    }

    public String a() {
        return "cf.linkpartner.400.1";
    }

    public Map<String, String> b() {
        Map<String, String> b = super.b();
        b.put(TUnionNetworkRequest.TUNION_KEY_PACKAGE_NAME, TextUtils.isEmpty(this.a) ? "unknown" : this.a);
        b.put(AppLinkConstants.TTID, TextUtils.isEmpty(this.b) ? "unknown" : this.b);
        return b;
    }
}
