package com.alibaba.alibclinkpartner.d.e.a;

import android.text.TextUtils;
import com.alibaba.alibclinkpartner.b;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import java.util.HashMap;
import java.util.Map;

public abstract class d {
    private String a;
    private String b;

    public d() {
        String str = null;
        this.a = b.a() == null ? null : b.a().b;
        if (b.a() != null) {
            str = b.a().c;
        }
        this.b = str;
    }

    public abstract String a();

    public Map<String, String> b() {
        Map<String, String> hashMap = new HashMap();
        hashMap.put("appkey", TextUtils.isEmpty(this.a) ? "unknown" : this.a);
        hashMap.put(AppLinkConstants.TTID, TextUtils.isEmpty(this.b) ? "unknown" : this.b);
        return hashMap;
    }
}
