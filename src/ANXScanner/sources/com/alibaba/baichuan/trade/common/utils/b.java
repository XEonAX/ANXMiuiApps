package com.alibaba.baichuan.trade.common.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class b extends Handler {
    final /* synthetic */ ExecutorServiceUtils a;

    b(ExecutorServiceUtils executorServiceUtils, Looper looper) {
        this.a = executorServiceUtils;
        super(looper);
    }

    public void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Throwable th) {
            AlibcLogger.d(ExecutorServiceUtils.TAG, th.getMessage());
        }
    }
}
