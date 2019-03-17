package com.alibaba.baichuan.trade.common.webview.a;

import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkClient.NetworkRequestListener;
import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkResponse;
import com.alibaba.baichuan.trade.common.webview.jsbridge.AlibcJsCallbackContext;
import com.alibaba.baichuan.trade.common.webview.jsbridge.AlibcJsResult;
import java.util.Map;

class d implements NetworkRequestListener {
    final /* synthetic */ AlibcJsCallbackContext a;
    final /* synthetic */ c b;

    d(c cVar, AlibcJsCallbackContext alibcJsCallbackContext) {
        this.b = cVar;
        this.a = alibcJsCallbackContext;
    }

    public void onError(int i, NetworkResponse networkResponse) {
        AlibcJsResult alibcJsResult = new AlibcJsResult();
        alibcJsResult.setResultCode(networkResponse.errorCode);
        alibcJsResult.setResultMsg(networkResponse.errorMsg);
        Map map = networkResponse.data;
        for (String str : map.keySet()) {
            alibcJsResult.addData(str, map.get(str));
        }
        this.a.error(alibcJsResult);
    }

    public void onSuccess(int i, NetworkResponse networkResponse) {
        AlibcJsResult alibcJsResult = new AlibcJsResult();
        Map map = networkResponse.data;
        for (String str : map.keySet()) {
            alibcJsResult.addData(str, map.get(str));
        }
        alibcJsResult.setSuccess();
        this.a.success(alibcJsResult);
    }
}
