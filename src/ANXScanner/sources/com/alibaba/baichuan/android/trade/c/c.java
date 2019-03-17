package com.alibaba.baichuan.android.trade.c;

import com.alibaba.baichuan.android.trade.c.a.a;
import com.alibaba.baichuan.android.trade.callback.AlibcTradeCallback;
import com.alibaba.baichuan.trade.common.utils.ExecutorServiceUtils;

public class c {
    private static final String a = c.class.getSimpleName();

    public static void a(AlibcTradeCallback alibcTradeCallback, int i, String str) {
        if (alibcTradeCallback != null) {
            ExecutorServiceUtils.getInstance().postUITask(new e(alibcTradeCallback, i, str));
        }
    }

    public static void a(AlibcTradeCallback alibcTradeCallback, a aVar) {
        if (alibcTradeCallback != null) {
            ExecutorServiceUtils.getInstance().postUITask(new d(alibcTradeCallback, aVar));
        }
    }
}
