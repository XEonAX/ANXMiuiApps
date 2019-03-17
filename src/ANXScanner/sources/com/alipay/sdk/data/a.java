package com.alipay.sdk.data;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.sys.b;
import com.alipay.sdk.util.i;
import org.json.JSONObject;

public final class a {
    public static final int a = 3500;
    public static final String b = "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&";
    public static final int c = 1000;
    public static final int d = 20000;
    public static final String e = "alipay_cashier_dynamic_config";
    public static final String f = "timeout";
    public static final String g = "st_sdk_config";
    public static final String h = "tbreturl";
    private static a k;
    int i = a;
    public String j = b;

    public final int a() {
        if (this.i < 1000 || this.i > d) {
            return a;
        }
        new StringBuilder("DynamicConfig::getJumpTimeout >").append(this.i);
        return this.i;
    }

    private String c() {
        return this.j;
    }

    public static a b() {
        if (k == null) {
            a aVar = new a();
            k = aVar;
            Object b = i.b(b.a().a, e, null);
            if (!TextUtils.isEmpty(b)) {
                try {
                    JSONObject jSONObject = new JSONObject(b);
                    aVar.i = jSONObject.optInt(f, a);
                    aVar.j = jSONObject.optString(h, b).trim();
                } catch (Throwable th) {
                }
            }
        }
        return k;
    }

    private void d() {
        Object b = i.b(b.a().a, e, null);
        if (!TextUtils.isEmpty(b)) {
            try {
                JSONObject jSONObject = new JSONObject(b);
                this.i = jSONObject.optInt(f, a);
                this.j = jSONObject.optString(h, b).trim();
            } catch (Throwable th) {
            }
        }
    }

    private void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                this.i = jSONObject.optInt(f, a);
                this.j = jSONObject.optString(h, b).trim();
            } catch (Throwable th) {
            }
        }
    }

    private void e() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(f, a());
            jSONObject.put(h, this.j);
            i.a(b.a().a, e, jSONObject.toString());
        } catch (Exception e) {
        }
    }

    private void b(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject optJSONObject = new JSONObject(str).optJSONObject(g);
                this.i = optJSONObject.optInt(f, a);
                this.j = optJSONObject.optString(h, b).trim();
            } catch (Throwable th) {
            }
        }
    }

    public final void a(Context context) {
        new Thread(new b(this, context)).start();
    }

    private static /* synthetic */ void a(a aVar, String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject optJSONObject = new JSONObject(str).optJSONObject(g);
                aVar.i = optJSONObject.optInt(f, a);
                aVar.j = optJSONObject.optString(h, b).trim();
            } catch (Throwable th) {
            }
        }
    }
}
