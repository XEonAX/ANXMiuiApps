package com.alibaba.baichuan.trade.biz.core.taoke.a;

import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkClient.NetworkRequestListener;
import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkResponse;
import com.alimama.tunion.trade.net.ITUnionNetReqCallback;
import org.json.JSONException;
import org.json.JSONObject;

class d implements NetworkRequestListener {
    final /* synthetic */ ITUnionNetReqCallback a;
    final /* synthetic */ c b;

    d(c cVar, ITUnionNetReqCallback iTUnionNetReqCallback) {
        this.b = cVar;
        this.a = iTUnionNetReqCallback;
    }

    public void onError(int i, NetworkResponse networkResponse) {
        if (networkResponse != null) {
            try {
                JSONObject jSONObject = new JSONObject(networkResponse.jsonData);
                if (this.a != null) {
                    this.a.onError(i, networkResponse.errorMsg, jSONObject);
                }
            } catch (JSONException e) {
                e.printStackTrace();
                if (this.a != null) {
                    this.a.onError(0, "jsonData解析出错", null);
                }
            }
        }
    }

    public void onSuccess(int i, NetworkResponse networkResponse) {
        if (networkResponse != null) {
            try {
                JSONObject jSONObject = new JSONObject(networkResponse.jsonData);
                if (this.a != null) {
                    ITUnionNetReqCallback iTUnionNetReqCallback = this.a;
                    if (jSONObject == null) {
                        jSONObject = new JSONObject();
                    }
                    iTUnionNetReqCallback.onSuccess(i, jSONObject);
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }
}
