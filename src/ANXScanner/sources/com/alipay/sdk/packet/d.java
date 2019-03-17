package com.alipay.sdk.packet;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.text.TextUtils;
import android.widget.TextView;
import com.alipay.sdk.net.a;
import com.alipay.sdk.sys.b;
import com.alipay.sdk.tid.c;
import com.alipay.sdk.util.k;
import com.alipay.sdk.util.l;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map.Entry;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.message.BasicHeader;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class d {
    public static final String a = "msp-gzip";
    public static final String b = "Msp-Param";
    public static final String c = "Operation-Type";
    public static final String d = "content-type";
    public static final String e = "Version";
    public static final String f = "AppId";
    public static final String g = "des-mode";
    public static final String h = "namespace";
    public static final String i = "api_name";
    public static final String j = "api_version";
    public static final String k = "data";
    public static final String l = "params";
    public static final String m = "public_key";
    public static final String n = "device";
    public static final String o = "action";
    public static final String p = "type";
    public static final String q = "method";
    private static a t;
    protected boolean r = true;
    protected boolean s = true;

    public abstract JSONObject a() throws JSONException;

    public List<Header> a(boolean z, String str) {
        List<Header> arrayList = new ArrayList();
        arrayList.add(new BasicHeader(a, String.valueOf(z)));
        arrayList.add(new BasicHeader(c, "alipay.msp.cashier.dispatch.bytes"));
        arrayList.add(new BasicHeader("content-type", "application/octet-stream"));
        arrayList.add(new BasicHeader(e, "2.0"));
        arrayList.add(new BasicHeader(f, "TAOBAO"));
        arrayList.add(new BasicHeader(b, a.a(str)));
        arrayList.add(new BasicHeader(g, "CBC"));
        return arrayList;
    }

    public String b() {
        return "4.9.0";
    }

    public String c() throws JSONException {
        HashMap hashMap = new HashMap();
        hashMap.put(n, Build.MODEL);
        hashMap.put("namespace", "com.alipay.mobilecashier");
        hashMap.put(i, "com.alipay.mcpay");
        hashMap.put(j, b());
        return a(hashMap, new HashMap());
    }

    public static JSONObject a(String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("type", str);
        jSONObject2.put("method", str2);
        jSONObject.put("action", jSONObject2);
        return jSONObject;
    }

    public String a(String str, JSONObject jSONObject) {
        b a = b.a();
        c a2 = c.a(a.a);
        JSONObject a3 = com.alipay.sdk.util.b.a(new JSONObject(), jSONObject);
        try {
            String b;
            String c;
            String f;
            String a4;
            String g;
            String ssid;
            String bssid;
            a3.put("tid", a2.a());
            String str2 = com.alipay.sdk.cons.b.b;
            com.alipay.sdk.data.c a5 = com.alipay.sdk.data.c.a();
            Context context = b.a().a;
            com.alipay.sdk.util.a a6 = com.alipay.sdk.util.a.a(context);
            if (TextUtils.isEmpty(a5.a)) {
                b = l.b();
                c = l.c();
                f = l.f(context);
                a4 = k.a(context);
                a4 = a4.substring(0, a4.indexOf("://"));
                g = l.g(context);
                a5.a = "Msp/15.5.3" + " (" + b + ";" + c + ";" + f + ";" + a4 + ";" + g + ";" + Float.toString(new TextView(context).getTextSize());
            }
            b = com.alipay.sdk.util.a.b(context).p;
            c = "-1;-1";
            f = "1";
            a4 = a6.a();
            g = a6.b();
            String c2 = com.alipay.sdk.data.c.c();
            String b2 = com.alipay.sdk.data.c.b();
            if (a2 != null) {
                a5.c = a2.b();
            }
            String replace = Build.MANUFACTURER.replace(";", " ");
            String replace2 = Build.MODEL.replace(";", " ");
            boolean b3 = b.b();
            String str3 = a6.a;
            WifiInfo connectionInfo = ((WifiManager) context.getApplicationContext().getSystemService("wifi")).getConnectionInfo();
            if (connectionInfo != null) {
                ssid = connectionInfo.getSSID();
            } else {
                ssid = "-1";
            }
            connectionInfo = ((WifiManager) context.getApplicationContext().getSystemService("wifi")).getConnectionInfo();
            if (connectionInfo != null) {
                bssid = connectionInfo.getBSSID();
            } else {
                bssid = "00";
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(a5.a).append(";").append(b).append(";").append(c).append(";").append(f).append(";").append(a4).append(";").append(g).append(";").append(a5.c).append(";").append(replace).append(";").append(replace2).append(";").append(b3).append(";").append(str3).append(";-1;-1;").append(a5.b).append(";").append(c2).append(";").append(b2).append(";").append(ssid).append(";").append(bssid);
            if (a2 != null) {
                HashMap hashMap = new HashMap();
                hashMap.put("tid", c.a(context).a());
                hashMap.put("utdid", b.a().c());
                Object b4 = a5.b(context, hashMap);
                if (!TextUtils.isEmpty(b4)) {
                    stringBuilder.append(";").append(b4);
                }
            }
            stringBuilder.append(")");
            a3.put(str2, stringBuilder.toString());
            a3.put(com.alipay.sdk.cons.b.e, l.c(a.a));
            a3.put(com.alipay.sdk.cons.b.f, l.b(a.a));
            a3.put(com.alipay.sdk.cons.b.d, str);
            a3.put(com.alipay.sdk.cons.b.h, com.alipay.sdk.cons.a.d);
            a3.put("utdid", a.c());
            a3.put(com.alipay.sdk.cons.b.j, a2.b());
            bssid = com.alipay.sdk.cons.b.k;
            com.alipay.sdk.data.c.a();
            a3.put(bssid, com.alipay.sdk.data.c.a(a.a));
        } catch (Throwable th) {
        }
        return a3.toString();
    }

    private static boolean a(HttpResponse httpResponse) {
        String str = null;
        String str2 = a;
        if (httpResponse != null) {
            Header[] allHeaders = httpResponse.getAllHeaders();
            if (allHeaders != null && allHeaders.length > 0) {
                for (Header header : allHeaders) {
                    if (header != null) {
                        String name = header.getName();
                        if (name != null && name.equalsIgnoreCase(str2)) {
                            str = header.getValue();
                            break;
                        }
                    }
                }
            }
        }
        return Boolean.valueOf(str).booleanValue();
    }

    private static String a(HttpResponse httpResponse, String str) {
        if (httpResponse == null) {
            return null;
        }
        Header[] allHeaders = httpResponse.getAllHeaders();
        if (allHeaders == null || allHeaders.length <= 0) {
            return null;
        }
        for (Header header : allHeaders) {
            if (header != null) {
                String name = header.getName();
                if (name != null && name.equalsIgnoreCase(str)) {
                    return header.getValue();
                }
            }
        }
        return null;
    }

    public static String a(HashMap<String, String> hashMap, HashMap<String, String> hashMap2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (Entry entry : hashMap.entrySet()) {
            jSONObject2.put((String) entry.getKey(), entry.getValue());
        }
        JSONObject jSONObject3 = new JSONObject();
        for (Entry entry2 : hashMap2.entrySet()) {
            jSONObject3.put((String) entry2.getKey(), entry2.getValue());
        }
        jSONObject2.put("params", jSONObject3);
        jSONObject.put(k, jSONObject2);
        return jSONObject.toString();
    }

    private static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONObject(k);
            if (!jSONObject.has("params")) {
                return false;
            }
            String optString = jSONObject.getJSONObject("params").optString(m, null);
            if (TextUtils.isEmpty(optString)) {
                return false;
            }
            b.a();
            com.alipay.sdk.data.c.a().a(optString);
            return true;
        } catch (JSONException e) {
            return false;
        }
    }

    private static a b(Context context, String str) {
        if (t == null) {
            t = new a(context, str);
        } else if (!TextUtils.equals(str, t.b)) {
            t.b = str;
        }
        return t;
    }

    public final b a(Context context) throws Throwable {
        return a(context, "", k.a(context), true);
    }

    public b a(Context context, String str) throws Throwable {
        return a(context, str, k.a(context), true);
    }

    private b a(Context context, String str, String str2) throws Throwable {
        return a(context, str, str2, true);
    }

    public final b a(Context context, String str, String str2, boolean z) throws Throwable {
        String str3 = null;
        e eVar = new e(this.s);
        c a = eVar.a(new b(c(), a(str, a())), this.r);
        if (t == null) {
            t = new a(context, str2);
        } else if (!TextUtils.equals(str2, t.b)) {
            t.b = str2;
        }
        HttpResponse a2 = t.a(a.b, a(a.a, str));
        String str4 = a;
        if (a2 != null) {
            Header[] allHeaders = a2.getAllHeaders();
            if (allHeaders != null && allHeaders.length > 0) {
                for (Header header : allHeaders) {
                    if (header != null) {
                        String name = header.getName();
                        if (name != null && name.equalsIgnoreCase(str4)) {
                            str3 = header.getValue();
                            break;
                        }
                    }
                }
            }
        }
        b a3 = eVar.a(new c(Boolean.valueOf(str3).booleanValue(), b(a2)));
        if (a3 != null && a(a3.a) && z) {
            return a(context, str, str2, false);
        }
        return a3;
    }

    private static byte[] b(HttpResponse httpResponse) throws IllegalStateException, IOException {
        Throwable th;
        ByteArrayOutputStream byteArrayOutputStream = null;
        byte[] bArr = new byte[1024];
        InputStream content;
        try {
            content = httpResponse.getEntity().getContent();
            try {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                while (true) {
                    try {
                        int read = content.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream2.write(bArr, 0, read);
                    } catch (Throwable th2) {
                        th = th2;
                        byteArrayOutputStream = byteArrayOutputStream2;
                    }
                }
                bArr = byteArrayOutputStream2.toByteArray();
                if (content != null) {
                    try {
                        content.close();
                    } catch (Exception e) {
                    }
                }
                try {
                    byteArrayOutputStream2.close();
                } catch (Exception e2) {
                }
                return bArr;
            } catch (Throwable th3) {
                th = th3;
                if (content != null) {
                    try {
                        content.close();
                    } catch (Exception e3) {
                    }
                }
                if (byteArrayOutputStream != null) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Exception e4) {
                    }
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            content = null;
        }
    }
}
