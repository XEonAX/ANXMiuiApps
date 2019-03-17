package com.baidu.homework.network;

import java.math.BigInteger;
import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.X509Certificate;
import java.util.Date;
import java.util.Set;

final class b extends X509Certificate {
    private final X509Certificate a;

    public b(a aVar, X509Certificate x509Certificate) {
        this.a = x509Certificate;
    }

    public final void checkValidity() {
    }

    public final void checkValidity(Date date) {
    }

    public final int getBasicConstraints() {
        return this.a.getBasicConstraints();
    }

    public final Set<String> getCriticalExtensionOIDs() {
        return this.a.getCriticalExtensionOIDs();
    }

    public final byte[] getEncoded() {
        return this.a.getEncoded();
    }

    public final byte[] getExtensionValue(String str) {
        return this.a.getExtensionValue(str);
    }

    public final Principal getIssuerDN() {
        return this.a.getIssuerDN();
    }

    public final boolean[] getIssuerUniqueID() {
        return this.a.getIssuerUniqueID();
    }

    public final boolean[] getKeyUsage() {
        return this.a.getKeyUsage();
    }

    public final Set<String> getNonCriticalExtensionOIDs() {
        return this.a.getNonCriticalExtensionOIDs();
    }

    public final Date getNotAfter() {
        return this.a.getNotAfter();
    }

    public final Date getNotBefore() {
        return this.a.getNotBefore();
    }

    public final PublicKey getPublicKey() {
        return this.a.getPublicKey();
    }

    public final BigInteger getSerialNumber() {
        return this.a.getSerialNumber();
    }

    public final String getSigAlgName() {
        return this.a.getSigAlgName();
    }

    public final String getSigAlgOID() {
        return this.a.getSigAlgOID();
    }

    public final byte[] getSigAlgParams() {
        return this.a.getSigAlgParams();
    }

    public final byte[] getSignature() {
        return this.a.getSignature();
    }

    public final Principal getSubjectDN() {
        return this.a.getSubjectDN();
    }

    public final boolean[] getSubjectUniqueID() {
        return this.a.getSubjectUniqueID();
    }

    public final byte[] getTBSCertificate() {
        return this.a.getTBSCertificate();
    }

    public final int getVersion() {
        return this.a.getVersion();
    }

    public final boolean hasUnsupportedCriticalExtension() {
        return this.a.hasUnsupportedCriticalExtension();
    }

    public final String toString() {
        return this.a.toString();
    }

    public final void verify(PublicKey publicKey) {
        this.a.verify(publicKey);
    }

    public final void verify(PublicKey publicKey, String str) {
        this.a.verify(publicKey, str);
    }
}
