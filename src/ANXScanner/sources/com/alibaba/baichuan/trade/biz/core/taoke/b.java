package com.alibaba.baichuan.trade.biz.core.taoke;

import com.alibaba.baichuan.trade.biz.context.AlibcTradeTaokeParam;
import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkResponse;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import java.util.HashMap;

class b implements Runnable {
    final /* synthetic */ HashMap a;
    final /* synthetic */ AlibcTradeTaokeParam b;
    final /* synthetic */ AlibcTaokeAsyncCallback c;
    final /* synthetic */ AlibcPidTaokeComponent d;

    b(AlibcPidTaokeComponent alibcPidTaokeComponent, HashMap hashMap, AlibcTradeTaokeParam alibcTradeTaokeParam, AlibcTaokeAsyncCallback alibcTaokeAsyncCallback) {
        this.d = alibcPidTaokeComponent;
        this.a = hashMap;
        this.b = alibcTradeTaokeParam;
        this.c = alibcTaokeAsyncCallback;
    }

    public void run() {
        String str = null;
        NetworkResponse sendAsyncTaokeRPC = this.d.sendAsyncTaokeRPC(this.a, null, this.b, null);
        if (sendAsyncTaokeRPC == null || !sendAsyncTaokeRPC.isSuccess) {
            String str2 = sendAsyncTaokeRPC == null ? "null taokeTrace response" : "code: " + sendAsyncTaokeRPC.errorCode + " msg: " + sendAsyncTaokeRPC.errorMsg;
            String str3 = "taoke";
            if (str2 != null) {
                str = str2;
            }
            AlibcLogger.e(str3, str);
            if (this.c != null) {
                this.c.onFailure(0, "淘客打点失败，错误信息:" + str2);
            }
            AlibcLogger.d("taoke", "taoke异步打点失败");
            return;
        }
        if (this.c != null) {
            this.c.onSuccess();
        }
        AlibcLogger.d("taoke", "taoke异步打点成功");
    }
}
