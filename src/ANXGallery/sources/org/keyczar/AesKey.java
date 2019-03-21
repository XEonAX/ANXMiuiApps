package org.keyczar;

import com.google.gson_nex.annotations.Expose;
import java.nio.ByteBuffer;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.keyczar.enums.CipherMode;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.exceptions.ShortBufferException;
import org.keyczar.i18n.Messages;
import org.keyczar.interfaces.DecryptingStream;
import org.keyczar.interfaces.EncryptingStream;
import org.keyczar.interfaces.KeyType;
import org.keyczar.interfaces.SigningStream;
import org.keyczar.interfaces.Stream;
import org.keyczar.interfaces.VerifyingStream;
import org.keyczar.util.Base64Coder;
import org.keyczar.util.Util;

public class AesKey extends KeyczarKey {
    private static final String AES_ALGORITHM = "AES";
    private static final int BLOCK_SIZE = 16;
    private static final CipherMode DEFAULT_MODE = CipherMode.CBC;
    private SecretKey aesKey;
    @Expose
    private final String aesKeyString;
    private final byte[] hash;
    @Expose
    private final HmacKey hmacKey;
    @Expose
    private final CipherMode mode;

    private class AesStream implements DecryptingStream, EncryptingStream {
        private final Cipher decryptingCipher;
        private final Cipher encryptingCipher;
        boolean ivRead = false;
        private final SigningStream signStream;

        public AesStream() throws KeyczarException {
            AlgorithmParameterSpec ivParameterSpec = new IvParameterSpec(new byte[16]);
            try {
                this.encryptingCipher = Cipher.getInstance(AesKey.this.mode.getMode());
                this.encryptingCipher.init(1, AesKey.this.aesKey, ivParameterSpec);
                this.decryptingCipher = Cipher.getInstance(AesKey.this.mode.getMode());
                this.decryptingCipher.init(2, AesKey.this.aesKey, ivParameterSpec);
                this.signStream = (SigningStream) AesKey.this.hmacKey.getStream();
            } catch (Throwable e) {
                throw new KeyczarException(e);
            }
        }

        public SigningStream getSigningStream() {
            return this.signStream;
        }

        public VerifyingStream getVerifyingStream() {
            return (VerifyingStream) this.signStream;
        }

        public void initDecrypt(ByteBuffer byteBuffer) {
            byte[] bArr = new byte[16];
            byteBuffer.get(bArr);
            this.decryptingCipher.update(bArr);
            this.ivRead = true;
        }

        public int initEncrypt(ByteBuffer byteBuffer) throws KeyczarException {
            byte[] bArr = new byte[16];
            Util.rand(bArr);
            try {
                return this.encryptingCipher.update(ByteBuffer.wrap(bArr), byteBuffer);
            } catch (Throwable e) {
                throw new ShortBufferException(e);
            }
        }

        public int updateDecrypt(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws KeyczarException {
            if (this.ivRead && byteBuffer.remaining() >= 16) {
                byte[] bArr = new byte[16];
                byteBuffer.get(bArr);
                this.decryptingCipher.update(bArr);
                this.ivRead = false;
            }
            try {
                return this.decryptingCipher.update(byteBuffer, byteBuffer2);
            } catch (Throwable e) {
                throw new ShortBufferException(e);
            }
        }

        public int updateEncrypt(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws KeyczarException {
            try {
                return this.encryptingCipher.update(byteBuffer, byteBuffer2);
            } catch (Throwable e) {
                throw new ShortBufferException(e);
            }
        }

        public int doFinalDecrypt(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws KeyczarException {
            if (this.ivRead) {
                if (byteBuffer.remaining() == 0) {
                    return 0;
                }
                byte[] bArr = new byte[16];
                byteBuffer.get(bArr);
                this.decryptingCipher.update(bArr);
                this.ivRead = false;
            }
            try {
                if (byteBuffer.remaining() != 0) {
                    return this.decryptingCipher.doFinal(byteBuffer, byteBuffer2);
                }
                byte[] doFinal = this.decryptingCipher.doFinal();
                byteBuffer2.put(doFinal);
                return doFinal.length;
            } catch (Throwable e) {
                throw new KeyczarException(e);
            }
        }

        public int doFinalEncrypt(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws KeyczarException {
            try {
                return this.encryptingCipher.doFinal(byteBuffer, byteBuffer2);
            } catch (Throwable e) {
                throw new KeyczarException(e);
            }
        }

        public int maxOutputSize(int i) {
            return AesKey.this.mode.getOutputSize(16, i);
        }
    }

    public AesKey(byte[] bArr, HmacKey hmacKey) throws KeyczarException {
        super(bArr.length * 8);
        this.hash = new byte[4];
        this.aesKeyString = Base64Coder.encodeWebSafe(bArr);
        this.mode = DEFAULT_MODE;
        this.hmacKey = hmacKey;
        initJceKey(bArr);
    }

    private AesKey() {
        super(0);
        this.hash = new byte[4];
        this.aesKeyString = null;
        this.hmacKey = null;
        this.mode = null;
    }

    static AesKey generate() throws KeyczarException {
        return generate(DefaultKeyType.AES.defaultSize());
    }

    static AesKey generate(int i) throws KeyczarException {
        return new AesKey(Util.rand(i / 8), HmacKey.generate());
    }

    static AesKey fromPackedKey(byte[] bArr) throws KeyczarException {
        byte[][] lenPrefixUnpack = Util.lenPrefixUnpack(bArr);
        if (lenPrefixUnpack.length == 2) {
            return new AesKey(lenPrefixUnpack[0], new HmacKey(lenPrefixUnpack[1]));
        }
        throw new KeyczarException(Messages.getString("AesKey.InvalidPackedKey", new Object[0]));
    }

    public KeyType getType() {
        return DefaultKeyType.AES;
    }

    protected byte[] hash() {
        return this.hash;
    }

    static AesKey read(String str) throws KeyczarException {
        AesKey aesKey = (AesKey) Util.gson().fromJson(str, AesKey.class);
        aesKey.hmacKey.initFromJson();
        aesKey.initJceKey(Base64Coder.decodeWebSafe(aesKey.aesKeyString));
        return aesKey;
    }

    private void initJceKey(byte[] bArr) throws KeyczarException {
        this.aesKey = new SecretKeySpec(bArr, AES_ALGORITHM);
        System.arraycopy(Util.hash(Util.fromInt(16), bArr, this.hmacKey.getEncoded()), 0, this.hash, 0, this.hash.length);
    }

    byte[] getEncoded() {
        return Util.lenPrefixPack(this.aesKey.getEncoded(), this.hmacKey.getEncoded());
    }

    protected Stream getStream() throws KeyczarException {
        return new AesStream();
    }

    protected SecretKey getJceKey() {
        return this.aesKey;
    }
}
