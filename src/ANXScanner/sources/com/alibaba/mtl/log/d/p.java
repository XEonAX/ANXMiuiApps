package com.alibaba.mtl.log.d;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

/* compiled from: StringUtils */
public class p {
    public static String convertObjectToString(Object o) {
        if (o == null) {
            return "";
        }
        if (o instanceof String) {
            return ((String) o).toString();
        }
        if (o instanceof Integer) {
            return "" + ((Integer) o).intValue();
        }
        if (o instanceof Long) {
            return "" + ((Long) o).longValue();
        }
        if (o instanceof Double) {
            return "" + ((Double) o).doubleValue();
        }
        if (o instanceof Float) {
            return "" + ((Float) o).floatValue();
        }
        if (o instanceof Short) {
            return "" + ((Short) o).shortValue();
        }
        if (o instanceof Byte) {
            return "" + ((Byte) o).byteValue();
        }
        if (o instanceof Boolean) {
            return ((Boolean) o).toString();
        }
        if (o instanceof Character) {
            return ((Character) o).toString();
        }
        return o.toString();
    }

    public static Map<String, String> b(Map<String, String> map) {
        if (map == null) {
            return map;
        }
        Map<String, String> hashMap = new HashMap();
        for (String str : map.keySet()) {
            if (str instanceof String) {
                String str2 = (String) map.get(str);
                if (!(TextUtils.isEmpty(str) || TextUtils.isEmpty(str2))) {
                    try {
                        hashMap.put(URLEncoder.encode(str, "UTF-8"), URLEncoder.encode(str2, "UTF-8"));
                    } catch (UnsupportedEncodingException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        return hashMap;
    }

    public static String d(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        Object obj = 1;
        StringBuffer stringBuffer = new StringBuffer();
        for (Object next : map.keySet()) {
            String convertObjectToString = convertObjectToString(map.get(next));
            String convertObjectToString2 = convertObjectToString(next);
            if (!(convertObjectToString == null || convertObjectToString2 == null)) {
                if (obj != null) {
                    stringBuffer.append(convertObjectToString2 + "=" + convertObjectToString);
                    obj = null;
                } else {
                    stringBuffer.append(",").append(convertObjectToString2 + "=" + convertObjectToString);
                }
            }
        }
        return stringBuffer.toString();
    }
}
