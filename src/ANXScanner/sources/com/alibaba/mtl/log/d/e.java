package com.alibaba.mtl.log.d;

import android.text.TextUtils;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HttpsURLConnection;
import mtopsdk.network.util.Constants.Protocol;
import org.android.spdy.SpdyRequest;

public final class e {
    private static u a = null;

    public static class a {
        public int E = -1;
        public byte[] data = null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:153:0x03a0  */
    /* JADX WARNING: Removed duplicated region for block: B:204:0x0330 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:132:0x0368 A:{SYNTHETIC, Splitter: B:132:0x0368} */
    /* JADX WARNING: Removed duplicated region for block: B:140:0x0379 A:{SYNTHETIC, Splitter: B:140:0x0379} */
    /* JADX WARNING: Removed duplicated region for block: B:171:0x03cc A:{SYNTHETIC, Splitter: B:171:0x03cc} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static a a(int var0, String var1, Map<String, Object> var2, boolean var3) {
        Throwable var70;
        a var75;
        Throwable th;
        IOException var68;
        Object obj;
        Throwable th2;
        MalformedURLException var66;
        IOException var67;
        a var4 = new a();
        if (TextUtils.isEmpty(var1)) {
            return var4;
        }
        URL var5 = null;
        try {
            URL var52 = new URL(var1);
            try {
                HttpURLConnection var6 = (HttpURLConnection) var52.openConnection();
                if (var6 != null) {
                    int var14;
                    try {
                        if (var6 instanceof HttpsURLConnection) {
                            if (a == null && !TextUtils.isEmpty(var52.getHost())) {
                                a = new u(var52.getHost());
                            }
                            ((HttpsURLConnection) var6).setSSLSocketFactory(a);
                        }
                    } catch (Throwable th3) {
                    }
                    if (var0 == 2 || var0 == 3) {
                        var6.setDoOutput(true);
                    }
                    var6.setDoInput(true);
                    if (var0 == 2 || var0 == 3) {
                        var6.setRequestMethod("POST");
                    } else {
                        try {
                            var6.setRequestMethod(SpdyRequest.GET_METHOD);
                        } catch (ProtocolException var72) {
                            var72.printStackTrace();
                            return var4;
                        }
                    }
                    var6.setUseCaches(false);
                    var6.setConnectTimeout(10000);
                    var6.setReadTimeout(60000);
                    var6.setRequestProperty("Connection", "close");
                    if (var3) {
                        var6.setRequestProperty("Accept-Encoding", "gzip,deflate");
                    }
                    var6.setInstanceFollowRedirects(true);
                    byte[] var7 = null;
                    if (var0 == 2 || var0 == 3) {
                        if (var0 == 2) {
                            var6.setRequestProperty(Protocol.CONTENT_TYPE, "multipart/form-data; boundary=GJircTeP");
                        } else if (var0 == 3) {
                            var6.setRequestProperty(Protocol.CONTENT_TYPE, "application/x-www-form-urlencoded");
                        }
                        int var8 = 0;
                        if (var2 != null && var2.size() > 0) {
                            ByteArrayOutputStream var9 = new ByteArrayOutputStream();
                            Set var10 = var2.keySet();
                            String[] var11 = new String[var10.size()];
                            var10.toArray(var11);
                            var11 = g.a().a(var11, true);
                            String[] var12 = var11;
                            int var13 = var11.length;
                            for (var14 = 0; var14 < var13; var14++) {
                                String var15 = var12[var14];
                                if (var0 == 2) {
                                    byte[] var16 = (byte[]) var2.get(var15);
                                    if (var16 != null) {
                                        try {
                                            var9.write(String.format("--GJircTeP\r\nContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\nContent-Type: application/octet-stream \r\n\r\n", new Object[]{var15, var15}).getBytes());
                                            var9.write(var16);
                                            var9.write("\r\n".getBytes());
                                        } catch (IOException var64) {
                                            var64.printStackTrace();
                                        }
                                    }
                                } else if (var0 == 3) {
                                    String var80 = (String) var2.get(var15);
                                    if (var9.size() > 0) {
                                        try {
                                            var9.write(("&" + var15 + "=" + var80).getBytes());
                                        } catch (IOException var63) {
                                            var63.printStackTrace();
                                        }
                                    } else {
                                        try {
                                            var9.write((var15 + "=" + var80).getBytes());
                                        } catch (IOException var62) {
                                            var62.printStackTrace();
                                        }
                                    }
                                }
                            }
                            if (var0 == 2) {
                                try {
                                    var9.write("--GJircTeP--\r\n".getBytes());
                                } catch (IOException var61) {
                                    var61.printStackTrace();
                                }
                            }
                            var7 = var9.toByteArray();
                        }
                        if (var7 != null) {
                            var8 = var7.length;
                        }
                        var6.setRequestProperty(Protocol.CONTENT_LENGTH, String.valueOf(var8));
                    }
                    DataOutputStream var73 = null;
                    try {
                        Object var74;
                        long var77;
                        byte[] var79;
                        var6.connect();
                        if ((var0 == 2 || var0 == 3) && var7 != null && var7.length > 0) {
                            DataOutputStream dataOutputStream = new DataOutputStream(var6.getOutputStream());
                            try {
                                dataOutputStream.write(var7);
                                dataOutputStream.flush();
                                var73 = dataOutputStream;
                            } catch (Exception e) {
                                var70 = e;
                                var73 = dataOutputStream;
                                try {
                                    var70.printStackTrace();
                                    i.a("UtAnalytics", "http", var70);
                                    var75 = var4;
                                    if (var73 != null) {
                                    }
                                    return var75;
                                } catch (Throwable th4) {
                                    th = th4;
                                    if (var73 != null) {
                                        try {
                                            var73.close();
                                        } catch (IOException var59) {
                                            var59.printStackTrace();
                                        }
                                    }
                                    throw th;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                var73 = dataOutputStream;
                                if (var73 != null) {
                                }
                                throw th;
                            }
                        }
                        if (var73 != null) {
                            try {
                                var73.close();
                            } catch (IOException var592) {
                                var592.printStackTrace();
                            }
                        }
                        try {
                            var4.E = var6.getResponseCode();
                            i.a("UtAnalytics", "responseCode:", Integer.valueOf(var4.E));
                        } catch (IOException var60) {
                            var60.printStackTrace();
                        }
                        ByteArrayOutputStream var76 = new ByteArrayOutputStream();
                        if (var3) {
                            try {
                                if (Protocol.GZIP.equals(var6.getContentEncoding())) {
                                    var74 = new GZIPInputStream(var6.getInputStream());
                                    var77 = System.currentTimeMillis();
                                    var79 = new byte[2048];
                                    while (true) {
                                        var14 = ((InputStream) var74).read(var79, 0, 2048);
                                        if (var14 != -1) {
                                            if (var74 != null) {
                                                try {
                                                    ((InputStream) var74).close();
                                                } catch (Exception var58) {
                                                    var58.printStackTrace();
                                                }
                                            }
                                            if (var76.size() <= 0) {
                                                return var4;
                                            }
                                            var4.data = var76.toByteArray();
                                            return var4;
                                        }
                                        var76.write(var79, 0, var14);
                                    }
                                }
                            } catch (IOException e2) {
                                var68 = e2;
                                obj = null;
                                try {
                                    var68.printStackTrace();
                                    a var78 = var4;
                                    if (obj != null) {
                                        try {
                                            ((InputStream) obj).close();
                                        } catch (Exception var582) {
                                            var582.printStackTrace();
                                        }
                                    }
                                    return var78;
                                } catch (Throwable th6) {
                                    th2 = th6;
                                    if (obj != null) {
                                        try {
                                            ((InputStream) obj).close();
                                        } catch (Exception var5822) {
                                            var5822.printStackTrace();
                                        }
                                    }
                                    throw th2;
                                }
                            } catch (Throwable th7) {
                                th2 = th7;
                                obj = null;
                                if (obj != null) {
                                }
                                throw th2;
                            }
                        }
                        DataInputStream var742 = new DataInputStream(var6.getInputStream());
                        try {
                            var77 = System.currentTimeMillis();
                            var79 = new byte[2048];
                            while (true) {
                                var14 = ((InputStream) var742).read(var79, 0, 2048);
                                if (var14 != -1) {
                                }
                            }
                        } catch (IOException e3) {
                            var68 = e3;
                            obj = var742;
                        } catch (Throwable th72) {
                            th2 = th72;
                            obj = var742;
                        }
                    } catch (Exception e4) {
                        var70 = e4;
                        var70.printStackTrace();
                        i.a("UtAnalytics", "http", var70);
                        var75 = var4;
                        if (var73 != null) {
                            try {
                                var73.close();
                            } catch (IOException var5922) {
                                var5922.printStackTrace();
                            }
                        }
                        return var75;
                    }
                }
                i.a("UtAnalytics", "conn", var6);
                return var4;
            } catch (MalformedURLException e5) {
                var66 = e5;
                var5 = var52;
                var66.printStackTrace();
                return var4;
            } catch (SocketTimeoutException e6) {
                var5 = var52;
                Log.e("HttpUtils", "SocketTimeoutException: " + var5.getProtocol() + "://" + var5.getHost() + " (port " + var5.getPort() + ")");
                return var4;
            } catch (IOException e7) {
                var67 = e7;
                var5 = var52;
                var67.printStackTrace();
                return var4;
            }
        } catch (MalformedURLException e8) {
            var66 = e8;
            var66.printStackTrace();
            return var4;
        } catch (SocketTimeoutException e9) {
            Log.e("HttpUtils", "SocketTimeoutException: " + var5.getProtocol() + "://" + var5.getHost() + " (port " + var5.getPort() + ")");
            return var4;
        } catch (IOException e10) {
            var67 = e10;
            var67.printStackTrace();
            return var4;
        }
    }

    static {
        System.setProperty("http.keepAlive", "true");
    }
}
