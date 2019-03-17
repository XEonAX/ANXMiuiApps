package com.alibaba.alibclinkpartner.param.auth;

import com.alibaba.alibclinkpartner.b;
import com.alibaba.alibclinkpartner.j.e;
import com.alibaba.alibclinkpartner.j.f;
import com.alibaba.alibclinkpartner.j.l;
import com.alibaba.alibclinkpartner.param.a;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import com.alipay.sdk.app.statistic.c;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

public class ALPAuthParam extends a {
    public String apkSign;
    private String d;
    private long e;
    private String f = "lp";
    private Map<String, String> g = new HashMap();
    public String pluginName = "taobao.oauth.code.create";
    public String sign;

    public ALPAuthParam() {
        if (b.b()) {
            this.pluginRules = b.f.a(c.d);
        }
    }

    private String a() {
        try {
            this.e = System.currentTimeMillis() / 1000;
            this.d = f.a((this.sign + "AlibcLinkPartner" + this.e).getBytes("UTF-8"));
            return this.d;
        } catch (UnsupportedEncodingException e) {
            e.a("ALPAuthParam", "getLinkSign", "linksign md5 error");
            return "";
        }
    }

    public boolean canDegrade() {
        return false;
    }

    public boolean checkParam() {
        return (this.apkSign == null || this.sign == null) ? false : true;
    }

    public String getAPIType() {
        return c.d;
    }

    public Map<String, String> getExParams() {
        return this.g;
    }

    public String getModule() {
        return c.d;
    }

    public HashMap<String, String> getParams() {
        a("appkey", b.a().b);
        a("pluginName", this.pluginName);
        a("apkSign", this.apkSign);
        a("sign", this.sign);
        a("linkSign", a());
        a("timeStamp", String.valueOf(this.e));
        a(AppLinkConstants.SOURCE, this.f);
        if (this.g != null && this.g.size() > 0) {
            a("params", l.a(this.g));
        }
        return super.getParams();
    }

    public HashMap<String, String> getUnUrlEnCodeParams() {
        return super.getUnUrlEnCodeParams();
    }

    public String toString() {
        return super.toString() + "\n" + "ALPAuthParam{" + "pluginName='" + this.pluginName + '\'' + ", apkSign='" + this.apkSign + '\'' + ", sign='" + this.sign + '\'' + ", linkSign='" + this.d + '\'' + ", timeStamp=" + this.e + ", source='" + this.f + '\'' + ", exParams=" + this.g + '}';
    }
}
