package org.keyczar;

import org.keyczar.annotations.Experimental;
import org.keyczar.exceptions.Base64DecodingException;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.util.Base64Coder;

@Experimental
public class SignedSessionDecrypter {
    private final SessionMaterial session;
    private final Verifier verifier;

    public SignedSessionDecrypter(Crypter crypter, Verifier verifier, String str) throws Base64DecodingException, KeyczarException {
        this.verifier = verifier;
        this.session = SessionMaterial.read(new String(crypter.decrypt(Base64Coder.decodeWebSafe(str))));
    }

    public byte[] decrypt(byte[] bArr) throws KeyczarException {
        if (this.session != null) {
            return new Crypter(new ImportedKeyReader(this.session.getKey())).decrypt(this.verifier.getAttachedData(bArr, Base64Coder.decodeWebSafe(this.session.getNonce())));
        }
        throw new KeyczarException("Session has not been initialized");
    }
}
