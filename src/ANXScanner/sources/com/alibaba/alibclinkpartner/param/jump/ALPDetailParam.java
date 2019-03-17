package com.alibaba.alibclinkpartner.param.jump;

import com.alibaba.alibclinkpartner.j.e;
import com.alibaba.alibclinkpartner.j.i;
import com.alibaba.alibclinkpartner.param.tb.ALPTBJumpParam;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.taobao.applink.util.TBAppLinkUtil;
import java.util.HashMap;

public class ALPDetailParam extends ALPTBJumpParam {
    private String e;

    public ALPDetailParam(String str) {
        this.e = str;
        this.module = AlibcConstants.DETAIL;
        this.d = "ali.open.nav";
    }

    public boolean checkParam() {
        if (this.e != null && i.b(this.e)) {
            return true;
        }
        e.a("ALPDetailParam", "checkParam", "mDetailId is not right");
        return false;
    }

    public String getAPIType() {
        return AlibcConstants.DETAIL;
    }

    public String getBackUpH5Url() {
        if (this.e == null) {
            return "";
        }
        return String.format(TBAppLinkUtil.GO_DETAIL_H5URL, new Object[]{this.e});
    }

    public HashMap<String, String> getExtraParams() {
        d("itemId", this.e);
        return super.getExtraParams();
    }

    public String getModule() {
        return this.module;
    }

    public String getPostfix() {
        if (!checkParam()) {
            return super.getPostfix();
        }
        return String.format("id=%s&", new Object[]{this.e});
    }

    public String toString() {
        return super.toString() + "\n" + "ALPDetailParam{" + "itemID='" + this.e + '\'' + '}';
    }
}
