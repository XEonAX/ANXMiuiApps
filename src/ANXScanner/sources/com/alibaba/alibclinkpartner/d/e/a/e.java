package com.alibaba.alibclinkpartner.d.e.a;

import android.text.TextUtils;
import com.taobao.applink.util.TBAppLinkUtil;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONObject;

public class e extends d {
    public boolean a;
    public boolean b;
    public String c;
    public String d = "lpSDK";

    private String c() {
        Map hashMap = new HashMap();
        hashMap.put(TBAppLinkUtil.TAOPACKAGENAME, this.a ? "1" : "0");
        hashMap.put(TBAppLinkUtil.TMALLPACKAGENAME, this.b ? "1" : "0");
        JSONObject jSONObject = new JSONObject();
        for (Entry entry : hashMap.entrySet()) {
            if (!(TextUtils.isEmpty((CharSequence) entry.getKey()) || TextUtils.isEmpty((CharSequence) entry.getValue()))) {
                try {
                    jSONObject.put(URLEncoder.encode((String) entry.getKey(), "UTF-8"), URLEncoder.encode((String) entry.getValue(), "UTF-8"));
                } catch (Exception e) {
                    com.alibaba.alibclinkpartner.j.e.a("ALPCheckInstallAppPoint", "getInstallInfo", "urlEncode出错, e = " + e);
                }
            }
        }
        return jSONObject.toString();
    }

    public String a() {
        return "cf.linkpartner.2.6";
    }

    public Map<String, String> b() {
        Map<String, String> b = super.b();
        b.put("installInfo", c());
        b.put("utdid", TextUtils.isEmpty(this.c) ? "unknown" : this.c);
        b.put("dataFrom", this.d);
        return b;
    }
}
