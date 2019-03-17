package com.alibaba.baichuan.android.trade;

import com.alibaba.baichuan.android.trade.callback.AlibcTradeInitCallback;
import com.alibaba.baichuan.android.trade.model.InitResult;

final class e implements Runnable {
    final /* synthetic */ InitResult a;
    final /* synthetic */ AlibcTradeInitCallback b;

    e(InitResult initResult, AlibcTradeInitCallback alibcTradeInitCallback) {
        this.a = initResult;
        this.b = alibcTradeInitCallback;
    }

    public void run() {
        InitResult initResult = this.a;
        InitResult newFailureResult = initResult == null ? InitResult.newFailureResult(0, "未知错误") : initResult;
        this.b.onFailure(newFailureResult.errorCode, newFailureResult.errorMessage);
        for (AlibcTradeInitCallback onFailure : a.pendingInitCallbacks) {
            onFailure.onFailure(newFailureResult.errorCode, newFailureResult.errorMessage);
        }
        a.pendingInitCallbacks.clear();
    }
}
