package com.uploader.implement.b.a;

import android.text.TextUtils;
import com.alibaba.baichuan.trade.common.webview.jsbridge.AlibcJsResult;
import com.uploader.implement.b.f;
import com.uploader.implement.c;
import com.uploader.implement.c.a;
import com.uploader.implement.e.b;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import mtopsdk.network.util.Constants.Protocol;

/* compiled from: ShortLivedConnection */
public class e extends a {
    static volatile SSLSocketFactory f = null;
    HttpURLConnection e = null;
    boolean g;

    e(c config, g target) {
        super(config, target);
        this.g = target.f.startsWith("https://");
    }

    public boolean b() {
        return true;
    }

    public boolean c() {
        return true;
    }

    public void a(final f data, final int sendSequence) {
        b.a(new Runnable() {
            public void run() {
                a error;
                com.uploader.implement.b.b listener = e.this.e();
                try {
                    e.this.g();
                    if (data.a != null) {
                        for (Entry entry : data.a.entrySet()) {
                            e.this.e.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                        }
                    }
                    if (com.uploader.implement.a.a(4)) {
                        com.uploader.implement.a.a(4, "ShortLivedConnection", e.this.c + " URL:" + e.this.e.getURL().toString() + " RequestHeaders:" + e.this.e.getRequestProperties());
                    }
                    try {
                        e.this.e.connect();
                        if (listener != null) {
                            listener.a(e.this, sendSequence);
                        }
                        if (data.b != null) {
                            OutputStream outputStream = null;
                            try {
                                outputStream = e.this.e.getOutputStream();
                                outputStream.write(data.b, data.c, data.d);
                                if (com.uploader.implement.a.a(4)) {
                                    com.uploader.implement.a.a(4, "ShortLivedConnection", e.this.c + " BODY:" + new String(data.b));
                                }
                                if (outputStream != null) {
                                    try {
                                        outputStream.close();
                                    } catch (IOException e) {
                                        if (com.uploader.implement.a.a(8)) {
                                            com.uploader.implement.a.a(8, "ShortLivedConnection", e.toString());
                                        }
                                    }
                                }
                            } catch (Exception e2) {
                                if (com.uploader.implement.a.a(8)) {
                                    com.uploader.implement.a.a(8, "ShortLivedConnection", e.this.c + " send data error.", e2);
                                }
                                e.this.e.disconnect();
                                error = new a("100", AlibcJsResult.TIMEOUT, "send data error", true);
                                if (listener != null) {
                                    listener.a(e.this, error);
                                }
                                if (outputStream != null) {
                                    try {
                                        outputStream.close();
                                        return;
                                    } catch (IOException e3) {
                                        if (com.uploader.implement.a.a(8)) {
                                            com.uploader.implement.a.a(8, "ShortLivedConnection", e3.toString());
                                            return;
                                        }
                                        return;
                                    }
                                }
                                return;
                            } catch (Throwable th) {
                                if (outputStream != null) {
                                    try {
                                        outputStream.close();
                                    } catch (IOException e32) {
                                        if (com.uploader.implement.a.a(8)) {
                                            com.uploader.implement.a.a(8, "ShortLivedConnection", e32.toString());
                                        }
                                    }
                                }
                            }
                        }
                        if (listener != null) {
                            listener.b(e.this, sendSequence);
                        }
                        e.this.a(e.this.e, listener);
                    } catch (Exception e22) {
                        if (com.uploader.implement.a.a(8)) {
                            com.uploader.implement.a.a(8, "ShortLivedConnection", "connect error.", e22);
                        }
                        error = new a("100", AlibcJsResult.NO_PERMISSION, "connect error", true);
                        if (listener != null) {
                            listener.a(e.this, error);
                        }
                    }
                } catch (Exception e222) {
                    if (com.uploader.implement.a.a(8)) {
                        com.uploader.implement.a.a(8, "ShortLivedConnection", e.this.c + " open connection error, ", e222);
                    }
                    error = new a("100", "3", "open connection error", true);
                    if (listener != null) {
                        listener.a(e.this, error);
                    }
                }
            }
        });
    }

    public boolean d() {
        return false;
    }

    private void g() throws Exception {
        if (this.e == null) {
            g target = this.a;
            URL url = new URL(target.f);
            if (this.g) {
                this.e = (HttpURLConnection) url.openConnection();
                a(this.e, target.g);
            } else {
                Proxy p = null;
                if (!TextUtils.isEmpty(target.c) && target.d > 0) {
                    p = new Proxy(Type.HTTP, new InetSocketAddress(target.c, target.d));
                }
                if (p != null) {
                    this.e = (HttpURLConnection) url.openConnection(p);
                } else {
                    this.e = (HttpURLConnection) url.openConnection();
                }
            }
            this.e.setConnectTimeout(10000);
            this.e.setConnectTimeout(10000);
            this.e.setRequestMethod("POST");
            this.e.setDoOutput(true);
            this.e.setDoInput(true);
        }
    }

    private void a(HttpURLConnection conn, final String host) {
        ((HttpsURLConnection) conn).setHostnameVerifier(new HostnameVerifier() {
            public boolean verify(String s, SSLSession sslSession) {
                return HttpsURLConnection.getDefaultHostnameVerifier().verify(host, sslSession);
            }
        });
    }

