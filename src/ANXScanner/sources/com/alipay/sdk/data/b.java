package com.alipay.sdk.data;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.util.i;
import org.json.JSONObject;

final class b implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ a b;

    b(a aVar, Context context) {
        this.b = aVar;
        this.a = context;
    }

    public final void run() {
        try {
            com.alipay.sdk.packet.b a = new com.alipay.sdk.packet.impl.b().a(this.a);
            if (a != null) {
                a aVar = this.b;
                Object obj = a.b;
                if (!TextUtils.isEmpty(obj)) {
                    try {
                        JSONObject optJSONObject = new JSONObject(obj).optJSONObject(a.g);
                        aVar.i = optJSONObject.optInt(a.f, a.a);
                        aVar.j = optJSONObject.optString(a.h, a.b).trim();
                    } catch (Throwable th) {
                    }
                }
                a aVar2 = this.b;
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(a.f, aVar2.a());
                    jSONObject.put(a.h, aVar2.j);
                    i.a(com.alipay.sdk.sys.b.a().a, a.e, jSONObject.toString());
                } catch (Exception e) {
                }
            }
        } catch (Throwable th2) {
        }
    }
}
