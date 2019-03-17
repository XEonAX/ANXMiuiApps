package com.alibaba.baichuan.trade.biz.core.taoke;

import android.text.TextUtils;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeTaokeParam;
import com.alibaba.baichuan.trade.biz.core.config.AlibcConfigService;
import com.alibaba.baichuan.trade.biz.core.taoke.b.b;
import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkResponse;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import java.util.HashMap;

class c implements Runnable {
    final /* synthetic */ HashMap a;
    final /* synthetic */ AlibcTaokeTraceCallback b;
    final /* synthetic */ String c;
    final /* synthetic */ AlibcTradeTaokeParam d;
    final /* synthetic */ String e;
    final /* synthetic */ AlibcPidTaokeComponent f;

    c(AlibcPidTaokeComponent alibcPidTaokeComponent, HashMap hashMap, AlibcTaokeTraceCallback alibcTaokeTraceCallback, String str, AlibcTradeTaokeParam alibcTradeTaokeParam, String str2) {
        this.f = alibcPidTaokeComponent;
        this.a = hashMap;
        this.b = alibcTaokeTraceCallback;
        this.c = str;
        this.d = alibcTradeTaokeParam;
        this.e = str2;
    }

    public void run() {
        boolean isSyncForTaoke = AlibcConfigService.getInstance().getIsSyncForTaoke();
        AlibcLogger.d("taoke", "isSyncForTaoke状态值为 = " + isSyncForTaoke);
        if (isSyncForTaoke) {
            AlibcLogger.d("taoke", "淘客同步打点");
            NetworkResponse sendRequest = new b().sendRequest(new HashMap(this.a));
            Object a = b.a(sendRequest);
            if (TextUtils.isEmpty(a)) {
                AlibcLogger.e("taoke", "淘客同步打点失败");
                this.f.a(sendRequest == null ? "NetworkResponse_is_null" : sendRequest.errorMsg, "1702" + (sendRequest == null ? "NetworkResponse_is_null" : sendRequest.errorCode));
            } else {
                AlibcLogger.d("taoke", "淘客同步打点成功,sclickUrl = " + sendRequest.data);
                this.f.a("Taoke_Trace");
                this.b.getTaokeUrl(1, a);
                return;
            }
        }
        AlibcLogger.d("taoke", "淘客异步打点流程");
        this.f.taokeTrace(this.a, this.c, this.d, this.e);
        this.b.getTaokeUrl(0, this.c);
    }
}
