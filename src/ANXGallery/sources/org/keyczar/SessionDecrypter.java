package org.keyczar;

import org.keyczar.exceptions.KeyczarException;

@Deprecated
public class SessionDecrypter {
    private final Crypter symmetricCrypter;

    public SessionDecrypter(Crypter crypter, byte[] bArr) throws KeyczarException {
        this.symmetricCrypter = new Crypter(new ImportedKeyReader(AesKey.fromPackedKey(crypter.decrypt(bArr))));
    }

    public byte[] decrypt(byte[] bArr) throws KeyczarException {
        return this.symmetricCrypter.decrypt(bArr);
    }
}
