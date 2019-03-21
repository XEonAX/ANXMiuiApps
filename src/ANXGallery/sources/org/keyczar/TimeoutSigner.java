package org.keyczar;

import java.nio.ByteBuffer;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.KeyczarReader;
import org.keyczar.util.Base64Coder;

public class TimeoutSigner extends TimeoutVerifier {
    private Signer signer;

    public TimeoutSigner(KeyczarReader keyczarReader) throws KeyczarException {
        this.signer = new Signer(keyczarReader);
        setVerifier(this.signer);
    }

    public TimeoutSigner(String str) throws KeyczarException {
        this.signer = new Signer(str);
        setVerifier(this.signer);
    }

    public TimeoutSigner(Signer signer) {
        this.signer = signer;
        setVerifier(this.signer);
    }

    public String timeoutSign(String str, long j) throws KeyczarException {
        try {
            return Base64Coder.encodeWebSafe(timeoutSign(str.getBytes(Keyczar.DEFAULT_ENCODING), j));
        } catch (Throwable e) {
            throw new KeyczarException(e);
        }
    }

    public byte[] timeoutSign(byte[] bArr, long j) throws KeyczarException {
        ByteBuffer allocate = ByteBuffer.allocate(this.signer.digestSize() + 8);
        timeoutSign(ByteBuffer.wrap(bArr), j, allocate);
        allocate.reset();
        byte[] bArr2 = new byte[allocate.remaining()];
        allocate.get(bArr2);
        return bArr2;
    }

    public void timeoutSign(ByteBuffer byteBuffer, long j, ByteBuffer byteBuffer2) throws KeyczarException {
        this.signer.sign(byteBuffer, null, j, byteBuffer2);
    }
}
