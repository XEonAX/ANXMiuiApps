package com.xiaomi.mistatistic.sdk.network;

import android.os.SystemClock;
import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.controller.i;
import com.xiaomi.mistatistic.sdk.controller.j;
import com.xiaomi.mistatistic.sdk.data.HttpEvent;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ProtocolException;
import java.net.URL;
import java.security.Permission;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: MIHttpsConnection */
public class d extends HttpsURLConnection {
    private int a = -1;
    private long b;
    private long c;
    private long d;
    private boolean e = false;
    private String f = null;
    private String g = null;
    private HttpsURLConnection h;

    public Principal getPeerPrincipal() throws SSLPeerUnverifiedException {
        try {
            return this.h.getPeerPrincipal();
        } catch (Exception e) {
            a(e);
            throw e;
        }
    }

    public Principal getLocalPrincipal() {
        return this.h.getLocalPrincipal();
    }

    public void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.h.setHostnameVerifier(hostnameVerifier);
    }

    public HostnameVerifier getHostnameVerifier() {
        return this.h.getHostnameVerifier();
    }

    public void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.h.setSSLSocketFactory(sSLSocketFactory);
    }

    public SSLSocketFactory getSSLSocketFactory() {
        return this.h.getSSLSocketFactory();
    }

    public InputStream getErrorStream() {
        return this.h.getErrorStream();
    }

    public Permission getPermission() throws IOException {
        try {
            return this.h.getPermission();
        } catch (Exception e) {
            a(e);
            throw e;
        }
    }

    public String getRequestMethod() {
        return this.h.getRequestMethod();
    }

    public int getResponseCode() throws IOException {
        try {
            f();
            this.a = this.h.getResponseCode();
            g();
            return this.a;
        } catch (Exception e) {
            a(e);
            throw e;
        }
    }

    public String getResponseMessage() throws IOException {
        try {
            return this.h.getResponseMessage();
        } catch (Exception e) {
            a(e);
            throw e;
        }
    }

    public void setRequestMethod(String str) throws ProtocolException {
        try {
            this.h.setRequestMethod(str);
        } catch (Exception e) {
            a(e);
            throw e;
        }
    }

    public String getContentEncoding() {
        return this.h.getContentEncoding();
    }

    public boolean getInstanceFollowRedirects() {
        return this.h.getInstanceFollowRedirects();
    }

    public void setInstanceFollowRedirects(boolean z) {
        this.h.setInstanceFollowRedirects(z);
    }

    public long getHeaderFieldDate(String str, long j) {
        return this.h.getHeaderFieldDate(str, j);
    }

    public void setFixedLengthStreamingMode(long j) {
        try {
            this.h.getClass().getMethod("setFixedLengthStreamingMode", new Class[]{Long.TYPE}).invoke(this.h, new Object[]{Long.valueOf(j)});
        } catch (Throwable e) {
            throw new UnsupportedOperationException(e);
        }
    }

    public void setFixedLengthStreamingMode(int i) {
        this.h.setFixedLengthStreamingMode(i);
    }

    public void setChunkedStreamingMode(int i) {
        this.h.setChunkedStreamingMode(i);
    }

    public boolean getAllowUserInteraction() {
        return this.h.getAllowUserInteraction();
    }

    public Object getContent() throws IOException {
        return this.h.getContent();
    }

    public Object getContent(Class[] clsArr) throws IOException {
        try {
            return this.h.getContent(clsArr);
        } catch (Exception e) {
            a(e);
            throw e;
        }
    }

    public int getContentLength() {
        return this.h.getContentLength();
    }

    public String getContentType() {
        return this.h.getContentType();
    }

    public long getDate() {
        return this.h.getDate();
    }

    public boolean getDefaultUseCaches() {
        return this.h.getDefaultUseCaches();
    }

    public boolean getDoInput() {
        return this.h.getDoInput();
    }

    public boolean getDoOutput() {
        return this.h.getDoOutput();
    }

    public long getExpiration() {
        return this.h.getExpiration();
    }

    public String getHeaderField(int i) {
        return this.h.getHeaderField(i);
    }

    public Map<String, List<String>> getHeaderFields() {
        return this.h.getHeaderFields();
    }

    public Map<String, List<String>> getRequestProperties() {
        return this.h.getRequestProperties();
    }

    public void addRequestProperty(String str, String str2) {
        this.h.addRequestProperty(str, str2);
    }

    public String getHeaderField(String str) {
        return this.h.getHeaderField(str);
    }

    public int getHeaderFieldInt(String str, int i) {
        return this.h.getHeaderFieldInt(str, i);
    }

    public String getHeaderFieldKey(int i) {
        return this.h.getHeaderFieldKey(i);
    }

    public long getIfModifiedSince() {
        return this.h.getIfModifiedSince();
    }

    public InputStream getInputStream() throws IOException {
        try {
            f();
            InputStream eVar = new e(this, this.h.getInputStream());
            g();
            c();
            return eVar;
        } catch (Exception e) {
            d();
            a(e);
            throw e;
        }
    }

    public long getLastModified() {
        return this.h.getLastModified();
    }

    public OutputStream getOutputStream() throws IOException {
        try {
            f();
            OutputStream fVar = new f(this, this.h.getOutputStream());
            g();
            c();
            return fVar;
        } catch (Exception e) {
            d();
            a(e);
            throw e;
        }
    }

    public String getRequestProperty(String str) {
        return this.h.getRequestProperty(str);
    }

    public URL getURL() {
        return this.h.getURL();
    }

    public boolean getUseCaches() {
        return this.h.getUseCaches();
    }

    public void setAllowUserInteraction(boolean z) {
        this.h.setAllowUserInteraction(z);
    }

    public void setDefaultUseCaches(boolean z) {
        this.h.setDefaultUseCaches(z);
    }

    public void setDoInput(boolean z) {
        this.h.setDoInput(z);
    }

    public void setDoOutput(boolean z) {
        this.h.setDoOutput(z);
    }

    public void setIfModifiedSince(long j) {
        this.h.setIfModifiedSince(j);
    }

    public void setRequestProperty(String str, String str2) {
        if ("x-mistats-header".equals(str)) {
            this.f = str2;
        }
        this.h.setRequestProperty(str, str2);
    }

    public void setUseCaches(boolean z) {
        this.h.setUseCaches(z);
    }

    public void setConnectTimeout(int i) {
        this.h.setConnectTimeout(i);
    }

    public int getConnectTimeout() {
        return this.h.getConnectTimeout();
    }

    public void setReadTimeout(int i) {
        this.h.setReadTimeout(i);
    }

    public int getReadTimeout() {
        return this.h.getReadTimeout();
    }

    public String toString() {
        return this.h.toString();
    }

    public d(HttpsURLConnection httpsURLConnection) {
        super(httpsURLConnection.getURL());
        this.h = httpsURLConnection;
        this.b = SystemClock.elapsedRealtime();
    }

    public void a(long j) {
        this.b = j;
    }

    public void disconnect() {
        this.h.disconnect();
        b();
    }

    public boolean usingProxy() {
        return this.h.usingProxy();
    }

    public void connect() throws IOException {
        try {
            this.h.connect();
        } catch (Exception e) {
            a(e);
            throw e;
        }
    }

    public String getCipherSuite() {
        return this.h.getCipherSuite();
    }

    public Certificate[] getLocalCertificates() {
        return this.h.getLocalCertificates();
    }

    public Certificate[] getServerCertificates() throws SSLPeerUnverifiedException {
        try {
            return this.h.getServerCertificates();
        } catch (Exception e) {
            a(e);
            throw e;
        }
    }

    public void a() {
        b();
    }

    public void b() {
        if (!this.e) {
            this.e = true;
            HttpEvent httpEvent = new HttpEvent(getURL().toString(), SystemClock.elapsedRealtime() - this.b, 0, e());
            httpEvent.setIp(this.g);
            httpEvent.setFirstPacketCost(this.d);
            httpEvent.setRequestId(this.f);
            i.a().a(httpEvent);
        }
    }

    void a(Exception exception) {
        if (!this.e) {
            this.e = true;
            HttpEvent httpEvent = new HttpEvent(getURL().toString(), -1, e(), exception.getClass().getSimpleName());
            httpEvent.setIp(this.g);
            httpEvent.setRequestId(this.f);
            i.a().a(httpEvent);
        }
    }

    private void c() {
        String host = this.url.getHost();
        if (this.g == null && host != null && !a(host)) {
            a.a().execute(new Runnable() {
                public void run() {
                    d.this.d();
                }
            });
        }
    }

    private synchronized void d() {
        if (TextUtils.isEmpty(this.g) && !this.e) {
            String host = this.url.getHost();
            if (!(this.g != null || host == null || a(host))) {
                try {
                    this.g = InetAddress.getByName(host).getHostAddress();
                } catch (Throwable e) {
                    j.a("can not get mIp exception:", e);
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

    private int e() {
        int i = -1;
        if (this.a != i) {
            return this.a;
        }
        try {
            return this.h.getResponseCode();
        } catch (Exception e) {
            return i;
        }
    }

    private synchronized void f() {
        if (this.c == 0) {
            this.c = SystemClock.elapsedRealtime();
            this.b = this.c;
        }
    }

    private synchronized void g() {
        if (this.d == 0 && this.c != 0) {
            this.d = SystemClock.elapsedRealtime() - this.c;
        }
    }
}
