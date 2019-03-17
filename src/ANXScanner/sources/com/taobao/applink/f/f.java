package com.taobao.applink.f;

import android.util.Log;
import com.alipay.sdk.packet.d;
import com.taobao.applink.util.TBAppLinkUtil;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class f {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;

    public static List f(String str) {
        List arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= jSONArray.length()) {
                    break;
                }
                f fVar = new f();
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                fVar.e(jSONObject.has("handlerName") ? jSONObject.getString("handlerName") : null);
                fVar.c(jSONObject.has("callbackId") ? jSONObject.getString("callbackId") : null);
                fVar.b(jSONObject.has("responseData") ? jSONObject.getString("responseData") : null);
                fVar.a(jSONObject.has("responseId") ? jSONObject.getString("responseId") : null);
                fVar.d(jSONObject.has(d.k) ? jSONObject.getString(d.k) : null);
                arrayList.add(fVar);
                i = i2 + 1;
            }
        } catch (JSONException e) {
            Log.d(TBAppLinkUtil.TAG, e.toString());
        }
        return arrayList;
    }

    public String a() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public String b() {
        return this.c;
    }

    public void b(String str) {
        this.c = str;
    }

    public String c() {
        return this.a;
    }

    public void c(String str) {
        this.a = str;
    }

    public String d() {
        return this.d;
    }

    public void d(String str) {
        this.d = str;
    }

    public String e() {
        return this.e;
    }

    public void e(String str) {
        this.e = str;
    }

    public String f() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("callbackId", c());
            jSONObject.put(d.k, d());
            jSONObject.put("handlerName", e());
            jSONObject.put("responseData", b());
            jSONObject.put("responseId", a());
            return jSONObject.toString();
        } catch (JSONException e) {
            Log.d(TBAppLinkUtil.TAG, e.toString());
            return null;
        }
    }
}