    /* JADX WARNING: Removed duplicated region for block: B:59:0x01b4 A:{Catch:{ all -> 0x026e }} */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x01ef A:{Catch:{ all -> 0x026e }} */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x01fb A:{SYNTHETIC, Splitter: B:65:0x01fb} */
    /* JADX WARNING: Removed duplicated region for block: B:113:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0200 A:{SYNTHETIC, Splitter: B:68:0x0200} */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x01b4 A:{Catch:{ all -> 0x026e }} */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x01ef A:{Catch:{ all -> 0x026e }} */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x01fb A:{SYNTHETIC, Splitter: B:65:0x01fb} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0200 A:{SYNTHETIC, Splitter: B:68:0x0200} */
    /* JADX WARNING: Removed duplicated region for block: B:113:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x0271 A:{SYNTHETIC, Splitter: B:86:0x0271} */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x0276 A:{SYNTHETIC, Splitter: B:89:0x0276} */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x0271 A:{SYNTHETIC, Splitter: B:86:0x0271} */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x0276 A:{SYNTHETIC, Splitter: B:89:0x0276} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(HttpURLConnection conn, com.uploader.implement.b.b listener) {
        Exception e;
        a error;
        Throwable th;
        f data = new f();
        InputStream is = null;
        try {
            int responseCode = conn.getResponseCode();
            String responseMsg = conn.getResponseMessage();
            Map headers = conn.getHeaderFields();
            if (com.uploader.implement.a.a(4)) {
                com.uploader.implement.a.a(4, "ShortLivedConnection", "code=" + responseCode + ",msg=" + responseMsg + ",headers=" + headers);
            }
            is = conn.getInputStream();
            if (!(headers == null || headers.isEmpty())) {
                data.a = new HashMap(headers.size());
                for (Entry entry : headers.entrySet()) {
                    if (entry.getKey() != null) {
                        data.a.put(entry.getKey(), ((List) entry.getValue()).get(0));
                    }
                }
            }
            if (data.a == null) {
                data.a = new HashMap();
            }
            data.a.put("response_code", String.valueOf(responseCode));
            data.a.put("response_msg", responseMsg);
            if (is == null) {
                if (listener != null) {
                    listener.a((com.uploader.implement.b.e) this, data);
                }
                f();
                return;
            }
            DataInputStream dis = null;
            ByteArrayOutputStream bos = null;
            try {
                if (Protocol.GZIP.equalsIgnoreCase(conn.getHeaderField(Protocol.CONTENT_ENCODING))) {
                    is = new GZIPInputStream(is);
                }
                DataInputStream dis2 = new DataInputStream(is);
                try {
                    ByteArrayOutputStream bos2 = new ByteArrayOutputStream();
                    try {
                        byte[] buffer = new byte[1024];
                        while (true) {
                            int length = dis2.read(buffer);
                            if (length == -1) {
                                break;
                            }
                            bos2.write(buffer, 0, length);
                        }
                        data.b = bos2.toByteArray();
                        data.d = data.b.length;
                        if (com.uploader.implement.a.a(2)) {
                            com.uploader.implement.a.a(2, "ShortLivedConnection", this.c + " response body:" + new String(data.b));
                        }
                        if (dis2 != null) {
                            try {
                                dis2.close();
                            } catch (IOException e2) {
                            }
                        }
                        if (bos2 != null) {
                            try {
                                bos2.close();
                            } catch (IOException e3) {
                            }
                        }
                        if (listener != null) {
                            listener.a((com.uploader.implement.b.e) this, data);
                        }
                        f();
                    } catch (Exception e4) {
                        e = e4;
                        bos = bos2;
                        dis = dis2;
                        try {
                            if (com.uploader.implement.a.a(8)) {
                            }
                            error = new a("100", AlibcJsResult.FAIL, "parseResponse read", true);
                            if (listener != null) {
                            }
                            f();
                            if (dis != null) {
                            }
                            if (bos != null) {
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (dis != null) {
                            }
                            if (bos != null) {
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        bos = bos2;
                        dis = dis2;
                        if (dis != null) {
                        }
                        if (bos != null) {
                        }
                        throw th;
                    }
                } catch (Exception e5) {
                    e = e5;
                    dis = dis2;
                    if (com.uploader.implement.a.a(8)) {
                        com.uploader.implement.a.a(8, "ShortLivedConnection", this.c + " parseResponse, read Stream error", e);
                    }
                    error = new a("100", AlibcJsResult.FAIL, "parseResponse read", true);
                    if (listener != null) {
                        listener.a((com.uploader.implement.b.e) this, error);
                    }
                    f();
                    if (dis != null) {
                        try {
                            dis.close();
                        } catch (IOException e6) {
                        }
                    }
                    if (bos != null) {
                        try {
                            bos.close();
                        } catch (IOException e7) {
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    dis = dis2;
                    if (dis != null) {
                        try {
                            dis.close();
                        } catch (IOException e8) {
                        }
                    }
                    if (bos != null) {
                        try {
                            bos.close();
                        } catch (IOException e9) {
                        }
                    }
                    throw th;
                }
            } catch (Exception e10) {
                e = e10;
                if (com.uploader.implement.a.a(8)) {
                }
                error = new a("100", AlibcJsResult.FAIL, "parseResponse read", true);
                if (listener != null) {
                }
                f();
                if (dis != null) {
                }
                if (bos != null) {
                }
            }
        } catch (Exception e11) {
            if (com.uploader.implement.a.a(8)) {
                com.uploader.implement.a.a(8, "ShortLivedConnection", this.c + " parseResponse:" + e11.toString());
            }
            error = new a("100", AlibcJsResult.FAIL, "parseResponse getStream", true);
            if (listener != null) {
                listener.a((com.uploader.implement.b.e) this, error);
            }
            f();
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e22) {
                    if (com.uploader.implement.a.a(8)) {
                        com.uploader.implement.a.a(8, "ShortLivedConnection", e22.toString());
                    }
                }
            }
        }
    }

    void f() {
        try {
            this.e.disconnect();
        } catch (Exception e) {
        }
    }
}
