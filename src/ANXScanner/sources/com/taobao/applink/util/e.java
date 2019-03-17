package com.taobao.applink.util;

import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;
import java.util.regex.Pattern;
import mtopsdk.common.util.SymbolExpUtil;

public class e {
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0018 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x003a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String a(Map map) {
        String encode;
        UnsupportedEncodingException e;
        if (map == null || map.isEmpty()) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (String str : map.keySet()) {
            String str2;
            String str3 = (String) map.get(str2);
            if (str3 != null) {
                try {
                    encode = URLEncoder.encode(str3, SymbolExpUtil.CHARSET_UTF8);
                } catch (UnsupportedEncodingException e2) {
                    UnsupportedEncodingException unsupportedEncodingException = e2;
                    encode = str3;
                    e = unsupportedEncodingException;
                }
            } else {
                encode = str3;
            }
            try {
                str2 = URLEncoder.encode(str2, SymbolExpUtil.CHARSET_UTF8);
            } catch (UnsupportedEncodingException e3) {
                e = e3;
            }
            if (encode == null) {
                stringBuffer.append("&").append(str2).append("=").append(encode);
            }
        }
        return stringBuffer.toString().substring(1);
        Log.e(TBAppLinkUtil.TAG, e.toString());
        if (encode == null) {
        }
    }

    public static boolean a(String str) {
        if (str != null) {
            int length = str.length();
            if (length != 0) {
                for (int i = 0; i < length; i++) {
                    if (!Character.isWhitespace(str.charAt(i))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return true;
    }

    public static boolean b(String str) {
        return a(str) ? false : Pattern.compile("[0-9]*").matcher(str).matches();
    }

    public static boolean c(String str) {
        return a(str) ? false : Pattern.compile("^(http://|https://)?((?:[A-Za-z0-9]+-[A-Za-z0-9]+|[A-Za-z0-9]+)\\.)+([A-Za-z]+)[/\\?\\:]?.*$").matcher(str).matches();
    }
}
