package com.alibaba.baichuan.android.trade.page;

import com.alibaba.baichuan.android.trade.AlibcContext;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeTaokeParam;
import com.alibaba.baichuan.trade.biz.core.usertracker.UserTrackerConstants;

public class AlibcMyCartsPage extends AlibcBasePage {
    public String genOpenUrl() {
        return AlibcContext.SHOW_CART_URL;
    }

    public String getApi() {
        return UserTrackerConstants.E_SHOWCART;
    }

    public String getPerformancePageType() {
        return AlibcConstants.MY_CART;
    }

    public String getUsabilityPageType() {
        return "05";
    }

    public boolean isBackWhenLoginFail() {
        return true;
    }

    public boolean needTaoke(AlibcTradeTaokeParam alibcTradeTaokeParam) {
        return false;
    }
}
