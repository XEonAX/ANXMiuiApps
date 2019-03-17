package com.alibaba.mtl.log.d;

import android.annotation.TargetApi;
import android.net.SSLCertificateSocketFactory;
import android.os.Build.VERSION;
import com.alipay.sdk.cons.c;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyStore;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

@TargetApi(14)
/* compiled from: UtSslSocketFactory */
public class u extends SSLSocketFactory {
    private String af;
    private Method b = null;

    /* compiled from: UtSslSocketFactory */
    public static class a implements X509TrustManager {
        TrustManager a;

        public a(TrustManager trustManager) {
            this.a = trustManager;
        }

        public void checkClientTrusted(X509Certificate[] arg0, String arg1) throws CertificateException {
        }

        public void checkServerTrusted(X509Certificate[] arg0, String arg1) throws CertificateException {
            try {
                ((X509TrustManager) this.a).checkServerTrusted(arg0, arg1);
            } catch (Throwable e) {
                Throwable th = e;
                while (th.getCause() != null) {
                    th = th.getCause();
                    if (!(th instanceof CertificateExpiredException)) {
                        if (th instanceof CertificateNotYetValidException) {
                        }
                    }
                    i.a("", th);
                    return;
                }
                throw e;
            }
        }

        public X509Certificate[] getAcceptedIssuers() {
            return null;
        }
    }

    public u(String str) {
        this.af = str;
    }

    public Socket createSocket() throws IOException {
        return null;
    }

    public Socket createSocket(String host, int port) throws IOException {
        return null;
    }

    public Socket createSocket(String host, int port, InetAddress localHost, int localPort) throws IOException {
        return null;
    }

    public Socket createSocket(InetAddress host, int port) throws IOException {
        return null;
    }

    public Socket createSocket(InetAddress address, int port, InetAddress localAddress, int localPort) throws IOException {
        return null;
    }

    public String[] getDefaultCipherSuites() {
        return new String[0];
    }

    public String[] getSupportedCipherSuites() {
        return new String[0];
    }

    @TargetApi(17)
    public Socket createSocket(Socket plainSocket, String host, int port, boolean autoClose) throws IOException {
        if (this.af == null) {
            this.af = host;
        }
        i.a("", c.f, this.af, "port", Integer.valueOf(port), "autoClose", Boolean.valueOf(autoClose));
        InetAddress inetAddress = plainSocket.getInetAddress();
        if (autoClose) {
            plainSocket.close();
        }
        SSLCertificateSocketFactory sSLCertificateSocketFactory = (SSLCertificateSocketFactory) SSLCertificateSocketFactory.getDefault(0);
        try {
            TrustManagerFactory.getInstance("X509").init((KeyStore) null);
            sSLCertificateSocketFactory.setTrustManagers(new TrustManager[]{new a(r3.getTrustManagers()[0])});
        } catch (Exception e) {
            i.a("", e);
        }
        SSLSocket sSLSocket = (SSLSocket) sSLCertificateSocketFactory.createSocket(inetAddress, port);
        sSLSocket.setEnabledProtocols(sSLSocket.getSupportedProtocols());
        if (VERSION.SDK_INT >= 17) {
            sSLCertificateSocketFactory.setHostname(sSLSocket, this.af);
        } else {
            try {
                if (this.b == null) {
                    this.b = sSLSocket.getClass().getMethod("setHostname", new Class[]{String.class});
                    this.b.setAccessible(true);
                }
                this.b.invoke(sSLSocket, new Object[]{this.af});
            } catch (Exception e2) {
                i.a("", "SNI not useable", null, e2);
            }
        }
        SSLSession session = sSLSocket.getSession();
        i.a("", "SSLSession PeerHost", session.getPeerHost());
        return sSLSocket;
    }
}
