package com.alibaba.baichuan.android.trade.page;

import android.text.TextUtils;
import com.alibaba.baichuan.android.trade.AlibcContext;
import com.alibaba.baichuan.android.trade.AlibcTrade;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeTaokeParam;
import com.alibaba.baichuan.trade.biz.core.usertracker.UserTrackerConstants;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;

public class AlibcMyOrdersPage extends AlibcBasePage {
    public static final String[] ORDER_TYPE = new String[]{"all", "waitPay", "waitSend", "waitConfirm", "waitRate"};
    public static final String TAB_CODE = "?tabCode=%s";
    int b;
    boolean c;

    public AlibcMyOrdersPage(int i, boolean z) {
        this.b = i;
        this.c = z;
    }

    public boolean checkParams() {
        return this.b >= 0 && this.b <= 4;
    }

    public String genOpenUrl() {
        if (this.a != null && !TextUtils.isEmpty(this.a)) {
            return this.a;
        }
        String str = AlibcContext.MY_ORDERS_URL;
        int indexOf = str.indexOf(63);
        if (indexOf > 0) {
            str = str.substring(0, indexOf);
        }
        str = str + TAB_CODE;
        if (this.b < 0 || this.b >= 5) {
            this.a = str.substring(0, str.indexOf("?"));
        } else if (this.c) {
            this.a = String.format(str, new Object[]{ORDER_TYPE[this.b]});
        } else {
            this.a = String.format(str + "&condition={\"extra\":{\"attributes\":{\"ttid\":\"%s\"}}}", new Object[]{ORDER_TYPE[this.b], AlibcTradeCommon.getAppKey()});
        }
        return this.a;
    }

    public String getApi() {
        return UserTrackerConstants.E_SHOWORDER;
    }

    public String getPerformancePageType() {
        return AlibcConstants.MY_ORDER;
    }

    public String getUsabilityPageType() {
        return AlibcTrade.ERRCODE_APPLINK_FAIL;
    }

    public boolean isBackWhenLoginFail() {
        return true;
    }

    public boolean needTaoke(AlibcTradeTaokeParam alibcTradeTaokeParam) {
        return false;
    }
}
