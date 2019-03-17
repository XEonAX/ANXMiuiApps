package com.taobao.applink.c;

import com.alibaba.baichuan.trade.biz.core.config.AlibcConfigBusiness;
import com.taobao.applink.util.c;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class a {
    public Map a = new HashMap();
    public String b;
    public String c;
    public long d;
    public String e;
    public String f;

    private String b() {
        StringBuilder stringBuilder = new StringBuilder();
        for (String str : this.a.keySet()) {
            if (!"group0".equals(str)) {
                stringBuilder.append(str);
                Map map = (Map) this.a.get(str);
                for (String str2 : map.keySet()) {
                    stringBuilder.append(str2).append((String) map.get(str2));
                }
            }
        }
        try {
            stringBuilder.append(AlibcConfigBusiness.MD5_SALT);
            char[] toCharArray = stringBuilder.toString().toCharArray();
            Arrays.sort(toCharArray);
            return c.a(new String(toCharArray).getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void a(JSONObject jSONObject) {
        try {
            Iterator keys = jSONObject.keys();
            while (keys.hasNext()) {
                Map hashMap = new HashMap();
                String str = (String) keys.next();
                JSONObject jSONObject2 = jSONObject.getJSONObject(str);
                Iterator keys2 = jSONObject2.keys();
                while (keys2.hasNext()) {
                    String str2 = (String) keys2.next();
                    hashMap.put(str2, jSONObject2.getString(str2));
                }
                this.a.put(str, hashMap);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public boolean a() {
        if (!this.a.isEmpty()) {
            String b = b();
            Map map = (Map) this.a.get("group0");
            if (map != null) {
                String str = (String) map.get("sign");
                if (str != null && str.equals(b)) {
                    return true;
                }
            }
        }
        return false;
    }
}
