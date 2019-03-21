package org.keyczar;

import java.nio.ByteBuffer;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.exceptions.NoPrimaryKeyException;
import org.keyczar.exceptions.ShortBufferException;
import org.keyczar.interfaces.KeyczarReader;
import org.keyczar.interfaces.SigningStream;
import org.keyczar.util.Base64Coder;

public class UnversionedSigner extends UnversionedVerifier {
    static final int TIMESTAMP_SIZE = 8;
    private final StreamQueue<SigningStream> SIGN_QUEUE = new StreamQueue();

    public UnversionedSigner(KeyczarReader keyczarReader) throws KeyczarException {
        super(keyczarReader);
    }

    public UnversionedSigner(String str) throws KeyczarException {
        super(str);
    }

    public int digestSize() throws KeyczarException {
        KeyczarKey primaryKey = getPrimaryKey();
        if (primaryKey != null) {
            return ((SigningStream) primaryKey.getStream()).digestSize();
        }
        throw new NoPrimaryKeyException();
    }

    public byte[] sign(byte[] bArr) throws KeyczarException {
        ByteBuffer allocate = ByteBuffer.allocate(digestSize());
        sign(ByteBuffer.wrap(bArr), allocate);
        allocate.reset();
        byte[] bArr2 = new byte[allocate.remaining()];
        allocate.get(bArr2);
        return bArr2;
    }

    void sign(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws KeyczarException {
        KeyczarKey primaryKey = getPrimaryKey();
        if (primaryKey == null) {
            throw new NoPrimaryKeyException();
        }
        SigningStream signingStream = (SigningStream) this.SIGN_QUEUE.poll();
        if (signingStream == null) {
            signingStream = (SigningStream) primaryKey.getStream();
        }
        int digestSize = digestSize();
        if (byteBuffer2.capacity() < digestSize) {
            throw new ShortBufferException(byteBuffer2.capacity(), digestSize);
        }
        signingStream.initSign();
        byteBuffer2.mark();
        signingStream.updateSign(byteBuffer);
        signingStream.sign(byteBuffer2);
        byteBuffer2.limit(byteBuffer2.position());
        this.SIGN_QUEUE.add(signingStream);
    }

    public String sign(String str) throws KeyczarException {
        try {
            return Base64Coder.encodeWebSafe(sign(str.getBytes(Keyczar.DEFAULT_ENCODING)));
        } catch (Throwable e) {
            throw new KeyczarException(e);
        }
    }

    boolean isAcceptablePurpose(KeyPurpose keyPurpose) {
        return keyPurpose == KeyPurpose.SIGN_AND_VERIFY;
    }
}
