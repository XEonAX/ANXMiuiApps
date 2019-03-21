package org.keyczar;

import org.keyczar.exceptions.KeyczarException;

@Deprecated
public class SessionEncrypter {
    private final byte[] sessionMaterial;
    private final Crypter symmetricCrypter;

    public SessionEncrypter(Encrypter encrypter) throws KeyczarException {
        AesKey generate = AesKey.generate(((Integer) DefaultKeyType.AES.getAcceptableSizes().get(0)).intValue());
        this.symmetricCrypter = new Crypter(new ImportedKeyReader(generate));
        this.sessionMaterial = encrypter.encrypt(generate.getEncoded());
    }

    public byte[] encrypt(byte[] bArr) throws KeyczarException {
        return this.symmetricCrypter.encrypt(bArr);
    }

    public byte[] getSessionMaterial() {
        return this.sessionMaterial;
    }

    protected Crypter getSymmetricCrypter() {
        return this.symmetricCrypter;
    }
}
