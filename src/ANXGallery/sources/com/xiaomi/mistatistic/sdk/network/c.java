package com.xiaomi.mistatistic.sdk.network;

import android.os.SystemClock;
import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.controller.i;
import com.xiaomi.mistatistic.sdk.controller.j;
import com.xiaomi.mistatistic.sdk.data.HttpEvent;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.ProtocolException;
import java.net.URL;
import java.security.Permission;
import java.util.List;
import java.util.Map;

/* compiled from: MIHttpConnection */
public class c extends HttpURLConnection {
    private int a = -1;
    private long b = SystemClock.elapsedRealtime();
    private long c;
    private long d;
    private boolean e = false;
    private String f = null;
    private String g = null;
    private f h;
    private e i;
    private HttpURLConnection j;

    public InputStream getErrorStream() {
        return this.j.getErrorStream();
    }

    public Permission getPermission() throws IOException {
        try {
            return this.j.getPermission();
        } catch (Exception e) {
            a(e);
            throw e;
        }
    }

    public String getRequestMethod() {
        return this.j.getRequestMethod();
    }

    public int getResponseCode() throws IOException {
        try {
            g();
            this.a = this.j.getResponseCode();
            h();
            return this.a;
        } catch (Exception e) {
            a(e);
            throw e;
        }
    }

    public String getResponseMessage() throws IOException {
        try {
            return this.j.getResponseMessage();
        } catch (Exception e) {
            a(e);
            throw e;
        }
    }

    public void setRequestMethod(String str) throws ProtocolException {
        try {
            this.j.setRequestMethod(str);
        } catch (Exception e) {
            a(e);
            throw e;
        }
    }

    public String getContentEncoding() {
        return this.j.getContentEncoding();
    }

    public boolean getInstanceFollowRedirects() {
        return this.j.getInstanceFollowRedirects();
    }

    public void setInstanceFollowRedirects(boolean z) {
        this.j.setInstanceFollowRedirects(z);
    }

    public long getHeaderFieldDate(String str, long j) {
        return this.j.getHeaderFieldDate(str, j);
    }

    public void setFixedLengthStreamingMode(long j) {
        try {
            this.j.getClass().getDeclaredMethod("setFixedLengthStreamingMode", new Class[]{Long.TYPE}).invoke(this.j, new Object[]{Long.valueOf(j)});
        } catch (Throwable e) {
            throw new UnsupportedOperationException(e);
        }
    }

    public void setFixedLengthStreamingMode(int i) {
        this.j.setFixedLengthStreamingMode(i);
    }

    public void setChunkedStreamingMode(int i) {
        this.j.setChunkedStreamingMode(i);
    }

    public boolean getAllowUserInteraction() {
        return this.j.getAllowUserInteraction();
    }

    public Object getContent() throws IOException {
        try {
            return this.j.getContent();
        } catch (Exception e) {
            a(e);
            throw e;
        }
    }

    public Object getContent(Class[] clsArr) throws IOException {
        try {
            return this.j.getContent(clsArr);
        } catch (Exception e) {
            a(e);
            throw e;
        }
    }

    public int getContentLength() {
        return this.j.getContentLength();
    }

    public String getContentType() {
        return this.j.getContentType();
    }

    public long getDate() {
        return this.j.getDate();
    }

    public boolean getDefaultUseCaches() {
        return this.j.getDefaultUseCaches();
    }

    public boolean getDoInput() {
        return this.j.getDoInput();
    }

    public boolean getDoOutput() {
        return this.j.getDoOutput();
    }

    public long getExpiration() {
        return this.j.getExpiration();
    }

    public String getHeaderField(int i) {
        return this.j.getHeaderField(i);
    }

    public Map<String, List<String>> getHeaderFields() {
        return this.j.getHeaderFields();
    }

    public Map<String, List<String>> getRequestProperties() {
        return this.j.getRequestProperties();
    }

    public void addRequestProperty(String str, String str2) {
        this.j.addRequestProperty(str, str2);
    }

    public String getHeaderField(String str) {
        return this.j.getHeaderField(str);
    }

    public int getHeaderFieldInt(String str, int i) {
        return this.j.getHeaderFieldInt(str, i);
    }

    public String getHeaderFieldKey(int i) {
        return this.j.getHeaderFieldKey(i);
    }

    public long getIfModifiedSince() {
        return this.j.getIfModifiedSince();
    }

    public InputStream getInputStream() throws IOException {
        try {
            g();
            this.i = new e(this, this.j.getInputStream());
            h();
            d();
            return this.i;
        } catch (Exception e) {
            e();
            a(e);
            throw e;
        }
    }

