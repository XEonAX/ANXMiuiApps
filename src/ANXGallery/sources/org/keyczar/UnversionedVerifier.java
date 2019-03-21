package org.keyczar;

import java.nio.ByteBuffer;
import java.util.Map.Entry;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.KeyczarReader;
import org.keyczar.interfaces.Stream;
import org.keyczar.interfaces.VerifyingStream;
import org.keyczar.util.Base64Coder;

public class UnversionedVerifier extends Keyczar {
    private static final StreamCache<VerifyingStream> VERIFY_CACHE = new StreamCache();

    public UnversionedVerifier(KeyczarReader keyczarReader) throws KeyczarException {
        super(keyczarReader);
    }

    public UnversionedVerifier(String str) throws KeyczarException {
        super(str);
    }

    public boolean verify(byte[] bArr, byte[] bArr2) throws KeyczarException {
        return verify(ByteBuffer.wrap(bArr), ByteBuffer.wrap(bArr2));
    }

    public boolean verify(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws KeyczarException {
        for (Entry value : this.versionMap.entrySet()) {
            KeyczarKey keyczarKey = (KeyczarKey) value.getValue();
            ByteBuffer duplicate = byteBuffer.duplicate();
            ByteBuffer duplicate2 = byteBuffer2.duplicate();
            Stream stream = (VerifyingStream) VERIFY_CACHE.get(keyczarKey);
            if (stream == null) {
                stream = (VerifyingStream) keyczarKey.getStream();
            }
            stream.initVerify();
            stream.updateVerify(duplicate);
            boolean verify = stream.verify(duplicate2);
            VERIFY_CACHE.put(keyczarKey, stream);
            if (verify) {
                return true;
            }
        }
        return false;
    }

    public boolean verify(String str, String str2) throws KeyczarException {
        try {
            return verify(str.getBytes(Keyczar.DEFAULT_ENCODING), Base64Coder.decodeWebSafe(str2));
        } catch (Throwable e) {
            throw new KeyczarException(e);
        }
    }

    boolean isAcceptablePurpose(KeyPurpose keyPurpose) {
        return keyPurpose == KeyPurpose.VERIFY || keyPurpose == KeyPurpose.SIGN_AND_VERIFY;
    }
}
