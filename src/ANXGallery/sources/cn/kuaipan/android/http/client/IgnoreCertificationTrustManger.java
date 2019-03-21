package cn.kuaipan.android.http.client;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

public class IgnoreCertificationTrustManger implements X509TrustManager {
    private X509Certificate[] certificates;

    public void checkClientTrusted(X509Certificate[] certificates, String authType) throws CertificateException {
        if (this.certificates == null) {
            this.certificates = certificates;
        }
    }

    public void checkServerTrusted(X509Certificate[] ax509certificate, String s) throws CertificateException {
        if (this.certificates == null) {
            this.certificates = ax509certificate;
        }
    }

    public X509Certificate[] getAcceptedIssuers() {
        return null;
    }
}
