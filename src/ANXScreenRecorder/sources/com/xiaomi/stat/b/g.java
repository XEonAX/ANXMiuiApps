package com.xiaomi.stat.b;

import com.xiaomi.stat.d.k;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class g {
    static final String a = "key_update_time";
    static final String b = "get_all_config";
    static final String c = "mistats/v3";
    static final String d = "key_get";
    static final String e = "http://";
    static final String f = "https://";
    static final String g = "/";
    private static final String h = "RegionManagerHelper";

    HashMap<String, String> a(String str, JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject(str);
        if (optJSONObject != null) {
            HashMap<String, String> hashMap = new HashMap();
            k.b(h, "parse the map contains key:" + str);
            Iterator keys = optJSONObject.keys();
            while (keys.hasNext()) {
                try {
                    String str2 = (String) keys.next();
                    String string = optJSONObject.getString(str2);
                    k.b(h, "[region]:" + str2 + "\n[domain]:" + string);
                    hashMap.put(str2, string);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
            return hashMap;
        }
        k.d(h, "can not find the specific key" + str);
        return null;
    }

    HashMap<String, String> a(HashMap<String, String> hashMap, HashMap<String, String> hashMap2) {
        HashMap<String, String> hashMap3 = new HashMap();
        if (hashMap2 != null) {
            hashMap3.putAll(hashMap2);
        }
        Set<String> keySet = hashMap.keySet();
        Set keySet2 = hashMap3.keySet();
        for (String str : keySet) {
            if (!keySet2.contains(str)) {
                hashMap3.put(str, hashMap.get(str));
            }
        }
        return hashMap3;
    }
}
