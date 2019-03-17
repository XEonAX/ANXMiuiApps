package com.alibaba.alibclinkpartner.d.a;

import com.alibaba.alibclinkpartner.j.e;
import com.alibaba.alibclinkpartner.j.f;
import com.alibaba.baichuan.trade.biz.core.config.AlibcConfigBusiness;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class b {
    public static String a(String str) {
        try {
            return a(new JSONObject(str));
        } catch (JSONException e) {
            e.a("ALPConfigCheckHelper", "getCheckString", "str to json error,errorMsg = " + e.toString());
            return "";
        }
    }

    private static String a(JSONArray jSONArray) {
        String str = "";
        int i = 0;
        while (i < jSONArray.length()) {
            Object obj = jSONArray.get(i);
            r0 = obj instanceof String ? str + obj : obj instanceof JSONObject ? str + a((JSONObject) obj) : obj instanceof JSONArray ? str + a((JSONArray) obj) : str + obj + "";
            i++;
            str = r0;
        }
        return str;
    }

    private static String a(JSONObject jSONObject) {
        Iterator keys = jSONObject.keys();
        String str = "";
        while (keys.hasNext()) {
            String str2 = (String) keys.next();
            if (!str2.equals("group0")) {
                str = str + str2;
                Object obj = jSONObject.get(str2);
                str2 = obj instanceof JSONObject ? str + a((JSONObject) obj) : obj instanceof String ? str + ((String) obj) : obj instanceof JSONArray ? str + a((JSONArray) obj) : str + obj + "";
                str = str2;
            }
        }
        return str;
    }

    public static boolean b(String str) {
        if (str == null) {
            e.a("ALPConfigCheckHelper", "checkConfig", "configStr is null");
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.get("group0") != null) {
                String c = c(str);
                jSONObject = (JSONObject) jSONObject.get("group0");
                if (!(c == null || jSONObject == null)) {
                    String str2 = (String) jSONObject.get("sign");
                    if (str2 != null && str2.equals(c)) {
                        return true;
                    }
                }
            }
            return false;
        } catch (JSONException e) {
            e.a("ALPConfigCheckHelper", "checkConfig", "json校验失败 e=" + e.toString());
            return false;
        }
    }

    private static String c(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(a(str));
        try {
            stringBuilder.append(AlibcConfigBusiness.MD5_SALT);
            char[] toCharArray = stringBuilder.toString().toCharArray();
            Arrays.sort(toCharArray);
            return f.a(new String(toCharArray).getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            e.a("ALPConfigCheckHelper", "getMd5Sign", "UnsupportedEncodingException e = " + e.toString());
            return "";
        }
    }
}
