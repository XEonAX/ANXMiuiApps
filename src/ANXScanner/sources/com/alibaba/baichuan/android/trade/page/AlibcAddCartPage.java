package com.alibaba.baichuan.android.trade.page;

import android.net.Uri;
import android.text.TextUtils;
import com.alibaba.baichuan.android.trade.AlibcContext;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContext;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeTaokeParam;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcPidTaokeComponent;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcTaokeTraceCallback;
import com.alibaba.baichuan.trade.biz.core.usertracker.UserTrackerConstants;
import com.alibaba.baichuan.trade.common.adapter.security.AlibcSecurityGuard;
import java.util.HashMap;

public class AlibcAddCartPage extends AlibcBasePage {
    private String b;

    public AlibcAddCartPage(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (str.matches("^\\d+$")) {
                this.b = str;
            } else {
                this.b = String.valueOf(AlibcSecurityGuard.getInstance().analyzeItemId(str));
            }
        }
    }

    public boolean checkParams() {
        return (this.b == null || TextUtils.isEmpty(this.b)) ? false : true;
    }

    public String genOpenUrl() {
        if (this.a != null && !TextUtils.isEmpty(this.a)) {
            return this.a;
        }
        String str = AlibcContext.TB_ITEM_DETAIL_URL;
        int indexOf = str.indexOf(63);
        if (indexOf > 0) {
            str = str.substring(0, indexOf);
        }
        this.a = Uri.parse(String.format(str + "?id=%s", new Object[]{String.valueOf(this.b)})).buildUpon().appendQueryParameter("action_tae", "cart").appendQueryParameter("from_tae", "true").fragment("sku").build().toString();
        return this.a;
    }

    public String getApi() {
        return UserTrackerConstants.E_ADDITEM2CART;
    }

    public String getPerformancePageType() {
        return AlibcConstants.ADD_CART;
    }

    public String getUsabilityPageType() {
        return "04";
    }

    public boolean needTaoke(AlibcTradeTaokeParam alibcTradeTaokeParam) {
        return alibcTradeTaokeParam != null && alibcTradeTaokeParam.isPidExist();
    }

    public int requireOpenType() {
        return 1;
    }

    public boolean supportAid() {
        return false;
    }

    public void taokeTraceAndGenUrl(AlibcTradeTaokeParam alibcTradeTaokeParam, AlibcTradeContext alibcTradeContext, AlibcTaokeTraceCallback alibcTaokeTraceCallback) {
        if (this.b != null && !TextUtils.isEmpty(this.b)) {
            HashMap hashMap = new HashMap();
            hashMap.put("itemId", this.b);
            AlibcPidTaokeComponent.INSTANCE.genUrlAndTaokeTrace(hashMap, genOpenUrl(), false, alibcTradeTaokeParam, getApi(), alibcTaokeTraceCallback);
        }
    }
}
