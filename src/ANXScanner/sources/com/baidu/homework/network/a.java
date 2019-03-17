package com.baidu.homework.network;

import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

public class a implements X509TrustManager {
    private static volatile SSLSocketFactory b;
    private final X509TrustManager a;

    private a(X509TrustManager x509TrustManager) {
        this.a = x509TrustManager;
    }

    public static SSLSocketFactory a() {
        if (b == null) {
            synchronized (a.class) {
                if (b == null) {
                    TrustManagerFactory instance = TrustManagerFactory.getInstance("X509");
                    instance.init(null);
                    TrustManager[] trustManagers = instance.getTrustManagers();
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 >= trustManagers.length) {
                            break;
                        }
                        if (trustManagers[i2] instanceof X509TrustManager) {
                            trustManagers[i2] = new a((X509TrustManager) trustManagers[i2]);
                        }
                        i = i2 + 1;
                    }
                    SSLContext instance2 = SSLContext.getInstance("TLS");
                    instance2.init(null, trustManagers, null);
                    b = instance2.getSocketFactory();
                }
            }
        }
        return b;
    }

    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        this.a.checkClientTrusted(x509CertificateArr, str);
    }

    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        X509Certificate[] x509CertificateArr2 = new X509Certificate[x509CertificateArr.length];
        for (int i = 0; i < x509CertificateArr2.length; i++) {
            x509CertificateArr2[i] = new b(this, x509CertificateArr[i]);
        }
        this.a.checkServerTrusted(x509CertificateArr2, str);
    }

    public X509Certificate[] getAcceptedIssuers() {
        return this.a.getAcceptedIssuers();
    }
}
