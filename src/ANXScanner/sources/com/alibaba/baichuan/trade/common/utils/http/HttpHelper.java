package com.alibaba.baichuan.trade.common.utils.http;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Map;
import java.util.Map.Entry;
import mtopsdk.network.util.Constants.Protocol;

public class HttpHelper {
    public static final int INVALID_RESPONSE_CODE = -999;

    public static class HttpHelpterException extends Exception {
        public int statusCode;

        HttpHelpterException(Throwable th) {
            super(th);
        }
    }

    private static InputStream a(String str) {
        int i = INVALID_RESPONSE_CODE;
        try {
            HttpURLConnection b = b(str);
            i = b.getResponseCode();
            a(i);
            return b.getInputStream();
        } catch (Throwable e) {
            HttpHelpterException httpHelpterException = new HttpHelpterException(e);
            httpHelpterException.statusCode = i;
            throw httpHelpterException;
        }
    }

    private static String a(InputStream inputStream, String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    return new String(byteArrayOutputStream.toByteArray(), str);
                }
                byteArrayOutputStream.write(bArr, 0, read);
            } catch (Throwable e) {
                throw new RuntimeException(e);
            }
        }
    }

    private static void a(int i) {
        if (i != 200) {
            throw new RuntimeException("http request exception, response code: " + i);
        }
    }

    private static HttpURLConnection b(String str) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setConnectTimeout(getConnectionTimeout(5000));
            httpURLConnection.setReadTimeout(getReadTimeout(5000));
            return httpURLConnection;
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    public static String encodeRequest(Map<String, String> map) {
        StringBuilder stringBuilder = new StringBuilder();
        Object obj = null;
        for (Entry entry : map.entrySet()) {
            Object obj2;
            if (obj != null) {
                try {
                    stringBuilder.append("&");
                    obj2 = obj;
                } catch (Throwable e) {
                    throw new RuntimeException(e);
                }
            }
            obj2 = 1;
            stringBuilder.append((String) entry.getKey()).append("=").append(URLEncoder.encode((String) entry.getValue(), "UTF-8"));
            obj = obj2;
        }
        return stringBuilder.toString();
    }

    public static String get(String str, Map<String, String> map) {
        try {
            return IOUtils.toString(a(str + (map == null ? "" : "?") + (map == null ? "" : encodeRequest(map))), "UTF-8");
        } catch (Throwable e) {
            if (e instanceof HttpHelpterException) {
                throw e;
            }
            throw new HttpHelpterException(e);
        }
    }

    public static String getCharset() {
        return "UTF-8";
    }

    public static int getConnectionTimeout(int i) {
        return i;
    }

    public static String getHttp(String str) {
        try {
            HttpURLConnection b = b(str);
            a(b.getResponseCode());
            return a(b.getInputStream(), getCharset());
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static int getReadTimeout(int i) {
        return i;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x005b A:{SYNTHETIC, Splitter: B:19:0x005b} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String postForm(Map<String, String> map, String str) {
        Throwable e;
        Closeable closeable = null;
        HttpURLConnection b;
        try {
            byte[] bytes = encodeRequest(map).getBytes("UTF-8");
            b = b(str);
            try {
                b.setDoInput(true);
                b.setDoOutput(true);
                b.setRequestMethod("POST");
                b.setUseCaches(false);
                b.setRequestProperty(Protocol.CONTENT_TYPE, "application/x-www-form-urlencoded");
                closeable = b.getOutputStream();
                closeable.write(bytes);
                closeable.flush();
                a(b.getResponseCode());
                String a = a(b.getInputStream(), getCharset());
                IOUtils.closeQuietly(closeable);
                if (b != null) {
                    try {
                        b.disconnect();
                    } catch (Exception e2) {
                    }
                }
                return a;
            } catch (Exception e3) {
                e = e3;
                try {
                    throw new HttpHelpterException(e);
                } catch (Throwable th) {
                    e = th;
                    IOUtils.closeQuietly(closeable);
                    if (b != null) {
                    }
                    throw e;
                }
            }
        } catch (Exception e4) {
            e = e4;
            b = null;
            throw new HttpHelpterException(e);
        } catch (Throwable th2) {
            e = th2;
            b = null;
            IOUtils.closeQuietly(closeable);
            if (b != null) {
                try {
                    b.disconnect();
                } catch (Exception e5) {
                }
            }
            throw e;
        }
    }
}
