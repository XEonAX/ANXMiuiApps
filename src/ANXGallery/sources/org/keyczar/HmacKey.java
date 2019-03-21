package org.keyczar;

import com.google.gson_nex.annotations.Expose;
import java.nio.ByteBuffer;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.KeyType;
import org.keyczar.interfaces.SigningStream;
import org.keyczar.interfaces.Stream;
import org.keyczar.interfaces.VerifyingStream;
import org.keyczar.util.Base64Coder;
import org.keyczar.util.Util;

public class HmacKey extends KeyczarKey {
    private static final String MAC_ALGORITHM = "HMACSHA1";
    private final byte[] hash;
    private SecretKey hmacKey;
    @Expose
    private final String hmacKeyString;

    private class HmacStream implements SigningStream, VerifyingStream {
        private final Mac hmac;

        public HmacStream() throws KeyczarException {
            try {
                this.hmac = Mac.getInstance(HmacKey.MAC_ALGORITHM);
            } catch (Throwable e) {
                throw new KeyczarException(e);
            }
        }

        public int digestSize() {
            return HmacKey.this.getType().getOutputSize();
        }

        public void initSign() throws KeyczarException {
            try {
                this.hmac.init(HmacKey.this.hmacKey);
            } catch (Throwable e) {
                throw new KeyczarException(e);
            }
        }

        public void initVerify() throws KeyczarException {
            initSign();
        }

        public void sign(ByteBuffer byteBuffer) {
            byteBuffer.put(this.hmac.doFinal());
        }

        public void updateSign(ByteBuffer byteBuffer) {
            this.hmac.update(byteBuffer);
        }

        public void updateVerify(ByteBuffer byteBuffer) {
            updateSign(byteBuffer);
        }

        public boolean verify(ByteBuffer byteBuffer) {
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            return Util.safeArrayEquals(this.hmac.doFinal(), bArr);
        }
    }

    public HmacKey(byte[] bArr) throws KeyczarException {
        super(bArr.length * 8);
        this.hash = new byte[4];
        this.hmacKeyString = Base64Coder.encodeWebSafe(bArr);
        initJceKey(bArr);
    }

    private HmacKey() {
        super(0);
        this.hash = new byte[4];
        this.hmacKeyString = null;
    }

    static HmacKey generate() throws KeyczarException {
        return generate(DefaultKeyType.HMAC_SHA1.defaultSize());
    }

    static HmacKey generate(int i) throws KeyczarException {
        return new HmacKey(Util.rand(i / 8));
    }

    void initFromJson() throws KeyczarException {
        initJceKey(Base64Coder.decodeWebSafe(this.hmacKeyString));
    }

    private void initJceKey(byte[] bArr) throws KeyczarException {
        this.hmacKey = new SecretKeySpec(bArr, MAC_ALGORITHM);
        System.arraycopy(Util.hash(bArr), 0, this.hash, 0, this.hash.length);
    }

    byte[] getEncoded() {
        return this.hmacKey.getEncoded();
    }

    protected Stream getStream() throws KeyczarException {
        return new HmacStream();
    }

    public KeyType getType() {
        return DefaultKeyType.HMAC_SHA1;
    }

    protected byte[] hash() {
        return this.hash;
    }

    static HmacKey read(String str) throws KeyczarException {
        HmacKey hmacKey = (HmacKey) Util.gson().fromJson(str, HmacKey.class);
        hmacKey.initFromJson();
        return hmacKey;
    }

    protected SecretKey getJceKey() {
        return this.hmacKey;
    }
}
