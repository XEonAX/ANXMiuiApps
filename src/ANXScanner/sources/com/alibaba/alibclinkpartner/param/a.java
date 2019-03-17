package com.alibaba.alibclinkpartner.param;

import com.ali.auth.third.login.LoginConstants;
import com.alibaba.alibclinkpartner.b;
import com.alibaba.alibclinkpartner.j.j;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import com.alimama.tunion.trade.net.TUnionNetworkRequest;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public abstract class a {
    protected HashMap<String, String> a = new HashMap();
    protected HashMap<String, String> b = new HashMap();
    public String backUrl;
    protected HashMap<String, String> c = new HashMap();
    private String d = "linkPartner";
    public String h5Url;
    public String linkKey = "taobao";
    public String pluginRules;

    public a(String str, String str2, String str3) {
        this.linkKey = str;
        this.backUrl = str2;
        this.h5Url = str3;
    }

    protected void a(String str, String str2) {
        if (str != null && str2 != null) {
            this.a.put(str, str2);
        }
    }

    protected void b(String str, String str2) {
        if (str != null && str2 != null) {
            this.c.put(str, str2);
        }
    }

    protected void c(String str, String str2) {
        if (str != null && str2 != null) {
            this.b.put(str, str2);
        }
    }

    public boolean canDegrade() {
        return true;
    }

    public boolean checkParam() {
        return this.linkKey != null;
    }

    public String getAPIType() {
        return "normal";
    }

    public String getBackUpH5Url() {
        return this.h5Url;
    }

    public HashMap<String, String> getH5DegradeParams() {
        return this.c;
    }

    public String getModule() {
        return "";
    }

    public HashMap<String, String> getParams() {
        if (this.backUrl != null) {
            a(AppLinkConstants.BACKURL, this.backUrl);
        }
        if (this.d != null) {
            a("sdkName", this.d);
        }
        if (this.pluginRules != null) {
            a("pluginRules", this.pluginRules);
        }
        a(LoginConstants.APP_NAME, j.b(b.e()));
        a(TUnionNetworkRequest.TUNION_KEY_PACKAGE_NAME, j.a(b.e()));
        a("v", b.d());
        return this.a;
    }

    public String getPostfix() {
        return "";
    }

    public HashMap<String, String> getUnUrlEnCodeParams() {
        return this.b;
    }

    public boolean isCallbackMode() {
        return false;
    }

    public void putParam(String str, String str2) {
        if (str != null && str2 != null) {
            a(str, str2);
        }
    }

    public void putParams(Map<String, String> map) {
        if (map != null && map.size() != 0) {
            for (Entry entry : map.entrySet()) {
                if (!(entry.getKey() == null || entry.getValue() == null)) {
                    a((String) entry.getKey(), (String) entry.getValue());
                }
            }
        }
    }

    public String toString() {
        return "ALPJumpParam{linkKey='" + this.linkKey + '\'' + ", backUrl='" + this.backUrl + '\'' + ", h5Url='" + this.h5Url + '\'' + ", pluginRules='" + this.pluginRules + '\'' + ", sdkName='" + this.d + '\'' + ", params=" + this.a + ", unUrlEnCodeParams=" + this.b + ", h5DegradeParams=" + this.c + '}';
    }
}
