package com.alibaba.baichuan.trade.biz.core.taoke;

import com.alibaba.baichuan.trade.biz.context.AlibcTradeTaokeParam;
import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkResponse;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import java.util.HashMap;

class d implements Runnable {
    final /* synthetic */ HashMap a;
    final /* synthetic */ String b;
    final /* synthetic */ AlibcTradeTaokeParam c;
    final /* synthetic */ String d;
    final /* synthetic */ AlibcPidTaokeComponent e;

    d(AlibcPidTaokeComponent alibcPidTaokeComponent, HashMap hashMap, String str, AlibcTradeTaokeParam alibcTradeTaokeParam, String str2) {
        this.e = alibcPidTaokeComponent;
        this.a = hashMap;
        this.b = str;
        this.c = alibcTradeTaokeParam;
        this.d = str2;
    }

    public void run() {
        NetworkResponse sendAsyncTaokeRPC = this.e.sendAsyncTaokeRPC(this.a, this.b, this.c, this.d);
        if (sendAsyncTaokeRPC == null || !sendAsyncTaokeRPC.isSuccess) {
            String str = sendAsyncTaokeRPC == null ? "null taokeTrace response" : "code: " + sendAsyncTaokeRPC.errorCode + " msg: " + sendAsyncTaokeRPC.errorMsg;
            String str2 = "taoke";
            StringBuilder append = new StringBuilder().append("淘客异步打点失败:");
            if (str == null) {
                str = null;
            }
            AlibcLogger.e(str2, append.append(str).toString());
            return;
        }
        this.e.a("Taoke_Trace");
        AlibcLogger.d("taoke", "淘客异步打点成功");
    }
}
