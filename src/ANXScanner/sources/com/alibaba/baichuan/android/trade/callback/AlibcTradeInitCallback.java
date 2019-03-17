package com.alibaba.baichuan.android.trade.callback;

import java.io.Serializable;

public interface AlibcTradeInitCallback extends Serializable {
    void onFailure(int i, String str);

    void onSuccess();
}
