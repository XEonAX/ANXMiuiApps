package com.alibaba.alibclinkpartner.param.jump;

import android.text.TextUtils;
import com.alibaba.alibclinkpartner.j.e;
import com.alibaba.alibclinkpartner.j.i;
import com.alibaba.alibclinkpartner.param.tb.ALPTBJumpParam;
import java.util.HashMap;

public class ALPURIParam extends ALPTBJumpParam {
    private String e;

    public ALPURIParam(String str) {
        this.e = str;
        this.d = "ali.open.nav";
        this.module = "h5";
    }

    public boolean checkParam() {
        if (!TextUtils.isEmpty(this.e)) {
            return true;
        }
        e.a("ALPURIParam", "checkParam", "url is not right");
        return false;
    }

    public String getAPIType() {
        return "uri";
    }

    public String getBackUpH5Url() {
        return (this.e == null || !i.c(this.e)) ? "" : this.e;
    }

    public String getModule() {
        return this.module;
    }

    public HashMap<String, String> getParams() {
        a("h5Url", this.e);
        return super.getParams();
    }

    public String toString() {
        return super.toString() + "\n" + "ALPURIParam{" + "url='" + this.e + '\'' + '}';
    }
}
