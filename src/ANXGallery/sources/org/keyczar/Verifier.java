package org.keyczar;

import java.nio.ByteBuffer;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.exceptions.BadVersionException;
import org.keyczar.exceptions.KeyNotFoundException;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.exceptions.ShortSignatureException;
import org.keyczar.interfaces.KeyczarReader;
import org.keyczar.interfaces.Stream;
import org.keyczar.interfaces.VerifyingStream;
import org.keyczar.util.Base64Coder;
import org.keyczar.util.Util;

public class Verifier extends Keyczar {
    private final StreamCache<VerifyingStream> VERIFY_CACHE = new StreamCache();

    public Verifier(KeyczarReader keyczarReader) throws KeyczarException {
        super(keyczarReader);
    }

    public Verifier(String str) throws KeyczarException {
        super(str);
    }

    public boolean verify(byte[] bArr, byte[] bArr2) throws KeyczarException {
        return verify(ByteBuffer.wrap(bArr), ByteBuffer.wrap(bArr2));
    }

    public boolean verify(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws KeyczarException {
        return verify(byteBuffer, null, byteBuffer2);
    }

    boolean verify(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3) throws KeyczarException {
        if (byteBuffer3.remaining() < 5) {
            throw new ShortSignatureException(byteBuffer3.remaining());
        }
        byte[] checkFormatAndGetHash = checkFormatAndGetHash(byteBuffer3);
        KeyczarKey verifyingKey = getVerifyingKey(checkFormatAndGetHash);
        if (verifyingKey == null) {
            throw new KeyNotFoundException(checkFormatAndGetHash);
        }
        Stream stream = (VerifyingStream) this.VERIFY_CACHE.get(verifyingKey);
        if (stream == null) {
            stream = (VerifyingStream) verifyingKey.getStream();
        }
        stream.initVerify();
        if (byteBuffer2 != null) {
            stream.updateVerify(byteBuffer2);
        }
        stream.updateVerify(byteBuffer);
        stream.updateVerify(ByteBuffer.wrap(FORMAT_BYTES));
        boolean verify = stream.verify(byteBuffer3);
        this.VERIFY_CACHE.put(verifyingKey, stream);
        return verify;
    }

    public boolean verify(String str, String str2) throws KeyczarException {
        try {
            return verify(str.getBytes(Keyczar.DEFAULT_ENCODING), Base64Coder.decodeWebSafe(str2));
        } catch (Throwable e) {
            throw new KeyczarException(e);
        }
    }

    boolean rawVerify(KeyczarKey keyczarKey, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3) throws KeyczarException {
        Stream stream = (VerifyingStream) this.VERIFY_CACHE.get(keyczarKey);
        if (stream == null) {
            stream = (VerifyingStream) keyczarKey.getStream();
        }
        stream.initVerify();
        stream.updateVerify(byteBuffer);
        if (byteBuffer2 != null) {
            stream.updateVerify(byteBuffer2);
        }
        stream.updateVerify(ByteBuffer.wrap(FORMAT_BYTES));
        boolean verify = stream.verify(byteBuffer3);
        this.VERIFY_CACHE.put(keyczarKey, stream);
        return verify;
    }

    public boolean attachedVerify(byte[] bArr, byte[] bArr2) throws KeyczarException {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        KeyczarKey verifyingKey = getVerifyingKey(checkFormatAndGetHash(wrap));
        byte[] bArr3 = new byte[wrap.getInt()];
        wrap.get(bArr3);
        byte[] bArr4 = new byte[wrap.remaining()];
        wrap.get(bArr4);
        byte[] fromInt = Util.fromInt(0);
        if (bArr2.length > 0) {
            fromInt = Util.lenPrefix(bArr2);
        }
        return rawVerify(verifyingKey, ByteBuffer.wrap(bArr3), ByteBuffer.wrap(fromInt), ByteBuffer.wrap(bArr4));
    }

    public byte[] getAttachedData(byte[] bArr, byte[] bArr2) throws KeyczarException {
        if (attachedVerify(bArr, bArr2)) {
            return getAttachedDataWithoutVerifying(bArr);
        }
        throw new KeyczarException("Attached signature failed to verify. Unable to return signed data.");
    }

    public byte[] getAttachedDataWithoutVerifying(byte[] bArr) throws KeyczarException {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        getVerifyingKey(checkFormatAndGetHash(wrap));
        byte[] bArr2 = new byte[wrap.getInt()];
        wrap.get(bArr2);
        return bArr2;
    }

    private byte[] checkFormatAndGetHash(ByteBuffer byteBuffer) throws BadVersionException {
        byte b = byteBuffer.get();
        if (b != (byte) 0) {
            throw new BadVersionException(b);
        }
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        return bArr;
    }

    private KeyczarKey getVerifyingKey(byte[] bArr) throws KeyNotFoundException {
        KeyczarKey key = getKey(bArr);
        if (key != null) {
            return key;
        }
        throw new KeyNotFoundException(bArr);
    }

    boolean isAcceptablePurpose(KeyPurpose keyPurpose) {
        return keyPurpose == KeyPurpose.VERIFY || keyPurpose == KeyPurpose.SIGN_AND_VERIFY;
    }
}
