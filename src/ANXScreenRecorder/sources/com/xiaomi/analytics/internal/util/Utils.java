package com.xiaomi.analytics.internal.util;

import android.text.TextUtils;
import java.lang.reflect.Array;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.List;

public class Utils {
    public static <T> T[] list2Array(List<T> list, Class<T> clazz) {
        if (list == null || list.size() <= 0) {
            return null;
        }
        Object[] objArr = (Object[]) ((Object[]) Array.newInstance(clazz, list.size()));
        for (int i = 0; i < list.size(); i++) {
            objArr[i] = list.get(i);
        }
        return objArr;
    }

    public static String getMd5(byte[] data) {
        String hashString = "";
        if (data != null) {
            try {
                MessageDigest digest = MessageDigest.getInstance("MD5");
                digest.update(data);
                BigInteger hashInt = new BigInteger(1, digest.digest());
                hashString = String.format("%1$032X", new Object[]{hashInt});
            } catch (Exception e) {
            }
        }
        return hashString.toLowerCase();
    }

    public static String getMd5(String value) {
        if (TextUtils.isEmpty(value)) {
            return "";
        }
        return getMd5(value.getBytes());
    }
}
