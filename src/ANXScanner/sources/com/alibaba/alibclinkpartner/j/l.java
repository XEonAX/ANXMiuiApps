package com.alibaba.alibclinkpartner.j;

import com.alibaba.alibclinkpartner.param.a;
import java.net.URLEncoder;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONObject;

public class l {
    public static String a(a aVar, String str, Map<String, String> map) {
        if (aVar == null || str == null) {
            e.a("ALPDistributionContext", "getJumpUrl", "url is null");
            return null;
        }
        String d = i.d(str);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(d);
        a(stringBuffer, aVar.getParams());
        b(stringBuffer, aVar.getUnUrlEnCodeParams());
        a(stringBuffer, map);
        if (stringBuffer.toString().endsWith("&")) {
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        }
        return stringBuffer.toString();
    }

    public static String a(Map<String, String> map) {
        JSONObject jSONObject = new JSONObject();
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                if (!(i.a((String) entry.getKey()) || i.a((String) entry.getValue()))) {
                    try {
                        jSONObject.put((String) entry.getKey(), entry.getValue());
                    } catch (Throwable th) {
                        e.a("ALPUrlHelper", "extraParams2Json", "urlencode error " + th.toString());
                    }
                }
            }
        }
        return jSONObject.toString();
    }

    private static void a(StringBuffer stringBuffer, Map<String, String> map) {
        if (stringBuffer != null && map != null) {
            for (Entry entry : map.entrySet()) {
                if (!(i.a((String) entry.getKey()) || i.a((String) entry.getValue()))) {
                    try {
                        String encode = URLEncoder.encode((String) entry.getKey(), "UTF-8");
                        stringBuffer.append(encode).append("=").append(URLEncoder.encode((String) entry.getValue(), "UTF-8")).append("&");
                    } catch (Throwable th) {
                        e.a("ALPUrlHelper", "setParams", "url encode error t=" + th.toString());
                    }
                }
            }
        }
    }

    public static String b(a aVar, String str, Map<String, String> map) {
        if (aVar == null || str == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        a(stringBuffer, aVar.getH5DegradeParams());
        a(stringBuffer, map);
        if (stringBuffer.toString().endsWith("&")) {
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        }
        return i.d(str) + stringBuffer.toString();
    }

    public static String b(Map<String, String> map) {
        JSONObject jSONObject = new JSONObject();
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                if (!(i.a((String) entry.getKey()) || i.a((String) entry.getValue()))) {
                    try {
                        jSONObject.put(URLEncoder.encode((String) entry.getKey(), "UTF-8"), URLEncoder.encode((String) entry.getValue(), "UTF-8"));
                    } catch (Throwable th) {
                        e.a("ALPUrlHelper", "extraParams2Json", "urlencode error " + th.toString());
                    }
                }
            }
        }
        return jSONObject.toString();
    }

    private static void b(StringBuffer stringBuffer, Map<String, String> map) {
        if (stringBuffer != null && map != null) {
            for (Entry entry : map.entrySet()) {
                if (!(i.a((String) entry.getKey()) || i.a((String) entry.getValue()))) {
                    try {
                        String str = (String) entry.getKey();
                        stringBuffer.append(str).append("=").append((String) entry.getValue()).append("&");
                    } catch (Throwable th) {
                        e.a("ALPUrlHelper", "setParams", "url encode error t=" + th.toString());
                    }
                }
            }
        }
    }
}
