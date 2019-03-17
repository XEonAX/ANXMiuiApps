package com.alibaba.baichuan.android.trade.page;

import android.text.TextUtils;
import com.alibaba.baichuan.android.trade.AlibcContext;
import com.alibaba.baichuan.android.trade.AlibcTrade;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.biz.applink.AlibcApplinkData;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContext;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeTaokeParam;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcPidTaokeComponent;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcTaokeTraceCallback;
import com.alibaba.baichuan.trade.biz.core.usertracker.UserTrackerConstants;
import com.alibaba.baichuan.trade.common.adapter.security.AlibcSecurityGuard;
import java.util.HashMap;

public class AlibcDetailPage extends AlibcBasePage {
    private String b;

    public AlibcDetailPage(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (str.matches("^\\d+$")) {
                this.b = str;
            } else {
                this.b = String.valueOf(AlibcSecurityGuard.getInstance().analyzeItemId(str));
            }
        }
    }

    protected String a() {
        return AlibcContext.SHOUTAO_ITEM_DETAIL_URL;
    }

    public boolean checkParams() {
        return (this.b == null || TextUtils.isEmpty(this.b)) ? false : true;
    }

    public String genOpenUrl() {
        if (this.a != null && !TextUtils.isEmpty(this.a)) {
            return this.a;
        }
        String a = a();
        int indexOf = a.indexOf(63);
        if (indexOf > 0) {
            a = a.substring(0, indexOf);
        }
        this.a = String.format(a + "?id=%s", new Object[]{this.b});
        return this.a;
    }

    public String getApi() {
        return UserTrackerConstants.E_SHOWITEMDETAIL;
    }

    public AlibcApplinkData getApplinkData() {
        return new AlibcApplinkData(1, this.b);
    }

    public String getPerformancePageType() {
        return AlibcConstants.DETAIL;
    }

    public String getUsabilityPageType() {
        return AlibcTrade.ERRCODE_PARAM_ERROR;
    }

    public boolean needTaoke(AlibcTradeTaokeParam alibcTradeTaokeParam) {
        return alibcTradeTaokeParam != null;
    }

    public void taokeTraceAndGenUrl(AlibcTradeTaokeParam alibcTradeTaokeParam, AlibcTradeContext alibcTradeContext, AlibcTaokeTraceCallback alibcTaokeTraceCallback) {
        if (this.b != null && !TextUtils.isEmpty(this.b)) {
            HashMap hashMap = new HashMap();
            hashMap.put("itemId", this.b);
            if (alibcTaokeTraceCallback != null) {
                AlibcPidTaokeComponent.INSTANCE.genUrlAndTaokeTrace(hashMap, genOpenUrl(), true, alibcTradeTaokeParam, getApi(), alibcTaokeTraceCallback);
            }
        }
    }
}
