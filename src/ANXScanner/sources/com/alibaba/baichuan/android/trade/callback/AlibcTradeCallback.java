package com.alibaba.baichuan.android.trade.callback;

import com.alibaba.baichuan.trade.biz.context.AlibcTradeResult;
import java.io.Serializable;

public interface AlibcTradeCallback extends Serializable {
    void onFailure(int i, String str);

    void onTradeSuccess(AlibcTradeResult alibcTradeResult);
}
