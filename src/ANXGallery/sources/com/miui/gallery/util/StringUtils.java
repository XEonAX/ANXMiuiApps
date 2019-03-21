package com.miui.gallery.util;

public class StringUtils {
    public static String[] mergeStringArray(String[] strings1, String[] strings2) {
        if (strings1 == null) {
            return strings2;
        }
        if (strings2 == null) {
            return strings1;
        }
        String[] merged = new String[(strings1.length + strings2.length)];
        System.arraycopy(strings1, 0, merged, 0, strings1.length);
        System.arraycopy(strings2, 0, merged, strings1.length, strings2.length);
        return merged;
    }

    public static String nullToEmpty(String string) {
        return string == null ? "" : string;
    }

    public static String nullToEmpty(CharSequence charSequence) {
        return charSequence == null ? "" : charSequence.toString();
    }

    public static String join(String separator, long[] array) {
        if (array == null || array.length <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        boolean firstTime = true;
        for (long item : array) {
            if (firstTime) {
                firstTime = false;
            } else {
                sb.append(separator);
            }
            sb.append(item);
        }
        return sb.toString();
    }
}
