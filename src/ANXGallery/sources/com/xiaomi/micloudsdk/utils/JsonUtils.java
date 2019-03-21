package com.xiaomi.micloudsdk.utils;

import android.util.ArrayMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class JsonUtils {
    public static Map<String, Object> jsonToMap(JSONObject jsonObj) {
        if (jsonObj == null) {
            return null;
        }
        Map<String, Object> map = new ArrayMap();
        Iterator iter = jsonObj.keys();
        while (iter.hasNext()) {
            String key = (String) iter.next();
            map.put(key, convertObj(jsonObj.opt(key)));
        }
        return map;
    }

    private static Object convertObj(Object obj) {
        if (obj instanceof JSONObject) {
            return jsonToMap((JSONObject) obj);
        }
        if (!(obj instanceof JSONArray)) {
            return obj == JSONObject.NULL ? null : obj;
        } else {
            JSONArray array = (JSONArray) obj;
            int size = array.length();
            Object list = new ArrayList();
            for (int i = 0; i < size; i++) {
                list.add(convertObj(array.opt(i)));
            }
            return list;
        }
    }
}
