package com.alibaba.baichuan.android.trade.page;

import android.text.TextUtils;
import com.alibaba.baichuan.android.trade.AlibcContext;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.biz.applink.AlibcApplinkData;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeTaokeParam;
import com.alibaba.baichuan.trade.biz.core.usertracker.UserTrackerConstants;

public class AlibcShopPage extends AlibcBasePage {
    private String b;
    private String c;

    public AlibcShopPage(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.b = str;
        }
    }

    public boolean checkParams() {
        return (this.b == null || TextUtils.isEmpty(this.b)) ? false : true;
    }

    public String genOpenUrl() {
        if (this.c != null && !TextUtils.isEmpty(this.c)) {
            return this.c;
        }
        String str = AlibcContext.TB_SHOP_URL;
        int indexOf = str.indexOf(63);
        if (indexOf > 0) {
            str = str.substring(0, indexOf);
        }
        this.c = String.format(str + "?shop_id=%s", new Object[]{this.b});
        return this.c;
    }

    public String getApi() {
        return UserTrackerConstants.E_SHOWSHOP;
    }

    public AlibcApplinkData getApplinkData() {
        return new AlibcApplinkData(2, this.b);
    }

    public String getPerformancePageType() {
        return AlibcConstants.SHOP;
    }

    public String getUsabilityPageType() {
        return "02";
    }

    public boolean needTaoke(AlibcTradeTaokeParam alibcTradeTaokeParam) {
        return alibcTradeTaokeParam != null && alibcTradeTaokeParam.isAdZoneIdExist();
    }
}
