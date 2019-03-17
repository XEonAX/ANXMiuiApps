package com.alibaba.baichuan.android.trade.usertracker;

import com.alibaba.baichuan.trade.biz.AlibcTradeBiz;
import com.alibaba.baichuan.trade.common.adapter.ut.impl.SpmTranslator;

public class b extends SpmTranslator {
    public static final String a = ("api_loginSuccess_aliTradesdk_" + AlibcTradeBiz.systemVersion);
    public static final String b = ("api_applink_aliTradesdk_" + AlibcTradeBiz.systemVersion);
    public static final String c = ("api_sdkInit_aliTradesdk_" + AlibcTradeBiz.systemVersion);
    public static final String d = ("api_baichuan_to_applink_aliTradesdk_" + AlibcTradeBiz.systemVersion);
    public static final String e = ("api_showCart_aliTradesdk_" + AlibcTradeBiz.systemVersion);
    public static final String f = ("api_addItem2Cart_aliTradesdk_" + AlibcTradeBiz.systemVersion);
    public static final String g = ("api_showOrder_aliTradesdk_" + AlibcTradeBiz.systemVersion);
    public static final String h = ("api_showShop_aliTradesdk_" + AlibcTradeBiz.systemVersion);
    public static final String i = ("api_showItemDetail_aliTradesdk_" + AlibcTradeBiz.systemVersion);
    public static final String j = ("api_showPage_aliTradesdk_" + AlibcTradeBiz.systemVersion);
    public static final String k = ("api_show_aliTradesdk_" + AlibcTradeBiz.systemVersion);

    public String getSpm(String str) {
        return a.equals(str) ? "/minitrade.1.19" : c.equals(str) ? "/minitrade.1.11" : e.equals(str) ? "/minitrade.1.17" : f.equals(str) ? "/minitrade.1.18" : g.equals(str) ? "/minitrade.1.15" : h.equals(str) ? "/minitrade.1.16" : i.equals(str) ? "/minitrade.1.14" : j.equals(str) ? "/minitrade.1.12" : k.equals(str) ? "/minitrade.1.12" : d.equals(str) ? "/minitrade.1.13" : b.equals(str) ? "/minitrade.1.13" : "minitrade.1.20";
    }
}
