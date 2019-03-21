package org.keyczar;

import java.io.InputStream;
import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.interfaces.DSAPublicKey;
import java.security.interfaces.RSAPublicKey;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.enums.KeyStatus;
import org.keyczar.enums.RsaPadding;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.i18n.Messages;
import org.keyczar.interfaces.KeyczarReader;

public class X509CertificateReader implements KeyczarReader {
    private final InputStream certificateStream;
    private KeyczarPublicKey key;
    private KeyMetadata meta = null;
    private final RsaPadding padding;
    private final KeyPurpose purpose;

    public X509CertificateReader(KeyPurpose keyPurpose, InputStream inputStream, RsaPadding rsaPadding) throws KeyczarException {
        if (keyPurpose == null) {
            throw new KeyczarException("X509Certificate purpose must not be null");
        } else if (inputStream == null) {
            throw new KeyczarException("X509Certificate stream must not be null");
        } else {
            this.purpose = keyPurpose;
            this.certificateStream = inputStream;
            this.padding = rsaPadding;
        }
    }

    public String getKey(int i) throws KeyczarException {
        ensureCertificateRead();
        return this.key.toString();
    }

    public String getKey() throws KeyczarException {
        ensureCertificateRead();
        return this.key.toString();
    }

    public String getMetadata() throws KeyczarException {
        ensureCertificateRead();
        return this.meta.toString();
    }

    private void ensureCertificateRead() throws KeyczarException {
        if (this.key == null) {
            try {
                parseCertificate();
                constructMetadata();
            } catch (Throwable e) {
                throw new KeyczarException(Messages.getString("KeyczarTool.InvalidCertificate", new Object[0]), e);
            }
        }
    }

    private void constructMetadata() throws KeyczarException {
        if (this.purpose == KeyPurpose.ENCRYPT && this.key.getType() == DefaultKeyType.DSA_PUB) {
            throw new KeyczarException(Messages.getString("Keyczartool.InvalidUseOfDsaKey", new Object[0]));
        }
        this.meta = new KeyMetadata("imported from certificate", this.purpose, this.key.getType());
        this.meta.addVersion(new KeyVersion(1, KeyStatus.PRIMARY, true));
    }

    private void parseCertificate() throws CertificateException, KeyczarException {
        PublicKey publicKey = CertificateFactory.getInstance("X.509").generateCertificate(this.certificateStream).getPublicKey();
        if (publicKey instanceof RSAPublicKey) {
            this.key = new RsaPublicKey((RSAPublicKey) publicKey, this.padding);
        } else if (!(publicKey instanceof DSAPublicKey)) {
            throw new KeyczarException("Unrecognized key type " + publicKey.getAlgorithm() + " in certificate");
        } else if (this.padding != null) {
            throw new KeyczarException(Messages.getString("InvalidPadding", this.padding.name()));
        } else {
            this.key = new DsaPublicKey((DSAPublicKey) publicKey);
        }
    }
}
