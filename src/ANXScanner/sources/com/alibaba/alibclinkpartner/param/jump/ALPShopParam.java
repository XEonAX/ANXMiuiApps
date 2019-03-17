package com.alibaba.alibclinkpartner.param.jump;

import com.alibaba.alibclinkpartner.j.e;
import com.alibaba.alibclinkpartner.j.i;
import com.alibaba.alibclinkpartner.param.tb.ALPTBJumpParam;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.taobao.applink.util.TBAppLinkUtil;
import java.util.HashMap;

public class ALPShopParam extends ALPTBJumpParam {
    private String e;

    public ALPShopParam(String str) {
        this.e = str;
        this.module = AlibcConstants.SHOP;
        this.d = "ali.open.nav";
    }

    public boolean checkParam() {
        if (i.b(this.e)) {
            return true;
        }
        e.a("ALPShopParam", "checkParam", "mShopId is not rig");
        return false;
    }

    public String getAPIType() {
        return AlibcConstants.SHOP;
    }

    public String getBackUpH5Url() {
        if (!checkParam()) {
            return "";
        }
        return String.format(TBAppLinkUtil.GO_SHOP_H5URL, new Object[]{this.e});
    }

    public HashMap<String, String> getExtraParams() {
        d("shopId", this.e);
        return super.getExtraParams();
    }

    public String getModule() {
        return this.module;
    }

    public String getPostfix() {
        if (!checkParam()) {
            return super.getPostfix();
        }
        return String.format("shop_id=%s&", new Object[]{this.e});
    }

    public String toString() {
        return super.toString() + "\n" + "ALPShopParam{" + "shopID='" + this.e + '\'' + '}';
    }
}
