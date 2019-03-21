package org.keyczar;

import java.nio.ByteBuffer;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.exceptions.NoPrimaryKeyException;
import org.keyczar.interfaces.EncryptingStream;
import org.keyczar.interfaces.KeyczarReader;
import org.keyczar.interfaces.SigningStream;
import org.keyczar.util.Base64Coder;

public class Encrypter extends Keyczar {
    private static final int ENCRYPT_CHUNK_SIZE = 1024;
    private final StreamQueue<EncryptingStream> ENCRYPT_QUEUE = new StreamQueue();

    public Encrypter(KeyczarReader keyczarReader) throws KeyczarException {
        super(keyczarReader);
    }

    public Encrypter(String str) throws KeyczarException {
        super(str);
    }

    public int ciphertextSize(int i) throws KeyczarException {
        EncryptingStream encryptingStream = (EncryptingStream) this.ENCRYPT_QUEUE.poll();
        if (encryptingStream == null) {
            KeyczarKey primaryKey = getPrimaryKey();
            if (primaryKey == null) {
                throw new NoPrimaryKeyException();
            }
            encryptingStream = (EncryptingStream) primaryKey.getStream();
        }
        int maxOutputSize = encryptingStream.maxOutputSize(i) + 5;
        int digestSize = encryptingStream.getSigningStream().digestSize() + maxOutputSize;
        this.ENCRYPT_QUEUE.add(encryptingStream);
        return digestSize;
    }

    public byte[] encrypt(byte[] bArr) throws KeyczarException {
        ByteBuffer allocate = ByteBuffer.allocate(ciphertextSize(bArr.length));
        encrypt(ByteBuffer.wrap(bArr), allocate);
        allocate.reset();
        byte[] bArr2 = new byte[allocate.remaining()];
        allocate.get(bArr2);
        return bArr2;
    }

    public void encrypt(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws KeyczarException {
        KeyczarKey primaryKey = getPrimaryKey();
        if (primaryKey == null) {
            throw new NoPrimaryKeyException();
        }
        EncryptingStream encryptingStream = (EncryptingStream) this.ENCRYPT_QUEUE.poll();
        if (encryptingStream == null) {
            encryptingStream = (EncryptingStream) primaryKey.getStream();
        }
        SigningStream signingStream = encryptingStream.getSigningStream();
        signingStream.initSign();
        byteBuffer2.mark();
        ByteBuffer asReadOnlyBuffer = byteBuffer2.asReadOnlyBuffer();
        primaryKey.copyHeader(byteBuffer2);
        encryptingStream.initEncrypt(byteBuffer2);
        ByteBuffer asReadOnlyBuffer2 = byteBuffer.asReadOnlyBuffer();
        while (asReadOnlyBuffer2.remaining() > 1024) {
            ByteBuffer slice = asReadOnlyBuffer2.slice();
            slice.limit(1024);
            encryptingStream.updateEncrypt(slice, byteBuffer2);
            asReadOnlyBuffer2.position(asReadOnlyBuffer2.position() + 1024);
            asReadOnlyBuffer.limit(byteBuffer2.position());
            signingStream.updateSign(asReadOnlyBuffer);
            asReadOnlyBuffer.position(byteBuffer2.position());
        }
        encryptingStream.doFinalEncrypt(asReadOnlyBuffer2, byteBuffer2);
        byteBuffer2.limit(byteBuffer2.position() + signingStream.digestSize());
        asReadOnlyBuffer.limit(byteBuffer2.position());
        signingStream.updateSign(asReadOnlyBuffer);
        signingStream.sign(byteBuffer2);
        this.ENCRYPT_QUEUE.add(encryptingStream);
    }

    public String encrypt(String str) throws KeyczarException {
        try {
            return Base64Coder.encodeWebSafe(encrypt(str.getBytes(Keyczar.DEFAULT_ENCODING)));
        } catch (Throwable e) {
            throw new KeyczarException(e);
        }
    }

    boolean isAcceptablePurpose(KeyPurpose keyPurpose) {
        return keyPurpose == KeyPurpose.ENCRYPT || keyPurpose == KeyPurpose.DECRYPT_AND_ENCRYPT;
    }
}
