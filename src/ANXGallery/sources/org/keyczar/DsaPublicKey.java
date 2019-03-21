package org.keyczar;

import com.google.gson_nex.annotations.Expose;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.Signature;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAPublicKeySpec;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.KeyType;
import org.keyczar.interfaces.Stream;
import org.keyczar.interfaces.VerifyingStream;
import org.keyczar.util.Base64Coder;
import org.keyczar.util.Util;

public class DsaPublicKey extends KeyczarPublicKey {
    private static final String KEY_GEN_ALGORITHM = "DSA";
    private static final String SIG_ALGORITHM = "SHA1withDSA";
    @Expose
    final String g;
    private final byte[] hash;
    private DSAPublicKey jcePublicKey;
    @Expose
    final String p;
    @Expose
    final String q;
    @Expose
    final String y;

    private class DsaVerifyingStream implements VerifyingStream {
        private Signature signature;

        public DsaVerifyingStream() throws KeyczarException {
            try {
                this.signature = Signature.getInstance(DsaPublicKey.SIG_ALGORITHM);
            } catch (Throwable e) {
                throw new KeyczarException(e);
            }
        }

        public int digestSize() {
            return DsaPublicKey.this.getType().getOutputSize();
        }

        public void initVerify() throws KeyczarException {
            try {
                this.signature.initVerify(DsaPublicKey.this.jcePublicKey);
            } catch (Throwable e) {
                throw new KeyczarException(e);
            }
        }

        public void updateVerify(ByteBuffer byteBuffer) throws KeyczarException {
            try {
                this.signature.update(byteBuffer);
            } catch (Throwable e) {
                throw new KeyczarException(e);
            }
        }

        public boolean verify(ByteBuffer byteBuffer) throws KeyczarException {
            try {
                return this.signature.verify(byteBuffer.array(), byteBuffer.position(), byteBuffer.limit() - byteBuffer.position());
            } catch (Throwable e) {
                throw new KeyczarException(e);
            }
        }
    }

    static DsaPublicKey read(String str) throws KeyczarException {
        DsaPublicKey dsaPublicKey = (DsaPublicKey) Util.gson().fromJson(str, DsaPublicKey.class);
        dsaPublicKey.initFromJson();
        return dsaPublicKey;
    }

    DsaPublicKey(DSAPublicKey dSAPublicKey) throws KeyczarException {
        this(dSAPublicKey.getY(), dSAPublicKey.getParams());
    }

    DsaPublicKey(DSAPrivateKey dSAPrivateKey) throws KeyczarException {
        this(computeY(dSAPrivateKey), dSAPrivateKey.getParams());
    }

    private DsaPublicKey() {
        super(0);
        this.hash = new byte[4];
        this.jcePublicKey = null;
        this.g = null;
        this.q = null;
        this.p = null;
        this.y = null;
    }

    private DsaPublicKey(BigInteger bigInteger, DSAParams dSAParams) throws KeyczarException {
        super(bigInteger.bitLength());
        this.hash = new byte[4];
        BigInteger p = dSAParams.getP();
        BigInteger q = dSAParams.getQ();
        BigInteger g = dSAParams.getG();
        this.y = Base64Coder.encodeWebSafe(bigInteger.toByteArray());
        this.p = Base64Coder.encodeWebSafe(p.toByteArray());
        this.q = Base64Coder.encodeWebSafe(q.toByteArray());
        this.g = Base64Coder.encodeWebSafe(g.toByteArray());
        initializeJceKey(bigInteger, p, q, g);
        initializeHash();
    }

    private static BigInteger computeY(DSAPrivateKey dSAPrivateKey) {
        return dSAPrivateKey.getParams().getG().modPow(dSAPrivateKey.getX(), dSAPrivateKey.getParams().getP());
    }

    protected Stream getStream() throws KeyczarException {
        return new DsaVerifyingStream();
    }

    public KeyType getType() {
        return DefaultKeyType.DSA_PUB;
    }

    public byte[] hash() {
        return this.hash;
    }

    void initFromJson() throws KeyczarException {
        initializeJceKey(new BigInteger(Base64Coder.decodeWebSafe(this.y)), new BigInteger(Base64Coder.decodeWebSafe(this.p)), new BigInteger(Base64Coder.decodeWebSafe(this.q)), new BigInteger(Base64Coder.decodeWebSafe(this.g)));
        initializeHash();
    }

    private void initializeJceKey(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) throws KeyczarException {
        try {
            this.jcePublicKey = (DSAPublicKey) KeyFactory.getInstance(KEY_GEN_ALGORITHM).generatePublic(new DSAPublicKeySpec(bigInteger, bigInteger2, bigInteger3, bigInteger4));
        } catch (Throwable e) {
            throw new KeyczarException(e);
        }
    }

    private void initializeHash() throws KeyczarException {
        DSAParams params = this.jcePublicKey.getParams();
        System.arraycopy(Util.prefixHash(Util.stripLeadingZeros(params.getP().toByteArray()), Util.stripLeadingZeros(params.getQ().toByteArray()), Util.stripLeadingZeros(params.getG().toByteArray()), Util.stripLeadingZeros(this.jcePublicKey.getY().toByteArray())), 0, this.hash, 0, this.hash.length);
    }

    protected PublicKey getJceKey() {
        return this.jcePublicKey;
    }

    protected boolean isSecret() {
        return false;
    }
}
