package com.alibaba.alibclinkpartner.f;

import com.alibaba.alibclinkpartner.j.e;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import java.util.Map.Entry;

public class f implements e {
    private void a(HttpURLConnection httpURLConnection, Map<String, String> map) {
        if (httpURLConnection != null && map != null) {
            for (Entry entry : map.entrySet()) {
                if (!(entry.getKey() == null || entry.getValue() == null)) {
                    httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0068 A:{SYNTHETIC, Splitter: B:15:0x0068} */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00c6 A:{SYNTHETIC, Splitter: B:38:0x00c6} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public d a(String str, Map<String, String> map) {
        Exception e;
        Throwable th;
        d dVar = new d();
        BufferedReader bufferedReader = null;
        BufferedReader bufferedReader2;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            a(httpURLConnection, (Map) map);
            httpURLConnection.setConnectTimeout(5000);
            httpURLConnection.setReadTimeout(5000);
            int responseCode = httpURLConnection.getResponseCode();
            dVar.a = responseCode;
            if (responseCode == 200) {
                bufferedReader2 = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), "UTF-8"));
                try {
                    StringBuilder stringBuilder = new StringBuilder();
                    while (true) {
                        String readLine = bufferedReader2.readLine();
                        if (readLine == null) {
                            break;
                        }
                        stringBuilder.append(readLine);
                    }
                    dVar.b = stringBuilder.toString();
                    dVar.c = httpURLConnection.getHeaderFields();
                    e.b("ALPHttpUrlConnectionServiceImpl", "get", "http get request success");
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    return dVar;
                } catch (Exception e3) {
                    e = e3;
                    try {
                        e.a("ALPHttpUrlConnectionServiceImpl", "get", "http get request error; e=" + e.toString());
                        if (bufferedReader2 != null) {
                        }
                        return dVar;
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                        }
                        throw th;
                    }
                }
            }
            dVar.c = httpURLConnection.getHeaderFields();
            e.b("ALPHttpUrlConnectionServiceImpl", "get", "http get request error responseCode = " + httpURLConnection.getResponseCode());
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e22) {
                    e22.printStackTrace();
                }
            }
            return dVar;
        } catch (Exception e4) {
            e = e4;
            bufferedReader2 = bufferedReader;
            e.a("ALPHttpUrlConnectionServiceImpl", "get", "http get request error; e=" + e.toString());
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (IOException e222) {
                    e222.printStackTrace();
                }
            }
            return dVar;
        } catch (Throwable th3) {
            th = th3;
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }

    public d a(String str, Map<String, String> map, String str2) {
        return new d();
    }
}
