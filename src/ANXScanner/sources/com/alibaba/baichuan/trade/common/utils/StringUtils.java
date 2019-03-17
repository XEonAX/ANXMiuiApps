package com.alibaba.baichuan.trade.common.utils;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

public class StringUtils {
    public static boolean compatVersion(String str, String str2) {
        boolean z = true;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        String[] split = str.split("[.]");
        String[] split2 = str2.split("[.]");
        int length = split.length < split2.length ? split.length : split2.length;
        int i = 0;
        while (i < length) {
            int intValue = Integer.valueOf(split[i]).intValue();
            int intValue2 = Integer.valueOf(split2[i]).intValue();
            if (intValue != intValue2) {
                return intValue > intValue2;
            } else {
                i++;
            }
        }
        if (split.length <= split2.length) {
            z = false;
        }
        return z;
    }

    public static String encod(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public static String map2String(Map<String, Object> map) {
        return new JSONObject(map).toString();
    }

    public static boolean obj2Boolean(Object obj) {
        return obj == null ? false : obj instanceof Boolean ? ((Boolean) obj).booleanValue() : obj instanceof String ? str2Boolean((String) obj) : false;
    }

    public static int[] obj2IntArray(Object obj) {
        if (obj == null || !(obj instanceof List)) {
            return null;
        }
        List list = (List) obj;
        int[] iArr = new int[list.size()];
        for (int i = 0; i < list.size(); i++) {
            iArr[i] = (int) obj2Number(list.get(i));
        }
        return iArr;
    }

    public static List<Object> obj2List(Object obj) {
        try {
            return (List) obj;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Long obj2Long(Object obj) {
        try {
            return Long.valueOf(Long.parseLong(obj.toString()));
        } catch (Exception e) {
            e.printStackTrace();
            return new Long(-1);
        }
    }

    public static Map<String, Object> obj2MapObject(Object obj) {
        try {
            return (Map) obj;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Map<String, String> obj2MapString(Object obj) {
        try {
            return (Map) obj;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static double obj2Number(Object obj) {
        if (obj == null) {
            return 0.0d;
        }
        try {
            return TextUtils.isEmpty(obj.toString()) ? 0.0d : Double.parseDouble(obj.toString());
        } catch (Exception e) {
            e.printStackTrace();
            return 0.0d;
        }
    }

    public static String obj2String(Object obj) {
        return obj == null ? "" : obj.toString();
    }

    public static String[] obj2StringArray(Object obj) {
        if (obj == null || !(obj instanceof List)) {
            return null;
        }
        List list = (List) obj;
        String[] strArr = new String[list.size()];
        for (int i = 0; i < list.size(); i++) {
            strArr[i] = String.valueOf(list.get(i));
        }
        return strArr;
    }

    public static Map<String, String> parserUrl(String str) {
        Map<String, String> concurrentHashMap = new ConcurrentHashMap();
        parserUrl(str, concurrentHashMap);
        return concurrentHashMap;
    }

    public static void parserUrl(String str, Map<String, String> map) {
        if (!TextUtils.isEmpty(str) && map != null) {
            Object obj = null;
            String[] split = str.trim().split("[?]");
            if (split.length > 1) {
                obj = split[1];
            }
            if (!TextUtils.isEmpty(obj)) {
                for (String split2 : obj.split("&")) {
                    String[] split3 = split2.split("=");
                    if (split3.length > 1) {
                        map.put(split3[0], split3[1]);
                    } else if (!TextUtils.isEmpty(split3[0])) {
                        map.put(split3[0], "");
                    }
                }
            }
        }
    }

    @SuppressLint({"DefaultLocale"})
    public static boolean str2Boolean(String str) {
        return "true".equals(str.toLowerCase()) || "1".equals(str) || "YES".equals(str);
    }
}
