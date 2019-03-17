package com.ali.auth.third.core.cookies;

import android.text.TextUtils;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.login.LoginConstants;
import com.alimama.tunion.utils.TUnionTradeSDKConstants;
import mtopsdk.common.util.SymbolExpUtil;
import org.json.JSONObject;

public class LoginCookieUtils {
    private static final int a = "secure".length();
    private static final int b = "httponly".length();

    public static void expiresCookies(c cVar) {
        cVar.e = Long.valueOf(1000).longValue();
    }

    public static String getHttpDomin(c cVar) {
        String str = cVar.a;
        if (!TextUtils.isEmpty(str) && str.startsWith(SymbolExpUtil.SYMBOL_DOT)) {
            str = str.substring(1);
        }
        return "http://" + str;
    }

    public static JSONObject getKeyValues(String str) {
        JSONObject jSONObject = new JSONObject();
        if (!TextUtils.isEmpty(str)) {
            try {
                Object cookie = a.a().getCookie(TUnionTradeSDKConstants.TUNION_KEY_COOKIE_TAOBAO_DOMAIN);
                if (!TextUtils.isEmpty(cookie)) {
                    for (String str2 : cookie.split(";")) {
                        String[] split = str2.split("=");
                        if (split.length >= 2 && split[0].contains(str)) {
                            if (split.length == 2) {
                                jSONObject.put(split[0].trim(), split[1].trim());
                            } else {
                                jSONObject.put(split[0].trim(), str2.substring(str2.indexOf("=") + 1));
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return jSONObject;
    }

    public static String getValue(String str) {
        int i = 0;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            Object cookie = a.a().getCookie(TUnionTradeSDKConstants.TUNION_KEY_COOKIE_TAOBAO_DOMAIN);
            if (TextUtils.isEmpty(cookie)) {
                return null;
            }
            String[] split = cookie.split(";");
            int length = split.length;
            while (i < length) {
                String str2 = split[i];
                String[] split2 = str2.split("=");
                if (split2.length >= 2 && str.equals(split2[0].trim())) {
                    return split2.length == 2 ? split2[1].trim() : str2.substring(str2.indexOf("=") + 1);
                } else {
                    i++;
                }
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARNING: Missing block: B:22:0x005b, code:
            if (r0 != -1) goto L_0x005d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static c parseCookie(String str) {
        int i = 0;
        int length = str.length();
        while (i >= 0 && i < length) {
            if (str.charAt(i) == ' ') {
                i++;
            } else {
                int indexOf = str.indexOf(59, i);
                int indexOf2 = str.indexOf(61, i);
                c cVar = new c();
                if ((indexOf == -1 || indexOf >= indexOf2) && indexOf2 != -1) {
                    cVar.c = str.substring(i, indexOf2);
                    indexOf = (indexOf2 >= length + -1 || str.charAt(indexOf2 + 1) != '\"') ? i : str.indexOf(34, indexOf2 + 2);
                    indexOf = str.indexOf(59, indexOf);
                    if (indexOf == -1) {
                        indexOf = length;
                    }
                    if (indexOf - indexOf2 > 4096) {
                        cVar.d = str.substring(indexOf2 + 1, (indexOf2 + 1) + 4096);
                    } else if (indexOf2 + 1 == indexOf || indexOf < indexOf2) {
                        cVar.d = "";
                    } else {
                        cVar.d = str.substring(indexOf2 + 1, indexOf);
                    }
                } else {
                    if (indexOf == -1) {
                        indexOf = length;
                    }
                    cVar.c = str.substring(i, indexOf);
                    cVar.d = null;
                }
                while (indexOf >= 0 && indexOf < length) {
                    if (str.charAt(indexOf) != ' ' && str.charAt(indexOf) != ';') {
                        if (str.charAt(indexOf) != ',') {
                            if (length - indexOf < a || !str.substring(indexOf, a + indexOf).equalsIgnoreCase("secure")) {
                                if (length - indexOf >= b && str.substring(indexOf, b + indexOf).equalsIgnoreCase("httponly")) {
                                    indexOf += b;
                                    cVar.g = true;
                                    if (indexOf == length) {
                                        break;
                                    } else if (str.charAt(indexOf) == '=') {
                                        indexOf++;
                                    }
                                } else {
                                    indexOf2 = str.indexOf(61, indexOf);
                                    if (indexOf2 > 0) {
                                        String toLowerCase = str.substring(indexOf, indexOf2).toLowerCase();
                                        if (toLowerCase.equals("expires")) {
                                            i = str.indexOf(44, indexOf2);
                                            if (i != -1 && i - indexOf2 <= 10) {
                                                indexOf = i + 1;
                                            }
                                        }
                                        i = str.indexOf(59, indexOf);
                                        indexOf = str.indexOf(44, indexOf);
                                        if (i == -1 && indexOf == -1) {
                                            indexOf = length;
                                        } else if (i != -1) {
                                            indexOf = indexOf == -1 ? i : Math.min(i, indexOf);
                                        }
                                        String substring = str.substring(indexOf2 + 1, indexOf);
                                        if (substring.length() > 2 && substring.charAt(0) == '\"') {
                                            indexOf2 = substring.indexOf(34, 1);
                                            if (indexOf2 > 0) {
                                                substring = substring.substring(1, indexOf2);
                                            }
                                        }
                                        if (toLowerCase.equals("expires")) {
                                            try {
                                                cVar.e = b.a(substring);
                                            } catch (Throwable e) {
                                                SDKLogger.e("login.LoginCookieUtils", "illegal format for expires: " + substring, e);
                                            }
                                        } else if (toLowerCase.equals("max-age")) {
                                            try {
                                                cVar.e = System.currentTimeMillis() + (1000 * Long.parseLong(substring));
                                            } catch (Throwable e2) {
                                                SDKLogger.e("login.LoginCookieUtils", "illegal format for max-age: " + substring, e2);
                                            }
                                        } else if (toLowerCase.equals("path")) {
                                            if (substring.length() > 0) {
                                                cVar.b = substring;
                                            }
                                        } else if (toLowerCase.equals(LoginConstants.DOMAIN)) {
                                            indexOf2 = substring.lastIndexOf(46);
                                            if (indexOf2 == 0) {
                                                cVar.a = null;
                                            } else {
                                                try {
                                                    Integer.parseInt(substring.substring(indexOf2 + 1));
                                                } catch (NumberFormatException e3) {
                                                    substring = substring.toLowerCase();
                                                    if (substring.charAt(0) != '.') {
                                                        substring = '.' + substring;
                                                        indexOf2++;
                                                    }
                                                    cVar.a = substring;
                                                }
                                            }
                                        }
                                    } else {
                                        indexOf = length;
                                    }
                                }
                            } else {
                                indexOf += a;
                                cVar.f = true;
                                if (indexOf == length) {
                                    break;
                                } else if (str.charAt(indexOf) == '=') {
                                    indexOf++;
                                }
                            }
                        } else {
                            indexOf++;
                            break;
                        }
                    }
                    indexOf++;
                }
                return cVar;
            }
        }
        return null;
    }
}
