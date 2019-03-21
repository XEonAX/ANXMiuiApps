package com.miui.gallery.util;

import com.google.gson.Gson;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;

public class GsonUtils {
    private static final Gson GSON = new Gson();

    public static <T> T fromJson(String jsonStr, Type type) {
        return GSON.fromJson(jsonStr, type);
    }

    public static ArrayList getArray(String jsonStr, Type type) throws JSONException {
        return getArray(new JSONArray(jsonStr), type);
    }

    public static ArrayList getArray(JSONArray jsonArray, Type type) throws JSONException {
        if (jsonArray == null) {
            return null;
        }
        ArrayList list = new ArrayList();
        int count = jsonArray.length();
        for (int i = 0; i < count; i++) {
            list.add(GSON.fromJson(jsonArray.get(i).toString(), type));
        }
        return list;
    }

    public static String toJson(Map map) throws JSONException {
        if (map == null) {
            return null;
        }
        return GSON.toJson((Object) map);
    }

    public static String toString(Object object) {
        return GSON.toJson(object);
    }
}