    public long getLastModified() {
        return this.j.getLastModified();
    }

    public OutputStream getOutputStream() throws IOException {
        try {
            g();
            this.h = new f(this, this.j.getOutputStream());
            h();
            d();
            return this.h;
        } catch (Exception e) {
            e();
            a(e);
            throw e;
        }
    }

    public String getRequestProperty(String str) {
        return this.j.getRequestProperty(str);
    }

    public URL getURL() {
        return this.j.getURL();
    }

    public boolean getUseCaches() {
        return this.j.getUseCaches();
    }

    public void setAllowUserInteraction(boolean z) {
        this.j.setAllowUserInteraction(z);
    }

    public void setDefaultUseCaches(boolean z) {
        this.j.setDefaultUseCaches(z);
    }

    public void setDoInput(boolean z) {
        this.j.setDoInput(z);
    }

    public void setDoOutput(boolean z) {
        this.j.setDoOutput(z);
    }

    public void setIfModifiedSince(long j) {
        this.j.setIfModifiedSince(j);
    }

    public void setRequestProperty(String str, String str2) {
        if ("x-mistats-header".equals(str)) {
            this.g = str2;
        }
        this.j.setRequestProperty(str, str2);
    }

    public void setUseCaches(boolean z) {
        this.j.setUseCaches(z);
    }

    public void setConnectTimeout(int i) {
        this.j.setConnectTimeout(i);
    }

    public int getConnectTimeout() {
        return this.j.getConnectTimeout();
    }

    public void setReadTimeout(int i) {
        this.j.setReadTimeout(i);
    }

    public int getReadTimeout() {
        return this.j.getReadTimeout();
    }

    public String toString() {
        return this.j.toString();
    }

    public c(HttpURLConnection httpURLConnection) {
        super(httpURLConnection.getURL());
        this.j = httpURLConnection;
    }

    public void a(long j) {
        this.b = j;
    }

    public void disconnect() {
        this.j.disconnect();
        b();
    }

    public boolean usingProxy() {
        return this.j.usingProxy();
    }

    public void connect() throws IOException {
        try {
            this.j.connect();
        } catch (Exception e) {
            a(e);
            throw e;
        }
    }

    public void a() {
        b();
    }

    void b() {
        if (!this.e) {
            this.e = true;
            HttpEvent httpEvent = new HttpEvent(getURL().toString(), SystemClock.elapsedRealtime() - this.b, (long) c(), f());
            httpEvent.setIp(this.f);
            httpEvent.setFirstPacketCost(this.d);
            httpEvent.setRequestId(this.g);
            i.a().a(httpEvent);
        }
    }

    private int c() {
        int a;
        int i = 0;
        if (this.i != null) {
            a = this.i.a();
        } else {
            a = 0;
        }
        if (this.h != null) {
            i = this.h.a();
        }
        return ((a + 1100) + i) + getURL().toString().getBytes().length;
    }

    void a(Exception exception) {
        if (!this.e) {
            this.e = true;
            HttpEvent httpEvent = new HttpEvent(getURL().toString(), -1, f(), exception.getClass().getSimpleName());
            httpEvent.setIp(this.f);
            httpEvent.setRequestId(this.g);
            i.a().a(httpEvent);
        }
    }

    private void d() {
        String host = this.url.getHost();
        if (this.f == null && host != null && !a(host)) {
            a.a().execute(new Runnable() {
                public void run() {
                    c.this.e();
                }
            });
        }
    }

    private synchronized void e() {
        if (TextUtils.isEmpty(this.f) && !this.e) {
            String host = this.url.getHost();
            if (!(this.f != null || host == null || a(host))) {
                try {
                    this.f = InetAddress.getByName(host).getHostAddress();
                } catch (Exception e) {
                    j.d("MHC", "can not get Ip exception: " + e.getMessage());
                }
            }
        }
        return;
    }

    private boolean a(String str) {
        if (b.a(str) || b.d(str)) {
            return true;
        }
        return false;
    }

    private int f() {
        int i = -1;
        if (this.a != i) {
            return this.a;
        }
        try {
            return this.j.getResponseCode();
        } catch (Exception e) {
            return i;
        }
    }

    private synchronized void g() {
        if (this.c == 0) {
            this.c = SystemClock.elapsedRealtime();
            this.b = this.c;
        }
    }

    private synchronized void h() {
        if (this.d == 0 && this.c != 0) {
            this.d = SystemClock.elapsedRealtime() - this.c;
        }
    }
}
