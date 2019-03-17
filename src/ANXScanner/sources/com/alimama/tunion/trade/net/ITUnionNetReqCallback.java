package com.alimama.tunion.trade.net;

import org.json.JSONObject;

public interface ITUnionNetReqCallback {
    void onError(int i, String str, JSONObject jSONObject);

    void onSuccess(int i, JSONObject jSONObject);
}
