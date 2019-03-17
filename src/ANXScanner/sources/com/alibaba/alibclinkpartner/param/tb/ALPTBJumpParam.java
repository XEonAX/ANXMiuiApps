package com.alibaba.alibclinkpartner.param.tb;

import android.text.TextUtils;
import com.alibaba.alibclinkpartner.b;
import com.alibaba.alibclinkpartner.constants.open.ALPLinkKeyType;
import com.alibaba.alibclinkpartner.j.l;
import com.alibaba.alibclinkpartner.param.a;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import com.taobao.applink.util.TBAppLinkUtil;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class ALPTBJumpParam extends a {
    public String currentViewName;
    protected String d;
    private String e = "lp";
    public HashMap<String, String> extraParams = new HashMap();
    public String module;

    public ALPTBJumpParam() {
        if (b.b()) {
            this.pluginRules = b.f.a("nav");
            if (TextUtils.isEmpty(this.pluginRules)) {
                this.pluginRules = "nav";
            } else {
                this.pluginRules += "," + "nav";
            }
        }
    }

    protected void d(String str, String str2) {
        if (str != null && str2 != null) {
            this.extraParams.put(str, str2);
        }
    }

    public HashMap<String, String> getExtraParams() {
        d(AppLinkConstants.TIME, String.valueOf(System.currentTimeMillis()));
        if (!TextUtils.isEmpty(this.currentViewName)) {
            d("sourceVC", this.currentViewName);
        }
        return this.extraParams;
    }

    public HashMap<String, String> getH5DegradeParams() {
        for (Entry entry : getExtraParams().entrySet()) {
            if (!(entry.getKey() == null || entry.getValue() == null)) {
                b((String) entry.getKey(), (String) entry.getValue());
            }
        }
        if (this.a.get(AppLinkConstants.TAG) != null) {
            b(AppLinkConstants.TAG, (String) this.a.get(AppLinkConstants.TAG));
        }
        if (this.a.get(AppLinkConstants.TTID) != null) {
            b(AppLinkConstants.TTID, (String) this.a.get(AppLinkConstants.TTID));
        } else if (b.a().c != null) {
            b(AppLinkConstants.TTID, b.a().c);
        }
        if (b.a().d != null) {
            b("utdid", b.a().d);
        }
        if (this.e != null) {
            b(AppLinkConstants.SOURCE, this.e);
        }
        return super.getH5DegradeParams();
    }

    public String getModule() {
        return "nav";
    }

    public HashMap<String, String> getParams() {
        if (this.module != null) {
            a("module", this.module);
        }
        if (this.d != null) {
            a("action", this.d);
        }
        if (this.e != null) {
            a(AppLinkConstants.SOURCE, this.e);
        }
        if (b.a().b != null) {
            a("appkey", b.a().b);
        }
        if (b.a().c != null) {
            a(AppLinkConstants.TTID, b.a().c);
        }
        if (b.a().d != null) {
            a("utdid", b.a().d);
        }
        if (TextUtils.isEmpty(this.linkKey) || !(this.linkKey.equals(ALPLinkKeyType.TMALL) || this.linkKey.equals(TBAppLinkUtil.TMALL_SCHEME))) {
            getExtraParams();
            if (this.extraParams != null && this.extraParams.size() > 0) {
                a("params", l.a(this.extraParams));
            }
        } else {
            a("paramsKVEncode", "ture");
        }
        return super.getParams();
    }

    public HashMap<String, String> getUnUrlEnCodeParams() {
        if (!TextUtils.isEmpty(this.linkKey) && (this.linkKey.equals(ALPLinkKeyType.TMALL) || this.linkKey.equals(TBAppLinkUtil.TMALL_SCHEME))) {
            getExtraParams();
            if (this.extraParams != null && this.extraParams.size() > 0) {
                c("params", l.b(this.extraParams));
            }
        }
        return super.getUnUrlEnCodeParams();
    }

    public boolean isInFirstParam(String str) {
        if (str == null) {
            return false;
        }
        for (Object equals : com.alibaba.alibclinkpartner.constants.b.a) {
            if (str.equals(equals)) {
                return true;
            }
        }
        return false;
    }

    public void putParam(String str, String str2) {
        if (str != null && str2 != null) {
            if (isInFirstParam(str)) {
                a(str, str2);
            } else {
                d(str, str2);
            }
        }
    }

    public void putParams(Map<String, String> map) {
        if (map != null && map.size() != 0) {
            for (Entry entry : map.entrySet()) {
                if (!(entry.getKey() == null || entry.getValue() == null)) {
                    if (isInFirstParam((String) entry.getKey())) {
                        a((String) entry.getKey(), (String) entry.getValue());
                    } else {
                        d((String) entry.getKey(), (String) entry.getValue());
                    }
                }
            }
        }
    }

    public String toString() {
        return super.toString() + "\n" + "ALPTBJumpParam{" + "module='" + this.module + '\'' + ", action='" + this.d + '\'' + ", extraParams=" + this.extraParams + ", source='" + this.e + '\'' + '}';
    }
}
