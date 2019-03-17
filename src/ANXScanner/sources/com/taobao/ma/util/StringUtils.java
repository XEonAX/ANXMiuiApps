package com.taobao.ma.util;

public class StringUtils {
    public static boolean isEmpty(CharSequence cs) {
        return cs == null || cs.length() == 0;
    }

    public static boolean isNotEmpty(CharSequence cs) {
        return !isEmpty(cs);
    }

    public static boolean isNull(String s) {
        return s == null || "null".equals(s);
    }

    public static String nullToString(String s) {
        return isNull(s) ? "" : s;
    }
}
