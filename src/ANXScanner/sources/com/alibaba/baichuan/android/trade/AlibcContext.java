package com.alibaba.baichuan.android.trade;

import android.content.Context;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;

public class AlibcContext {
    public static String ETICKET_URL;
    public static String HOME_URL = "https://h5.m.taobao.com/";
    public static String MINI_SHOUTAO_ITEM_DETAIL_URL;
    public static String MY_ORDERS_URL;
    public static String PROMOTION_URL;
    public static String SHOUTAO_ITEM_DETAIL_URL;
    public static String SHOW_CART_URL;
    public static String TB_ITEM_DETAIL_URL;
    public static String TB_SHOP_URL;
    public static String TMALL_ITEM_DETAIL_URL;
    public static volatile Context context;
    public static String[] detailPatterns = new String[]{"^http(s)?://h5\\.(.*)\\.taobao.com/cm/snap/index\\.html(.*)", "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/core/detail\\.htm(.*)", "^http(s)?://detail\\.(.*)\\.tmall\\.(com|hk)/item\\.htm(.*)"};
    public static volatile boolean isShowTitleBar = true;
    public static boolean isVip = false;
    public static String[] nativeOpenPatterns = new String[]{"^http(s)?://h5\\.(.*)\\.taobao.com/cm/snap/index\\.html(.*)", "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/core/detail\\.htm(.*)", "^http(s)?://detail\\.(.*)\\.tmall\\.(com|hk)/item\\.htm(.*)", "^http(s)?://shop\\.m\\.taobao\\.com/shop/shop_index\\.htm(.*)", "^http(s)?://s\\.taobao\\.com/(.*)", "^http(s)?://s\\.click\\.taobao\\.com/(.*)"};
    public static String sclickPattern = "^http(s)?://s\\.click\\.taobao\\.com/(.*)";
    public static final String[] shopPatterns = new String[]{"^http(s)?://shop\\.(.*)\\.taobao.com/shop/shop_index.htm(.*)", "^http(s)?://shop\\.(.*)\\.tmall.com/shop/shop_index.htm(.*)", "^http(s)?://shop(.*)\\.(.*)\\.taobao.com/shop/shopIndex.htm(.*)"};
    public static String[] tunionUrlPatterns = new String[]{"^http[s]{0,1}:\\/\\/s\\.click\\.taobao\\.com\\/(.*)", "^http[s]{0,1}:\\/\\/uland\\.taobao\\.com\\/(.*)"};

    public static void initData() {
        updateUrl();
    }

    public static void updateUrl() {
        TMALL_ITEM_DETAIL_URL = AlibcUrlCenter.instance.getValue("trade.tmallTradeItemUrlHost", AlibcTradeCommon.getEnvironment());
        TB_ITEM_DETAIL_URL = AlibcUrlCenter.instance.getValue("trade.taobaoTradeItemUrlHost", AlibcTradeCommon.getEnvironment());
        SHOUTAO_ITEM_DETAIL_URL = AlibcUrlCenter.instance.getValue("trade.taobaoMobileTradeItemUrlHost", AlibcTradeCommon.getEnvironment());
        MY_ORDERS_URL = AlibcUrlCenter.instance.getValue("trade.myOrdersUrl", AlibcTradeCommon.getEnvironment());
        ETICKET_URL = AlibcUrlCenter.instance.getValue("trade.eTicketDetailUrl", AlibcTradeCommon.getEnvironment());
        PROMOTION_URL = AlibcUrlCenter.instance.getValue("trade.promotionsUrl", AlibcTradeCommon.getEnvironment());
        TB_SHOP_URL = AlibcUrlCenter.instance.getValue("trade.shopUrlHost", AlibcTradeCommon.getEnvironment());
        SHOW_CART_URL = AlibcUrlCenter.instance.getValue("trade.cartUrl", AlibcTradeCommon.getEnvironment());
        MINI_SHOUTAO_ITEM_DETAIL_URL = AlibcUrlCenter.instance.getValue("trade.miniTaobaoItemUrlHost", AlibcTradeCommon.getEnvironment());
    }
}
