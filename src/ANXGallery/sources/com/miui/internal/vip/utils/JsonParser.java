package com.miui.internal.vip.utils;

import android.text.TextUtils;
import android.util.ArrayMap;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JsonParser {
    private static final String ARRAY_END = "]";
    private static final String ARRAY_START = "[";
    private static final String D_QUOTE = "\"";
    public static final String EMPTY_ARRAY = "[]";
    public static final String EMPTY_OBJECT = "{}";
    static final String ENCODE_END = "\\\"";
    static final String ENCODE_START = "\\\"";
    private static final String TAG = "JsonParser";
    private static final Map<Class, Field[]> sCachedFields = new ArrayMap();

    private JsonParser() {
    }

    public static boolean isEmptyJson(String json) {
        return TextUtils.isEmpty(json) || json.equals(EMPTY_OBJECT);
    }

    public static boolean isJsonArray(String jsonStr) {
        return !TextUtils.isEmpty(jsonStr) && jsonStr.startsWith(ARRAY_START) && jsonStr.endsWith(ARRAY_END);
    }

    public static <T> List<T> parseJsonArrayAsList(String jsonArray, Class<T> cls) {
        T[] array;
        if (cls.isPrimitive()) {
            array = ReflectionUtils.toObjectArray(parseJsonArray(jsonArray, (Class) cls));
        } else {
            array = (Object[]) parseJsonArray(jsonArray, (Class) cls);
        }
        return Utils.toArrayList(array);
    }

    public static boolean isJsonValid(String json) {
        if (!TextUtils.isEmpty(json)) {
            try {
                if (isJsonArray(json)) {
                    JSONArray jSONArray = new JSONArray(json);
                } else {
                    JSONObject jSONObject = new JSONObject(json);
                }
            } catch (JSONException e) {
                Utils.logV("%s, isJsonValid fail, e = %s", TAG, e);
                return false;
            }
        }
        return true;
    }

    public static <T> Object parseJsonArray(String jsonArray, Class<T> cls) {
        if (isJsonArray(jsonArray)) {
            try {
                return parseJsonArray(new JSONArray(jsonArray), (Class) cls);
            } catch (JSONException e) {
                Utils.log("%s, parseJsonArray, json fail, %s, cls = %s, jsonArray = %s", TAG, e, cls, jsonArray);
            }
        }
        return null;
    }

    private static <T> Object parseJsonArray(JSONArray array, Class<T> cls) throws JSONException {
        T[] tArray = ReflectionUtils.createArray(cls, array.length());
        int i = 0;
        int emptyItems = 0;
        for (int i2 = 0; i2 < array.length(); i2++) {
            if (ReflectionUtils.isBuiltIn(cls)) {
                try {
                    tArray[i2] = getValue(array, i2, (Class) cls);
                } catch (ClassCastException e) {
                    Utils.log("%s, Failed to parse json %s as cls %s, %s", TAG, array.get(i2), cls, e);
                }
            } else {
                JSONObject obj = array.get(i2);
                JSONObject jobj = null;
                if (obj instanceof String) {
                    jobj = tryStrToObject((String) obj);
                } else if (obj instanceof JSONObject) {
                    jobj = obj;
                }
                if (jobj != null) {
                    tArray[i2] = parseJsonObject(jobj, (Class) cls);
                } else if (ReflectionUtils.isTypeMatched(cls, obj.getClass())) {
                    tArray[i2] = obj;
                } else {
                    Utils.logW("parseJsonArray for item %d failed, type mismatched, cls = %s, item class = %s", Integer.valueOf(i2), cls, obj.getClass());
                }
            }
            if (tArray[i2] == null) {
                emptyItems++;
            }
        }
        if (emptyItems > 0) {
            if (array.length() - emptyItems > 0) {
                T[] noEmptyArray = ReflectionUtils.createArray(cls, array.length() - emptyItems);
                int j = 0;
                while (i < array.length()) {
                    if (tArray[i] != null) {
                        noEmptyArray[j] = tArray[i];
                        j++;
                    }
                    i++;
                }
                tArray = noEmptyArray;
            } else {
                tArray = null;
            }
        }
        return ReflectionUtils.convertArray(tArray, cls);
    }

    private static JSONObject tryStrToObject(String jstr) throws JSONException {
        try {
            return new JSONObject(jstr);
        } catch (JSONException e) {
            return null;
        }
    }

    public static <T> T parseJsonObject(String json, Class<T> cls) {
        if (!isEmptyJson(json)) {
            try {
                return parseJsonObject(new JSONObject(json), (Class) cls);
            } catch (JSONException e) {
                Utils.logV("parseJsonObject fail, %s, cls = %s, json = %s", e, cls, json);
            }
        }
        return null;
    }

    private static synchronized Field[] getClassFields(Class cls) {
        Field[] fields;
        synchronized (JsonParser.class) {
            fields = (Field[]) sCachedFields.get(cls);
            if (fields == null) {
                fields = cls.getFields();
                sCachedFields.put(cls, fields);
            }
        }
        return fields;
    }

    private static <T> T parseJsonObject(JSONObject jobj, Class<T> cls) {
        T t = ReflectionUtils.createInstance(cls);
        for (Field f : getClassFields(cls)) {
            if (!isIgnoredField(f)) {
                setField(t, f, jobj);
            }
        }
        return t;
    }

    public static Map parseJsonMap(String json, Class valueType) {
        try {
            return parseJsonMap(new JSONObject(json), valueType);
        } catch (Exception e) {
            Utils.logW("parseJsonMap failed, json = %s, %s", json, e);
            return null;
        }
    }

    public static Map parseJsonMap(JSONObject jobj, Class valueType) {
        try {
            Map map = new ArrayMap();
            Iterator<String> keyItor = jobj.keys();
            while (keyItor.hasNext()) {
                String key = (String) keyItor.next();
                Object value = jobj.get(key);
                if (ReflectionUtils.isBuiltIn(value.getClass())) {
                    map.put(key, value);
                } else {
                    if (valueType != null) {
                        Object parseValue;
                        if (value instanceof JSONObject) {
                            parseValue = parseJsonObject((JSONObject) value, valueType);
                            if (parseValue != null) {
                                map.put(key, parseValue);
                            }
                        } else if (value instanceof JSONArray) {
                            parseValue = parseJsonArray((JSONArray) value, valueType);
                            if (parseValue != null) {
                                map.put(key, parseValue);
                            }
                        }
                    }
                    map.put(key, value.toString());
                }
            }
            return map;
        } catch (Exception e) {
            Utils.logW("parseJsonMap failed, jobj = %s, %s", jobj, e);
            return null;
        }
    }

    private static void setField(Object t, Field f, JSONObject jobj) {
        String name;
        if (f.isAnnotationPresent(ProtocolField.class)) {
            name = ((ProtocolField) f.getAnnotation(ProtocolField.class)).name();
        } else {
            name = f.getName();
        }
        if (jobj.has(name)) {
            Class type = f.getType();
            try {
                Object obj = jobj.get(name);
                if (type.isArray()) {
                    if (obj instanceof JSONArray) {
                        f.set(t, parseJsonArray((JSONArray) obj, type.getComponentType()));
                        return;
                    }
                    Utils.log("obj is array but not JSONArray, %s, %s", obj, type);
                } else if (ReflectionUtils.isTypeMatched(Map.class, type) && (obj instanceof JSONObject)) {
                    setMapField(t, f, obj);
                } else if (ReflectionUtils.isTypeMatched(Collection.class, type) && (obj instanceof JSONArray)) {
                    setCollectionField(t, f, obj);
                } else if (ReflectionUtils.isBuiltIn(type)) {
                    f.set(t, getValue(jobj, name, type));
                } else {
                    setProtocolField(t, f, obj, type);
                }
            } catch (Exception e) {
                Utils.logW("%s.%s(%s), setField failed, %s", t, name, type.getName(), e);
            }
        }
    }

    private static void setCollectionField(Object t, Field f, Object obj) throws IllegalAccessException {
        ElementClass classAn = (ElementClass) f.getAnnotation(ElementClass.class);
        if (classAn != null) {
            Class fieldClass = null;
            try {
                fieldClass = t.getClass().getClassLoader().loadClass(classAn.className());
            } catch (Exception e) {
                Utils.log("loadClass %s failed for %s.%s", classAn.className(), t.getClass().getSimpleName(), f);
            }
            if (fieldClass != null) {
                Object col = ReflectionUtils.createInstance(f.getType());
                if (col instanceof Collection) {
                    ((Collection) col).addAll(parseJsonArrayAsList(obj.toString(), fieldClass));
                    f.set(t, col);
                }
            }
        }
    }

    private static void setMapField(Object t, Field f, Object obj) throws IllegalAccessException {
        Class valueType = null;
        if (f.isAnnotationPresent(ElementClass.class)) {
            try {
                valueType = t.getClass().getClassLoader().loadClass(((ElementClass) f.getAnnotation(ElementClass.class)).className());
            } catch (Exception e) {
                Utils.log("setField, get map value type failed, t.class = %s, f = %s, className = %s, %s", t.getClass(), f, className, e);
            }
        }
        f.set(t, parseJsonMap((JSONObject) obj, valueType));
    }

    private static void setProtocolField(Object t, Field f, Object obj, Class type) throws JSONException, IllegalAccessException {
        JSONObject jsonObj = null;
        if (obj instanceof JSONObject) {
            jsonObj = (JSONObject) obj;
        } else if (obj instanceof String) {
            jsonObj = new JSONObject((String) obj);
        }
        if (jsonObj != null) {
            f.set(t, parseJsonObject(jsonObj, type));
        }
    }

    private static Object getValue(JSONObject jobj, String name, Class<?> type) throws JSONException {
        if (type.equals(Integer.TYPE) || type.equals(Integer.class) || type.equals(Short.TYPE) || type.equals(Short.class)) {
            Integer value = Integer.valueOf(jobj.getInt(name));
            if (type.equals(Short.TYPE) || type.equals(Short.class)) {
                return Short.valueOf(value.shortValue());
            }
            return value;
        } else if (type.equals(Long.TYPE) || type.equals(Long.class)) {
            return Long.valueOf(jobj.getLong(name));
        } else {
            if (type.equals(String.class)) {
                return decodeStringData(jobj.getString(name));
            }
            if (type.equals(Boolean.TYPE) || type.equals(Boolean.class)) {
                return Boolean.valueOf(jobj.getBoolean(name));
            }
            if (!type.equals(Float.TYPE) && !type.equals(Float.class) && !type.equals(Double.TYPE) && !type.equals(Double.class)) {
                return null;
            }
            Double value2 = Double.valueOf(jobj.getDouble(name));
            if (type.equals(Float.TYPE) || type.equals(Float.class)) {
                return Float.valueOf(value2.floatValue());
            }
            return value2;
        }
    }

    public static Object getValue(JSONArray jsonArray, int index, Class<?> type) throws JSONException {
        if (type.equals(Integer.TYPE) || type.equals(Integer.class) || type.equals(Short.TYPE) || type.equals(Short.class)) {
            Integer value = Integer.valueOf(jsonArray.getInt(index));
            if (type.equals(Short.TYPE) || type.equals(Short.class)) {
                return Short.valueOf(value.shortValue());
            }
            return value;
        } else if (type.equals(Long.TYPE) || type.equals(Long.class)) {
            return Long.valueOf(jsonArray.getLong(index));
        } else {
            if (type.equals(String.class)) {
                return decodeStringData(jsonArray.getString(index));
            }
            if (type.equals(Boolean.TYPE) || type.equals(Boolean.class)) {
                return Boolean.valueOf(jsonArray.getBoolean(index));
            }
            if (!type.equals(Float.TYPE) && !type.equals(Float.class) && !type.equals(Double.TYPE) && !type.equals(Double.class)) {
                return null;
            }
            Double value2 = Double.valueOf(jsonArray.getDouble(index));
            if (type.equals(Float.TYPE) || type.equals(Float.class)) {
                return Float.valueOf(value2.floatValue());
            }
            return value2;
        }
    }

    public static String toJson(Object value) {
        if (value == null) {
            try {
                return EMPTY_OBJECT;
            } catch (OutOfMemoryError e) {
                Utils.logW("toJson failed, %s", e);
                return null;
            }
        } else if (ReflectionUtils.isBuiltIn(value.getClass())) {
            return buildInToJson(value);
        } else {
            if (value instanceof Collection) {
                return toJsonArray(((Collection) value).toArray());
            }
            if (value instanceof Map) {
                return toJsonMap((Map) value);
            }
            if (value.getClass().isArray()) {
                return toJsonArray(value);
            }
            return toJsonObject(value);
        }
    }

    public static String toJsonMap(Map map) {
        try {
            JSONObject jobj = new JSONObject();
            for (Object key : map.keySet()) {
                Object jsonValue = toJSONCompatible(map.get(key));
                if (jsonValue != null) {
                    jobj.put(key.toString(), jsonValue);
                }
            }
            return jobj.toString();
        } catch (Exception e) {
            Utils.logW("toJsonMap failed, %s", e);
            return null;
        }
    }

    private static Object toJSONCompatible(Object value) {
        if (value == null) {
            return null;
        }
        if (ReflectionUtils.isBuiltIn(value.getClass())) {
            return value;
        }
        String json = toJson(value);
        if (!TextUtils.isEmpty(json)) {
            try {
                if (isJsonArray(json)) {
                    return new JSONArray(json);
                }
                return new JSONObject(json);
            } catch (JSONException e) {
                Utils.log("json %s to JSONObject failed, %s", json, e);
            }
        }
        return null;
    }

    public static String toJsonArray(Object arrayObj) {
        try {
            Object[] array = ReflectionUtils.toObjectArray(arrayObj);
            if (array == null || array.length == 0) {
                return EMPTY_ARRAY;
            }
            StringBuilder json = new StringBuilder(ARRAY_START);
            boolean hasContent = false;
            for (int i = 0; i < array.length; i++) {
                String itemJson = ReflectionUtils.isBuiltIn(array[i].getClass()) ? buildInToJson(array[i]) : toJsonObject(array[i]);
                if (!TextUtils.isEmpty(itemJson)) {
                    if (hasContent) {
                        json.append(",");
                    }
                    hasContent = true;
                    json.append(itemJson);
                }
            }
            json.append(ARRAY_END);
            return json.toString();
        } catch (OutOfMemoryError e) {
            Utils.logW("toJson failed, %s", e);
            return null;
        }
    }

    private static String buildInToJson(Object value) {
        if (value == null) {
            return "";
        }
        return String.class.equals(value.getClass()) ? encodeStringData((String) value) : String.valueOf(value);
    }

    public static String encodeStringData(String data) {
        String value = data;
        if (isJsonValid(data)) {
            value = data.replace(D_QUOTE, "\\\"");
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(D_QUOTE);
        stringBuilder.append(value);
        stringBuilder.append(D_QUOTE);
        return stringBuilder.toString();
    }

    public static String decodeStringData(String data) {
        return TextUtils.isEmpty(data) ? data : data.replace("\\\"", D_QUOTE).replace("\\\"", D_QUOTE);
    }

    private static boolean isIgnoredField(Field f) {
        int modifiers = f.getModifiers();
        return !Modifier.isPublic(modifiers) || Modifier.isFinal(modifiers) || Modifier.isStatic(modifiers);
    }

    public static String toJsonObject(Object t) {
        Field[] fields = t.getClass().getFields();
        StringBuilder json = new StringBuilder("{");
        int initLength = json.length();
        for (Field f : fields) {
            if (!isIgnoredField(f)) {
                try {
                    String valueJson = fieldToJson(t, f);
                    if (!isEmptyJson(valueJson)) {
                        json.append(json.length() > initLength ? "," : "");
                        json.append(D_QUOTE);
                        json.append(f.getName());
                        json.append("\":");
                        json.append(valueJson);
                    }
                } catch (IllegalAccessException e) {
                    Utils.logW("toJsonObject, %s", e);
                }
            }
        }
        json.append("}");
        return json.toString();
    }

    private static String fieldToJson(Object t, Field f) throws IllegalAccessException {
        Object value = f.get(t);
        if (value == null) {
            return null;
        }
        return toJson(value);
    }
}
