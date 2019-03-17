package com.alibaba.alibclinkpartner.b;

import android.text.TextUtils;
import android.util.Base64;
import com.ali.auth.third.login.LoginConstants;
import com.alibaba.alibclinkpartner.j.d;
import com.alibaba.alibclinkpartner.j.e;
import com.alibaba.alibclinkpartner.j.f;
import com.alimama.tunion.trade.net.TUnionNetworkRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class b {
    public static final String[] a = new String[]{"sign", "categories"};
    public String b;
    public String c;
    public String d;
    private long e;
    private String f;
    private List<String> g;

    public b(String str, String str2, String str3, String str4, List<String> list) {
        List list2;
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        this.b = str;
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        this.c = str2;
        if (TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        this.d = str3;
        this.e = System.currentTimeMillis();
        if (TextUtils.isEmpty(str4)) {
            str4 = "";
        }
        this.f = str4;
        if (list2 == null) {
            list2 = new ArrayList();
        }
        this.g = list2;
    }

    private String a(JSONObject jSONObject) {
        String str = "";
        StringBuffer stringBuffer = new StringBuffer();
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            str = (String) keys.next();
            if (!a(str)) {
                try {
                    stringBuffer.append(str).append(String.valueOf(jSONObject.get(str)));
                } catch (JSONException e) {
                    e.a("ALPDeepLinkInfo", "getSign", "json error : e = " + e);
                }
            }
        }
        stringBuffer.append("ali_applink_deeplink_sign");
        char[] toCharArray = stringBuffer.toString().toCharArray();
        Arrays.sort(toCharArray);
        return f.a(new String(toCharArray).getBytes());
    }

    private static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        for (String equals : a) {
            if (equals.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public String a() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(LoginConstants.KEY_APPKEY, this.b);
            jSONObject.put("url", this.c);
            jSONObject.put("currentTime", String.valueOf(this.e));
            jSONObject.put(TUnionNetworkRequest.TUNION_KEY_PACKAGE_NAME, this.d);
            jSONObject.put("action", this.f);
            jSONObject.put("categories", d.a(this.g));
            jSONObject.put("sign", a(jSONObject));
            return Base64.encodeToString(jSONObject.toString().getBytes(), 0);
        } catch (Exception e) {
            e.a("ALPDeepLinkInfo", "getJsonString", "json error : e = " + e);
            return "";
        }
    }
}
