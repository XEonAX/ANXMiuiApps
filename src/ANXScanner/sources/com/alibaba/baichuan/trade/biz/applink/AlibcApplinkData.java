package com.alibaba.baichuan.trade.biz.applink;

public class AlibcApplinkData {
    public static final int TYPE_DETAIL = 1;
    public static final int TYPE_SHOP = 2;
    public static final int TYPE_URL = 3;
    public String param;
    public int type;

    public AlibcApplinkData(int i, String str) {
        this.type = i;
        this.param = str;
    }
}
