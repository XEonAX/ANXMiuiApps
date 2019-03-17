package com.alipay.sdk.util;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.app.statistic.a;
import com.alipay.sdk.app.statistic.c;

public final class h {
    public static final String a = "pref_trade_token";
    public static final String b = ";";
    public static final String c = "result={";
    public static final String d = "}";
    public static final String e = "trade_token=\"";
    public static final String f = "\"";
    public static final String g = "trade_token=";

    private static void a(Context context, String str) {
        Object obj = null;
        try {
            if (!TextUtils.isEmpty(str)) {
                String[] split = str.split(";");
                int i = 0;
                while (i < split.length) {
                    if (split[i].startsWith(c) && split[i].endsWith(d)) {
                        String[] split2 = split[i].substring(8, split[i].length() - 1).split("&");
                        int i2 = 0;
                        while (i2 < split2.length) {
                            if (split2[i2].startsWith(e) && split2[i2].endsWith("\"")) {
                                obj = split2[i2].substring(13, split2[i2].length() - 1);
                                break;
                            } else if (split2[i2].startsWith(g)) {
                                obj = split2[i2].substring(12);
                                break;
                            } else {
                                i2++;
                            }
                        }
                    }
                    i++;
                }
            }
            if (!TextUtils.isEmpty(obj)) {
                i.a(context, a, obj);
            }
        } catch (Throwable th) {
            a.a(c.b, c.z, th);
        }
    }

    private static String a(String str) {
        String str2 = null;
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split(";");
            int i = 0;
            while (i < split.length) {
                if (split[i].startsWith(c) && split[i].endsWith(d)) {
                    String[] split2 = split[i].substring(8, split[i].length() - 1).split("&");
                    int i2 = 0;
                    while (i2 < split2.length) {
                        if (split2[i2].startsWith(e) && split2[i2].endsWith("\"")) {
                            str2 = split2[i2].substring(13, split2[i2].length() - 1);
                            break;
                        } else if (split2[i2].startsWith(g)) {
                            str2 = split2[i2].substring(12);
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
                i++;
            }
        }
        return str2;
    }

    private static String a(Context context) {
        return i.b(context, a, "");
    }
}
