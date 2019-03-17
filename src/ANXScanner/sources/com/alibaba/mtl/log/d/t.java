package com.alibaba.mtl.log.d;

import android.content.Context;
import android.text.TextUtils;
import com.ali.auth.third.login.LoginConstants;
import com.alibaba.mtl.appmonitor.SdkMeta;
import com.alibaba.mtl.log.a.a;
import com.alibaba.mtl.log.model.LogField;
import com.alibaba.mtl.log.sign.BaseRequestAuth;
import com.alibaba.mtl.log.sign.IRequestAuth;
import com.alibaba.mtl.log.sign.SecurityRequestAuth;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* compiled from: UrlWrapper */
public class t {
    private static final String TAG = t.class.getSimpleName();

    public static String a(String str, Map<String, Object> map, Map<String, Object> map2) throws Exception {
        String str2 = "";
        if (map2 != null && map2.size() > 0) {
            Set keySet = map2.keySet();
            String[] strArr = new String[keySet.size()];
            keySet.toArray(strArr);
            String str3 = str2;
            for (String str4 : g.a().a(strArr, true)) {
                str3 = str3 + str4 + j.a((byte[]) map2.get(str4));
            }
            str2 = str3;
        }
        try {
            str2 = a(str, null, null, str2);
        } catch (Throwable th) {
            str2 = a(a.g(), null, null, str2);
        }
        Object obj = a.N;
        if (TextUtils.isEmpty(obj)) {
            return str2;
        }
        return str2 + "&dk=" + URLEncoder.encode(obj, "UTF-8");
    }

    public static String b(String str, Map<String, Object> map, Map<String, Object> map2) throws Exception {
        String str2;
        if (map == null) {
            HashMap hashMap = new HashMap();
        }
        Context context = com.alibaba.mtl.log.a.getContext();
        String appkey = b.getAppkey();
        String n = b.n();
        if (n == null) {
            str2 = "";
        } else {
            str2 = n;
        }
        n = (String) d.a(context).get(LogField.APPVERSION.toString());
        String str3 = (String) d.a(context).get(LogField.OS.toString());
        String str4 = SdkMeta.SDK_VERSION;
        String str5 = (String) d.a(context).get(LogField.UTDID.toString());
        String str6 = "3.0";
        String valueOf = String.valueOf(System.currentTimeMillis());
        IRequestAuth a = com.alibaba.mtl.log.a.a();
        str6 = "0";
        if (a instanceof SecurityRequestAuth) {
            str6 = "1";
        }
        str3 = a.getSign(j.a((appkey + n + str2 + str3 + str5 + str4 + valueOf + str6 + map.get("_b01n15") + map.get("_b01na")).getBytes()));
        StringBuilder stringBuilder = new StringBuilder(str);
        stringBuilder.append("?");
        stringBuilder.append("ak").append("=").append(appkey);
        stringBuilder.append("&").append(com.alipay.sdk.sys.a.k).append("=").append(n);
        stringBuilder.append("&").append("c").append("=").append(URLEncoder.encode(str2));
        stringBuilder.append("&").append("d").append("=").append(str5);
        stringBuilder.append("&").append(com.alipay.sdk.sys.a.h).append("=").append(str4);
        stringBuilder.append("&").append(LoginConstants.TIMESTAMP).append("=").append(valueOf);
        stringBuilder.append("&").append("is").append("=").append(str6);
        stringBuilder.append("&").append("_b01n15").append("=").append(map.get("_b01n15"));
        stringBuilder.append("&").append("_b01na").append("=").append(map.get("_b01na"));
        stringBuilder.append("&").append("s").append("=").append(str3);
        return stringBuilder.toString();
    }

    private static String a(String str, String str2, String str3, String str4) throws Exception {
        String str5;
        String str6;
        Object obj;
        Context context = com.alibaba.mtl.log.a.getContext();
        String appkey = b.getAppkey();
        String n = b.n();
        if (n == null) {
            str5 = "";
        } else {
            str5 = n;
        }
        n = (String) d.a(context).get(LogField.APPVERSION.toString());
        String str7 = (String) d.a(context).get(LogField.OS.toString());
        String str8 = SdkMeta.SDK_VERSION;
        String str9 = (String) d.a(context).get(LogField.UTDID.toString());
        String str10 = "3.0";
        String valueOf = String.valueOf(System.currentTimeMillis());
        IRequestAuth a = com.alibaba.mtl.log.a.a();
        String str11 = "0";
        String str12 = "0";
        if (a instanceof SecurityRequestAuth) {
            str6 = "1";
            obj = str11;
        } else if (a instanceof BaseRequestAuth) {
            String str13 = str12;
            str12 = ((BaseRequestAuth) a).isEncode() ? "1" : "0";
            str6 = str13;
        } else {
            str6 = str12;
            str12 = str11;
        }
        StringBuilder append = new StringBuilder().append(appkey).append(str5).append(n).append(str7).append(str8).append(str9).append(valueOf).append(str10).append(str6);
        if (str3 == null) {
            str3 = "";
        }
        append = append.append(str3);
        if (str4 == null) {
            str4 = "";
        }
        str11 = a.getSign(j.a(append.append(str4).toString().getBytes()));
        String str14 = "";
        if (!TextUtils.isEmpty(str2)) {
            str14 = str2 + "&";
        }
        return String.format("%s?%sak=%s&av=%s&c=%s&v=%s&s=%s&d=%s&sv=%s&p=%s&t=%s&u=%s&is=%s&k=%s", new Object[]{str, str14, e(appkey), e(n), e(str5), e(str10), e(str11), e(str9), str8, str7, valueOf, "", str6, obj});
    }

    private static String e(String str) {
        if (str == null) {
            return "";
        }
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return str;
        }
    }
}
