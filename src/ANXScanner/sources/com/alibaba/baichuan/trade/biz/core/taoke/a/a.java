package com.alibaba.baichuan.trade.biz.core.taoke.a;

import com.alimama.tunion.trade.base.ITUnionCommon;

public class a implements ITUnionCommon {
    private String a;
    private String b;
    private String c;

    public a(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public String getAdzoneId() {
        return this.b;
    }

    public String getAppKey() {
        return this.c;
    }

    public String getUtdid() {
        return this.a;
    }
}
