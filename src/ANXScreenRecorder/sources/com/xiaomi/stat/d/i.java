package com.xiaomi.stat.d;

import android.text.TextUtils;
import com.xiaomi.stat.C0003d;
import com.xiaomi.stat.I;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class i {
    public static final int a = 10000;
    public static final int b = 15000;
    private static final String c = "GET";
    private static final String d = "POST";
    private static final String e = "&";
    private static final String f = "=";
    private static final String g = "UTF-8";

    private i() {
    }

    public static String a(String str) throws IOException {
        return a(str, null, false);
    }

    public static String a(String str, Map<String, String> map) throws IOException {
        return a(str, map, true);
    }

    public static String a(String str, Map<String, String> map, boolean z) throws IOException {
        return a(c, str, map, z);
    }

    public static String b(String str, Map<String, String> map) throws IOException {
        return b(str, map, true);
    }

    public static String b(String str, Map<String, String> map, boolean z) throws IOException {
        return a(d, str, map, z);
    }

    private static String a(String str, String str2, Map<String, String> map, boolean z) {
        HttpURLConnection httpURLConnection;
        IOException e;
        InputStream inputStream;
        OutputStream outputStream;
        HttpURLConnection httpURLConnection2;
        Throwable th;
        HttpURLConnection httpURLConnection3;
        OutputStream outputStream2;
        Throwable th2;
        InputStream inputStream2 = null;
        String a = map == null ? null : a((Map) map, z);
        try {
            String str3;
            if (!c.equals(str) || a == null) {
                str3 = str2;
            } else {
                str3 = str2 + "? " + a;
            }
            httpURLConnection = (HttpURLConnection) new URL(str3).openConnection();
        } catch (IOException e2) {
            e = e2;
            inputStream = null;
            outputStream = null;
            httpURLConnection2 = null;
            try {
                k.e(String.format("HttpUtil %s failed, url: %s, error: %s", new Object[]{str, str2, e.getMessage()}));
                j.a(inputStream);
                j.a(outputStream);
                j.a(httpURLConnection2);
                return null;
            } catch (Throwable th3) {
                th = th3;
                inputStream2 = inputStream;
                httpURLConnection3 = httpURLConnection2;
                outputStream2 = outputStream;
                j.a(inputStream2);
                j.a(outputStream2);
                j.a(httpURLConnection3);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            outputStream2 = null;
            httpURLConnection3 = null;
            j.a(inputStream2);
            j.a(outputStream2);
            j.a(httpURLConnection3);
            throw th;
        }
        try {
            httpURLConnection.setConnectTimeout(a);
            httpURLConnection.setReadTimeout(b);
            if (c.equals(str)) {
                httpURLConnection.setRequestMethod(c);
                outputStream2 = null;
            } else if (!d.equals(str) || a == null) {
                outputStream2 = null;
            } else {
                httpURLConnection.setRequestMethod(d);
                httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                httpURLConnection.setDoOutput(true);
                byte[] bytes = a.getBytes(g);
                outputStream = httpURLConnection.getOutputStream();
                try {
                    outputStream.write(bytes, 0, bytes.length);
                    outputStream.flush();
                    outputStream2 = outputStream;
                } catch (IOException e3) {
                    httpURLConnection2 = httpURLConnection;
                    e = e3;
                    inputStream = null;
                    k.e(String.format("HttpUtil %s failed, url: %s, error: %s", new Object[]{str, str2, e.getMessage()}));
                    j.a(inputStream);
                    j.a(outputStream);
                    j.a(httpURLConnection2);
                    return null;
                } catch (Throwable th5) {
                    outputStream2 = outputStream;
                    th2 = th5;
                    httpURLConnection3 = httpURLConnection;
                    th = th2;
                    j.a(inputStream2);
                    j.a(outputStream2);
                    j.a(httpURLConnection3);
                    throw th;
                }
            }
        } catch (IOException e32) {
            outputStream = null;
            httpURLConnection2 = httpURLConnection;
            e = e32;
            inputStream = null;
            k.e(String.format("HttpUtil %s failed, url: %s, error: %s", new Object[]{str, str2, e.getMessage()}));
            j.a(inputStream);
            j.a(outputStream);
            j.a(httpURLConnection2);
            return null;
        } catch (Throwable th52) {
            outputStream2 = null;
            th2 = th52;
            httpURLConnection3 = httpURLConnection;
            th = th2;
            j.a(inputStream2);
            j.a(outputStream2);
            j.a(httpURLConnection3);
            throw th;
        }
        try {
            int responseCode = httpURLConnection.getResponseCode();
            InputStream inputStream3 = httpURLConnection.getInputStream();
            try {
                byte[] b = j.b(inputStream3);
                k.b(String.format("HttpUtil %s succeed url: %s, code: %s", new Object[]{str, str2, Integer.valueOf(responseCode)}));
                a = new String(b, g);
                j.a(inputStream3);
                j.a(outputStream2);
                j.a(httpURLConnection);
                return a;
            } catch (IOException e322) {
                IOException iOException = e322;
                inputStream = inputStream3;
                outputStream = outputStream2;
                httpURLConnection2 = httpURLConnection;
                e = iOException;
                k.e(String.format("HttpUtil %s failed, url: %s, error: %s", new Object[]{str, str2, e.getMessage()}));
                j.a(inputStream);
                j.a(outputStream);
                j.a(httpURLConnection2);
                return null;
            } catch (Throwable th6) {
                httpURLConnection3 = httpURLConnection;
                th = th6;
                inputStream2 = inputStream3;
                j.a(inputStream2);
                j.a(outputStream2);
                j.a(httpURLConnection3);
                throw th;
            }
        } catch (IOException e3222) {
            outputStream = outputStream2;
            httpURLConnection2 = httpURLConnection;
            e = e3222;
            inputStream = null;
        } catch (Throwable th522) {
            th2 = th522;
            httpURLConnection3 = httpURLConnection;
            th = th2;
            j.a(inputStream2);
            j.a(outputStream2);
            j.a(httpURLConnection3);
            throw th;
        }
    }

    private static String a(Map<String, String> map, boolean z) {
        String str;
        StringBuilder stringBuilder = new StringBuilder();
        for (Entry entry : map.entrySet()) {
            try {
                if (!TextUtils.isEmpty((CharSequence) entry.getKey())) {
                    if (stringBuilder.length() > 0) {
                        stringBuilder.append(e);
                    }
                    stringBuilder.append(URLEncoder.encode((String) entry.getKey(), g));
                    stringBuilder.append(f);
                    if (entry.getValue() == null) {
                        str = "null";
                    } else {
                        str = (String) entry.getValue();
                    }
                    stringBuilder.append(URLEncoder.encode(str, g));
                }
            } catch (UnsupportedEncodingException e) {
                k.e("format params failed");
            }
        }
        if (z) {
            str = a((Map) map);
            if (stringBuilder.length() > 0) {
                stringBuilder.append(e);
            }
            stringBuilder.append(URLEncoder.encode(C0003d.f, g));
            stringBuilder.append(f);
            stringBuilder.append(URLEncoder.encode(str, g));
        }
        return stringBuilder.toString();
    }

    public static String a(Map<String, String> map) {
        StringBuilder stringBuilder = new StringBuilder();
        if (map != null) {
            List<String> arrayList = new ArrayList(map.keySet());
            Collections.sort(arrayList);
            for (String str : arrayList) {
                if (!TextUtils.isEmpty(str)) {
                    stringBuilder.append(str);
                    stringBuilder.append((String) map.get(str));
                }
            }
        }
        stringBuilder.append(I.c());
        return g.c(stringBuilder.toString());
    }
}
