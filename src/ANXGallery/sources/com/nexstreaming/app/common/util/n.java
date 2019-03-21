package com.nexstreaming.app.common.util;

import android.content.Context;
import java.util.Locale;
import java.util.Map;

/* compiled from: StringUtil */
public class n {
    private static final char[] a = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final char[] b = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String a(byte[] bArr) {
        char[] cArr = new char[(bArr.length * 2)];
        for (int i = 0; i < bArr.length; i++) {
            cArr[i * 2] = a[(bArr[i] & 240) >> 4];
            cArr[(i * 2) + 1] = a[bArr[i] & 15];
        }
        return new String(cArr);
    }

    public static String a(Context context, Map<String, String> map) {
        return a(context, b(context, map, null));
    }

    public static String a(Context context, Map<String, String> map, String str) {
        return a(context, b(context, map, str));
    }

    private static String b(Context context, Map<String, String> map, String str) {
        Locale locale;
        if (context != null) {
            locale = context.getResources().getConfiguration().locale;
        } else {
            locale = null;
        }
        if (map == null) {
            return null;
        }
        Object obj;
        if (locale == null) {
            locale = Locale.ENGLISH;
        }
        String toLowerCase = locale.getLanguage().toLowerCase(Locale.ENGLISH);
        String toLowerCase2 = locale.getCountry().toLowerCase(Locale.ENGLISH);
        String toLowerCase3 = locale.getVariant().toLowerCase(Locale.ENGLISH);
        String str2 = "";
        if (toLowerCase3.isEmpty() && toLowerCase2.isEmpty()) {
            obj = toLowerCase;
        } else if (toLowerCase3.isEmpty()) {
            obj = toLowerCase + "-" + toLowerCase2;
        } else if (toLowerCase2.isEmpty()) {
            obj = toLowerCase + "-" + toLowerCase3;
        } else {
            obj = toLowerCase + "-" + toLowerCase2 + "-" + toLowerCase3;
        }
        toLowerCase3 = (String) map.get(obj);
        if (toLowerCase3 != null) {
            return toLowerCase3;
        }
        toLowerCase3 = (String) map.get(toLowerCase);
        if (toLowerCase3 != null) {
            return toLowerCase3;
        }
        toLowerCase3 = (String) map.get("");
        if (toLowerCase3 != null) {
            return toLowerCase3;
        }
        toLowerCase3 = (String) map.get("en");
        if (toLowerCase3 != null) {
            return toLowerCase3;
        }
        toLowerCase3 = (String) map.get("en-us");
        if (toLowerCase3 == null) {
            return str;
        }
        return toLowerCase3;
    }

    private static String a(Context context, String str) {
        if (str == null || context == null) {
            return str;
        }
        int identifier;
        if (str.startsWith("@string/")) {
            identifier = context.getResources().getIdentifier("string/kedl_" + str.substring(8), "string", context.getPackageName());
            if (identifier != 0) {
                return context.getResources().getString(identifier);
            }
            return str;
        } else if (!str.startsWith("@")) {
            return str;
        } else {
            identifier = context.getResources().getIdentifier(str.substring(1), "string", context.getPackageName());
            if (identifier != 0) {
                return context.getResources().getString(identifier);
            }
            return str;
        }
    }
}
