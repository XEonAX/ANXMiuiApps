package com.xiaomi.metoknlp.a;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;

/* compiled from: HttpsUtils */
public class b {
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0066 A:{SYNTHETIC, Splitter: B:24:0x0066} */
    /* JADX WARNING: Removed duplicated region for block: B:70:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x006b A:{Catch:{ Exception -> 0x006f }} */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00c5 A:{SYNTHETIC, Splitter: B:56:0x00c5} */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x00ca A:{Catch:{ Exception -> 0x00ce }} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0066 A:{SYNTHETIC, Splitter: B:24:0x0066} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x006b A:{Catch:{ Exception -> 0x006f }} */
    /* JADX WARNING: Removed duplicated region for block: B:70:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00c5 A:{SYNTHETIC, Splitter: B:56:0x00c5} */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x00ca A:{Catch:{ Exception -> 0x00ce }} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String a(String str, Map map) {
        BufferedReader bufferedReader;
        HttpURLConnection httpURLConnection;
        Throwable th;
        BufferedReader bufferedReader2 = null;
        String str2 = "";
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        try {
            URL url = new URL(str);
            HttpURLConnection httpURLConnection2;
            String str3;
            try {
                if (url.getProtocol().toLowerCase().equals("https")) {
                    httpURLConnection2 = (HttpsURLConnection) url.openConnection();
                } else {
                    httpURLConnection2 = (HttpURLConnection) url.openConnection();
                }
                try {
                    httpURLConnection2.setConnectTimeout(30000);
                    httpURLConnection2.setReadTimeout(30000);
                    httpURLConnection2.setRequestMethod("GET");
                    httpURLConnection2.setDoOutput(false);
                    if (map != null && map.size() > 0) {
                        for (String str32 : map.keySet()) {
                            httpURLConnection2.addRequestProperty(str32, (String) map.get(str32));
                        }
                    }
                    httpURLConnection2.connect();
                    if (httpURLConnection2.getResponseCode() == 200) {
                        BufferedReader bufferedReader3 = new BufferedReader(new InputStreamReader(httpURLConnection2.getInputStream()));
                        try {
                            StringBuffer stringBuffer = new StringBuffer();
                            while (true) {
                                String readLine = bufferedReader3.readLine();
                                if (readLine == null) {
                                    break;
                                }
                                stringBuffer.append(readLine);
                            }
                            str2 = stringBuffer.toString();
                            bufferedReader3.close();
                            bufferedReader2 = bufferedReader3;
                            str32 = str2;
                        } catch (Exception e) {
                            bufferedReader = bufferedReader3;
                            httpURLConnection = httpURLConnection2;
                            str32 = str2;
                            if (bufferedReader != null) {
                            }
                            if (httpURLConnection == null) {
                            }
                        } catch (Throwable th2) {
                            bufferedReader2 = bufferedReader3;
                            th = th2;
                            if (bufferedReader2 != null) {
                            }
                            if (httpURLConnection2 != null) {
                            }
                            throw th;
                        }
                    }
                    str32 = str2;
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                        } catch (Exception e2) {
                            return str32;
                        }
                    }
                    if (httpURLConnection2 == null) {
                        return str32;
                    }
                    httpURLConnection2.disconnect();
                    return str32;
                } catch (Exception e3) {
                    bufferedReader = null;
                    str32 = str2;
                    httpURLConnection = httpURLConnection2;
                    if (bufferedReader != null) {
                    }
                    if (httpURLConnection == null) {
                    }
                } catch (Throwable th3) {
                    th = th3;
                    if (bufferedReader2 != null) {
                    }
                    if (httpURLConnection2 != null) {
                    }
                    throw th;
                }
            } catch (Exception e4) {
                bufferedReader = null;
                str32 = str2;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (Exception e5) {
                        return str32;
                    }
                }
                if (httpURLConnection == null) {
                    return str32;
                }
                httpURLConnection.disconnect();
                return str32;
            } catch (Throwable th4) {
                th = th4;
                httpURLConnection2 = null;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (Exception e6) {
                        throw th;
                    }
                }
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                throw th;
            }
        } catch (MalformedURLException e7) {
            return str2;
        }
    }
}
