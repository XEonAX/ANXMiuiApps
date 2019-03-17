package com.alibaba.baichuan.trade.biz.core.taoke;

import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alimama.tunion.trade.convert.TUnionConvertCallback;
import com.alimama.tunion.trade.convert.TUnionConvertResult;

final class a implements TUnionConvertCallback {
    final /* synthetic */ AlibcTaokeTraceCallback a;

    a(AlibcTaokeTraceCallback alibcTaokeTraceCallback) {
        this.a = alibcTaokeTraceCallback;
    }

    public void onResult(TUnionConvertResult tUnionConvertResult) {
        if (tUnionConvertResult == null) {
            AlibcLogger.d("TUnion", "genTaokeUrl error(result is null)");
            return;
        }
        String resultUrl = tUnionConvertResult.getResultUrl();
        if (this.a != null) {
            AlibcLogger.d("TUnion", "genTaokeUrl : url = " + resultUrl);
            this.a.getTaokeUrl(1, resultUrl);
        }
    }
}
