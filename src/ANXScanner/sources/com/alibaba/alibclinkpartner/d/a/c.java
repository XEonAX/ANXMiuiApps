package com.alibaba.alibclinkpartner.d.a;

import com.alibaba.alibclinkpartner.d.e.a.f;
import com.alibaba.alibclinkpartner.j.e;
import com.alimama.tunion.trade.net.TUnionNetworkRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class c implements Cloneable {
    public int a;
    public int b;
    public int c;
    public Map<String, a> d = new HashMap();
    public Map<String, String> e = new HashMap();
    public Map<String, String> f = new HashMap();
    public Map<String, String> g = new HashMap();

    private c() {
    }

    public static c a(String str) {
        c cVar = new c();
        if (str == null) {
            return cVar;
        }
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONObject("androidAppLinkConfig");
            cVar.a = Integer.valueOf(jSONObject.getString("exp")).intValue();
            cVar.c = Integer.valueOf(jSONObject.getString("canDeeplink")).intValue();
            cVar.b = Integer.valueOf(jSONObject.getString("degradeType")).intValue();
            cVar.d = a(jSONObject.getJSONObject("appScheme"));
            cVar.g = b(jSONObject.getJSONObject("downloadUrl"));
            cVar.f = b(jSONObject.getJSONObject("dynamicParam"));
            cVar.e = b(jSONObject.getJSONObject("h5Scheme"));
            return cVar;
        } catch (Exception e) {
            com.alibaba.alibclinkpartner.d.e.c.a(new f(false, false, false, 0));
            e.a("ALPConfigInfo", "formatFromJsonString", "json解析错误 e = " + e.toString());
            return null;
        }
    }

    private static List<String> a(JSONArray jSONArray) {
        List<String> arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(jSONArray.getString(i));
            }
        }
        return arrayList;
    }

    private static Map<String, a> a(JSONObject jSONObject) {
        Map<String, a> hashMap = new HashMap();
        if (jSONObject != null) {
            Iterator keys = jSONObject.keys();
            while (keys.hasNext()) {
                String str = (String) keys.next();
                JSONObject jSONObject2 = jSONObject.getJSONObject(str);
                a aVar = new a();
                aVar.a = jSONObject2.getString("uri");
                aVar.d = jSONObject2.getString(TUnionNetworkRequest.TUNION_KEY_PACKAGE_NAME);
                aVar.b.addAll(a(jSONObject2.getJSONArray("action")));
                aVar.c.addAll(a(jSONObject2.getJSONArray("category")));
                hashMap.put(str, aVar);
            }
        }
        return hashMap;
    }

    private static Map<String, String> b(JSONObject jSONObject) {
        Map<String, String> hashMap = new HashMap();
        if (jSONObject == null) {
            return hashMap;
        }
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            try {
                String str = (String) keys.next();
                String str2 = (String) jSONObject.get(str);
                if (!(str == null || str2 == null)) {
                    hashMap.put(str, str2);
                }
            } catch (JSONException e) {
                e.a("ALPConfigInfo", "jsonObjectToMap", "jsonObjectToMap error e = " + e.toString());
            }
        }
        return hashMap;
    }

    protected Object clone() {
        c cVar = (c) super.clone();
        cVar.d = new HashMap();
        cVar.d.putAll(this.d);
        cVar.g = new HashMap();
        cVar.g.putAll(this.g);
        cVar.f = new HashMap();
        cVar.f.putAll(this.f);
        cVar.e = new HashMap();
        cVar.e.putAll(this.e);
        return cVar;
    }

    public String toString() {
        return "ALPConfigInfo{exp=" + this.a + ", degradeType=" + this.b + ", canDeepLink=" + this.c + ", appScheme=" + this.d + ", h5Scheme=" + this.e + ", dynamicParam=" + this.f + ", downloadUrl=" + this.g + '}';
    }
}
