package com.miui.internal.util;

import java.util.Arrays;
import java.util.Map;
import java.util.Map.Entry;
import miui.security.DigestUtils;
import miui.text.ExtraTextUtils;

public class DataUpdateUtils {
    public static String genUrlSign(Map<String, String> map, String str, String str2) {
        if (map.isEmpty()) {
            return "";
        }
        int i = 0;
        String[] strArr = (String[]) map.keySet().toArray(new String[0]);
        Arrays.sort(strArr);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        int length = strArr.length;
        while (i < length) {
            String str3 = strArr[i];
            stringBuilder.append(str3);
            stringBuilder.append((String) map.get(str3));
            i++;
        }
        stringBuilder.append(str2);
        return ExtraTextUtils.toHexReadable(DigestUtils.get(stringBuilder.toString(), DigestUtils.ALGORITHM_SHA_1)).toUpperCase();
    }

    public static String getSignedUrl(Map<String, String> map, String str, String str2) {
        str2 = genUrlSign(map, str, str2);
        if (str2.length() == 0) {
            return str2;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("appkey=");
        stringBuilder.append(str);
        stringBuilder.append("&sign=");
        stringBuilder.append(str2);
        for (Entry entry : map.entrySet()) {
            stringBuilder.append('&');
            stringBuilder.append((String) entry.getKey());
            stringBuilder.append('=');
            stringBuilder.append((String) entry.getValue());
        }
        return stringBuilder.toString();
    }

    public static boolean checkSignedUrl(Map<String, String> map, String str, String str2) {
        String str3 = (String) map.get("appkey");
        if (str3 == null || str3.length() == 0) {
            return false;
        }
        map.remove("appkey");
        return str3.equals(genUrlSign(map, str, str2));
    }

    public static long normalizedNo(String str) {
        return 123456;
    }
}
