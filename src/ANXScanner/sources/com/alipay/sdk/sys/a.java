package com.alipay.sdk.sys;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.alipay.sdk.util.l;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

public final class a {
    public static final String a = "\"&";
    public static final String b = "&";
    public static final String c = "bizcontext=\"";
    public static final String d = "bizcontext=";
    public static final String e = "\"";
    public static final String f = "appkey";
    public static final String g = "ty";
    public static final String h = "sv";
    public static final String i = "an";
    public static final String j = "setting";
    public static final String k = "av";
    public static final String l = "sdk_start_time";
    public static final String m = "UTF-8";
    private String n = "";
    private String o = "";
    private Context p = null;

    public a(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            this.n = packageInfo.versionName;
            this.o = packageInfo.packageName;
            this.p = context.getApplicationContext();
        } catch (Exception e) {
        }
    }

    public final String a(String str) {
        if (TextUtils.isEmpty(str) || str.startsWith("new_external_info==")) {
            return str;
        }
        Object obj;
        if (str.contains(a)) {
            obj = null;
        } else {
            obj = 1;
        }
        if (obj != null) {
            return c(str);
        }
        return d(str);
    }

    private static boolean b(String str) {
        return !str.contains(a);
    }

    private String c(String str) {
        try {
            String a = a(str, "&", d);
            if (TextUtils.isEmpty(a)) {
                return str + "&" + b(d, "");
            }
            int indexOf = str.indexOf(a);
            String substring = str.substring(0, indexOf);
            return substring + b(a, d, "") + str.substring(indexOf + a.length());
        } catch (Throwable th) {
            return str;
        }
    }

    private String d(String str) {
        try {
            String a = a(str, a, c);
            if (TextUtils.isEmpty(a)) {
                return str + "&" + b(c, "\"");
            }
            if (!a.endsWith("\"")) {
                a = a + "\"";
            }
            int indexOf = str.indexOf(a);
            String substring = str.substring(0, indexOf);
            return substring + b(a, c, "\"") + str.substring(indexOf + a.length());
        } catch (Throwable th) {
            return str;
        }
    }

    private static String a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String str4;
        String[] split = str.split(str2);
        int i = 0;
        while (i < split.length) {
            if (!TextUtils.isEmpty(split[i]) && split[i].startsWith(str3)) {
                str4 = split[i];
                break;
            }
            i++;
        }
        str4 = null;
        return str4;
    }

    private String b(String str, String str2) throws JSONException, UnsupportedEncodingException {
        return str + a("", "") + str2;
    }

    public final String a(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("appkey", com.alipay.sdk.cons.a.d);
            jSONObject.put(g, "and_lite");
            jSONObject.put(h, com.alipay.sdk.cons.a.g);
            if (!(this.o.contains(j) && l.d(this.p))) {
                jSONObject.put(i, this.o);
            }
            jSONObject.put(k, this.n);
            jSONObject.put(l, System.currentTimeMillis());
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put(str, str2);
            }
            return jSONObject.toString();
        } catch (Throwable th) {
            return "";
        }
    }

    private String b(String str, String str2, String str3) throws JSONException, UnsupportedEncodingException {
        String substring = str.substring(str2.length());
        JSONObject jSONObject = new JSONObject(substring.substring(0, substring.length() - str3.length()));
        if (!jSONObject.has("appkey")) {
            jSONObject.put("appkey", com.alipay.sdk.cons.a.d);
        }
        if (!jSONObject.has(g)) {
            jSONObject.put(g, "and_lite");
        }
        if (!jSONObject.has(h)) {
            jSONObject.put(h, com.alipay.sdk.cons.a.g);
        }
        if (!(jSONObject.has(i) || (this.o.contains(j) && l.d(this.p)))) {
            jSONObject.put(i, this.o);
        }
        if (!jSONObject.has(k)) {
            jSONObject.put(k, this.n);
        }
        if (!jSONObject.has(l)) {
            jSONObject.put(l, System.currentTimeMillis());
        }
        return str2 + jSONObject.toString() + str3;
    }
}
