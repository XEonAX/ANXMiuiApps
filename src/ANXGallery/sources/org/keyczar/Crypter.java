package org.keyczar;

import java.nio.ByteBuffer;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.exceptions.BadVersionException;
import org.keyczar.exceptions.InvalidSignatureException;
import org.keyczar.exceptions.KeyNotFoundException;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.exceptions.ShortCiphertextException;
import org.keyczar.interfaces.DecryptingStream;
import org.keyczar.interfaces.KeyczarReader;
import org.keyczar.interfaces.Stream;
import org.keyczar.interfaces.VerifyingStream;
import org.keyczar.util.Base64Coder;

public class Crypter extends Encrypter {
    private static final int DECRYPT_CHUNK_SIZE = 1024;
    private final StreamCache<DecryptingStream> CRYPT_CACHE = new StreamCache();

    public Crypter(KeyczarReader keyczarReader) throws KeyczarException {
        super(keyczarReader);
    }

    public Crypter(String str) throws KeyczarException {
        super(str);
    }

    public byte[] decrypt(byte[] bArr) throws KeyczarException {
        ByteBuffer allocate = ByteBuffer.allocate(bArr.length);
        decrypt(ByteBuffer.wrap(bArr), allocate);
        allocate.reset();
        byte[] bArr2 = new byte[allocate.remaining()];
        allocate.get(bArr2);
        return bArr2;
    }

    public void decrypt(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws KeyczarException {
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        if (asReadOnlyBuffer.remaining() < 5) {
            throw new ShortCiphertextException(asReadOnlyBuffer.remaining());
        }
        byte b = asReadOnlyBuffer.get();
        if (b != (byte) 0) {
            throw new BadVersionException(b);
        }
        byte[] bArr = new byte[4];
        asReadOnlyBuffer.get(bArr);
        KeyczarKey key = getKey(bArr);
        if (key == null) {
            throw new KeyNotFoundException(bArr);
        }
        asReadOnlyBuffer.mark();
        Stream stream = (DecryptingStream) this.CRYPT_CACHE.get(key);
        if (stream == null) {
            stream = (DecryptingStream) key.getStream();
        }
        VerifyingStream verifyingStream = stream.getVerifyingStream();
        if (asReadOnlyBuffer.remaining() < verifyingStream.digestSize()) {
            throw new ShortCiphertextException(asReadOnlyBuffer.remaining());
        }
        asReadOnlyBuffer.position(asReadOnlyBuffer.limit() - verifyingStream.digestSize());
        ByteBuffer slice = asReadOnlyBuffer.slice();
        asReadOnlyBuffer.reset();
        asReadOnlyBuffer.limit(asReadOnlyBuffer.limit() - verifyingStream.digestSize());
        stream.initDecrypt(asReadOnlyBuffer);
        ByteBuffer asReadOnlyBuffer2 = byteBuffer.asReadOnlyBuffer();
        asReadOnlyBuffer2.limit(asReadOnlyBuffer.position());
        verifyingStream.initVerify();
        verifyingStream.updateVerify(asReadOnlyBuffer2);
        byteBuffer2.mark();
        while (asReadOnlyBuffer.remaining() > 1024) {
            asReadOnlyBuffer2 = asReadOnlyBuffer.slice();
            asReadOnlyBuffer2.limit(1024);
            stream.updateDecrypt(asReadOnlyBuffer2, byteBuffer2);
            asReadOnlyBuffer2.rewind();
            verifyingStream.updateVerify(asReadOnlyBuffer2);
            asReadOnlyBuffer.position(asReadOnlyBuffer.position() + 1024);
        }
        asReadOnlyBuffer.mark();
        verifyingStream.updateVerify(asReadOnlyBuffer);
        if (verifyingStream.verify(slice)) {
            asReadOnlyBuffer.reset();
            stream.doFinalDecrypt(asReadOnlyBuffer, byteBuffer2);
            byteBuffer2.limit(byteBuffer2.position());
            this.CRYPT_CACHE.put(key, stream);
            return;
        }
        throw new InvalidSignatureException();
    }

    public String decrypt(String str) throws KeyczarException {
        return new String(decrypt(Base64Coder.decodeWebSafe(str)));
    }

    boolean isAcceptablePurpose(KeyPurpose keyPurpose) {
        return keyPurpose == KeyPurpose.DECRYPT_AND_ENCRYPT;
    }
}
