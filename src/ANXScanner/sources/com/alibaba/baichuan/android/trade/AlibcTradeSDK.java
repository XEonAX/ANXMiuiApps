package com.alibaba.baichuan.android.trade;

import android.app.Application;
import com.alibaba.baichuan.android.trade.b.a;
import com.alibaba.baichuan.android.trade.b.b;
import com.alibaba.baichuan.android.trade.callback.AlibcTradeInitCallback;
import com.alibaba.baichuan.android.trade.model.InitResult;
import com.alibaba.baichuan.trade.biz.AlibcMiniTradeBiz.AlibcTradeBizResult;
import com.alibaba.baichuan.trade.biz.AlibcTradeBiz;
import com.alibaba.baichuan.trade.common.messagebus.AlibcMessageBusManager;
import com.alibaba.baichuan.trade.common.utils.ExecutorServiceUtils;

public class AlibcTradeSDK extends a {
    public static synchronized void asyncInit(Application application, AlibcTradeInitCallback alibcTradeInitCallback) {
        synchronized (AlibcTradeSDK.class) {
            if (a.a(alibcTradeInitCallback)) {
                initState.setState(1);
                AlibcContext.context = application.getApplicationContext();
                ExecutorServiceUtils.getInstance().postHandlerTask(new f(application, alibcTradeInitCallback));
            }
        }
    }

    private static synchronized void b(Application application, AlibcTradeInitCallback alibcTradeInitCallback) {
        synchronized (AlibcTradeSDK.class) {
            AlibcTradeBizResult init = AlibcTradeBiz.init(application);
            AlibcContext.initData();
            AlibcMessageBusManager.getInstance().registerListener(new a());
            AlibcMessageBusManager.getInstance().registerListener(new b());
            com.alibaba.baichuan.android.trade.usertracker.monitor.b.a();
            if (init == null || !init.isSuccess) {
                int i = 0;
                String str = "未知";
                if (!(init == null || init.isSuccess)) {
                    i = init.errCode;
                    str = init.errMsg;
                }
                initResult = InitResult.newFailureResult(i, str);
                a.a(alibcTradeInitCallback, initResult);
            } else {
                a.b(alibcTradeInitCallback);
            }
        }
    }
}
