package com.alipay.sdk.authjs;

import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;

final class f extends TimerTask {
    final /* synthetic */ a a;
    final /* synthetic */ d b;

    f(d dVar, a aVar) {
        this.b = dVar;
        this.a = aVar;
    }

    public final void run() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("toastCallBack", "true");
        } catch (JSONException e) {
        }
        a aVar = new a(a.c);
        aVar.i = this.a.i;
        aVar.m = jSONObject;
        this.b.a.a(aVar);
    }
}
