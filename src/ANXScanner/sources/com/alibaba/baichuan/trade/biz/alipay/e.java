package com.alibaba.baichuan.trade.biz.alipay;

import com.alibaba.baichuan.trade.biz.context.AlibcResultType;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContext;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeResult;

class e implements AlipayCallback {
    final /* synthetic */ AlibcTradeContext a;
    final /* synthetic */ d b;

    e(d dVar, AlibcTradeContext alibcTradeContext) {
        this.b = dVar;
        this.a = alibcTradeContext;
    }

    public void a(int i, String str) {
        if (this.a != null && this.a.callback != null) {
            this.a.callback.onFailure(i, str);
        }
    }

    public void a(AliPayResult aliPayResult) {
        if (this.a != null && this.a.callback != null) {
            AlibcTradeResult alibcTradeResult = new AlibcTradeResult();
            alibcTradeResult.resultType = AlibcResultType.TYPEPAY;
            alibcTradeResult.payResult = aliPayResult;
            this.a.callback.onTradeSuccess(alibcTradeResult);
        }
    }
}
