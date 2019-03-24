package com.miui.internal.util;

import android.net.Uri;
import android.text.TextUtils;
import java.util.HashSet;
import java.util.Set;

public class UrlResolverHelper {
    private static final String jG = "http";
    private static final String jH = "https";
    private static final String jI = "mi";
    private static final String jJ = "mihttp";
    private static final String jK = "mihttps";
    private static final String jL = "mifb";
    private static final String[] jM = new String[]{"xiaomi.com", "mi.com", "miui.com", "mipay.com"};
    private static final String[] jN = new String[]{"duokan.com", "duokanbox.com", "mijiayoupin.com"};
    private static final String[] jO = new String[]{"com.xiaomi.channel", "com.duokan.reader", "com.duokan.hdreader", "com.duokan.fiction", "com.xiaomi.router", "com.xiaomi.smarthome", "com.xiaomi.o2o", "com.xiaomi.shop", "com.xiaomi.jr", "com.xiaomi.jr.security", "com.xiaomi.mifisecurity", "com.xiaomi.loan", "com.xiaomi.loanx", "com.mi.credit.in", "com.mi.credit.id", "com.miui.miuibbs", "com.wali.live", "com.mi.live", "com.xiaomi.ab", "com.mfashiongallery.emag", "com.xiaomi.pass", "com.xiaomi.youpin", "com.mi.liveassistant", "com.xiangkan.android", "com.xiaomi.gamecenter"};
    private static Set<String> jP = new HashSet();
    private static Set<String> jQ = new HashSet();

    static {
        jP.add(jJ);
        jP.add(jK);
        jQ.add(jG);
        jQ.add(jH);
        jQ.addAll(jP);
    }

    public static boolean isMiUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Uri parse = Uri.parse(str);
        if (jG.equals(parse.getScheme()) || jH.equals(parse.getScheme())) {
            return isMiHost(parse.getHost());
        }
        return false;
    }

    public static boolean isMiHost(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        for (CharSequence contains : jM) {
            if (str.contains(contains)) {
                return true;
            }
        }
        for (CharSequence contains2 : jN) {
            if (str.contains(contains2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isWhiteListPackage(String str) {
        for (String equals : jO) {
            if (equals.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isBrowserFallbackScheme(String str) {
        return jP.contains(str);
    }

    public static Uri getBrowserFallbackUri(String str) {
        return Uri.parse(str.substring(jI.length()));
    }

    public static String getFallbackParameter(Uri uri) {
        String a = a(uri, 0, null);
        if (a != null) {
            if (jQ.contains(Uri.parse(a).getScheme())) {
                return a;
            }
        }
        return null;
    }

    private static String a(Uri uri, int i, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(jL);
        stringBuilder.append(i == 0 ? "" : Integer.valueOf(i));
        String queryParameter = uri.getQueryParameter(stringBuilder.toString());
        if (queryParameter != null) {
            return a(uri, i + 1, queryParameter);
        }
        return str;
    }
}
