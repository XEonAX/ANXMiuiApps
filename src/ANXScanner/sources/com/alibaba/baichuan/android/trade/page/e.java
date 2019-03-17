package com.alibaba.baichuan.android.trade.page;

import android.app.Activity;
import android.text.TextUtils;
import com.alibaba.baichuan.trade.biz.applink.adapter.AlibcApplink;
import com.alibaba.baichuan.trade.biz.applink.adapter.AlibcFailModeType;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContext;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeShowParam;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeTaokeParam;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcTaokeTraceCallback;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import java.util.Map;

class e implements AlibcTaokeTraceCallback {
    final /* synthetic */ AlibcTradeContext a;
    final /* synthetic */ AlibcTradeShowParam b;
    final /* synthetic */ Activity c;
    final /* synthetic */ String d;
    final /* synthetic */ AlibcBasePage e;

    e(AlibcBasePage alibcBasePage, AlibcTradeContext alibcTradeContext, AlibcTradeShowParam alibcTradeShowParam, Activity activity, String str) {
        this.e = alibcBasePage;
        this.a = alibcTradeContext;
        this.b = alibcTradeShowParam;
        this.c = activity;
        this.d = str;
    }

    public void getTaokeUrl(int i, String str) {
        AlibcFailModeType alibcFailModeType;
        AlibcFailModeType alibcFailModeType2 = AlibcFailModeType.AlibcNativeFailModeJumpH5;
        if (!(this.a == null || this.a.showParam == null || this.a.showParam.getNativeOpenFailedMode() == null)) {
            alibcFailModeType2 = this.a.showParam.getNativeOpenFailedMode();
        }
        AlibcLogger.d("AlibcBasePage", "native打开流程传递下来的failMode = " + alibcFailModeType2);
        if (alibcFailModeType2 == null || alibcFailModeType2.equals(AlibcFailModeType.AlibcNativeFailModeJumpH5)) {
            AlibcLogger.d("AlibcBasePage", "failModeType = H5,需要转换成NONE");
            alibcFailModeType = AlibcFailModeType.AlibcNativeFailModeNONE;
        } else {
            alibcFailModeType = alibcFailModeType2;
        }
        String str2 = AlibcBasePage.DEFAULT_BACK_URL;
        if (!(this.b == null || TextUtils.isEmpty(this.b.getBackUrl()))) {
            str2 = this.b.getBackUrl();
        }
        AlibcLogger.d("AlibcBasePage", "native打开backUrl = " + str2);
        AlibcTradeTaokeParam alibcTradeTaokeParam = this.a == null ? null : this.a.taokeParam;
        Map map = this.a == null ? null : this.a.urlParam;
        if (TextUtils.isEmpty(str)) {
            AlibcApplink.getInstance().jumpTBURI(this.c, this.e.genOpenUrl(), alibcFailModeType, str2, this.d, alibcTradeTaokeParam, map);
        } else {
            AlibcApplink.getInstance().jumpTBURI(this.c, str, alibcFailModeType, str2, this.d, alibcTradeTaokeParam, map);
        }
    }
}
