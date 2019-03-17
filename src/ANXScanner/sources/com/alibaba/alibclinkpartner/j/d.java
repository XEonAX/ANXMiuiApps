package com.alibaba.alibclinkpartner.j;

import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONArray;
import org.json.JSONObject;

public class d {
    public static JSONArray a(List list) {
        JSONArray jSONArray = new JSONArray();
        for (Object next : list) {
            if (next instanceof Map) {
                jSONArray.put(a((Map) next));
            } else {
                jSONArray.put(next);
            }
        }
        return jSONArray;
    }

    public static JSONArray a(Object[] objArr) {
        JSONArray jSONArray = new JSONArray();
        for (Object obj : objArr) {
            if (obj instanceof Map) {
                jSONArray.put(a((Map) obj));
            } else {
                jSONArray.put(obj);
            }
        }
        return jSONArray;
    }

    public static JSONObject a(Map<String, ? extends Object> map) {
        JSONObject jSONObject = new JSONObject();
        try {
            for (Entry entry : map.entrySet()) {
                Object value = entry.getValue();
                if (value != null) {
                    if (value instanceof Map) {
                        jSONObject.put((String) entry.getKey(), a((Map) value));
                    } else if (value instanceof List) {
                        jSONObject.put((String) entry.getKey(), a((List) value));
                    } else if (value.getClass().isArray()) {
                        jSONObject.put((String) entry.getKey(), a((Object[]) value));
                    } else {
                        jSONObject.put((String) entry.getKey(), value);
                    }
                }
            }
            return jSONObject;
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }
}
