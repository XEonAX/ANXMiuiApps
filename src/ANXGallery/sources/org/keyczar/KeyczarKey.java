package org.keyczar;

import com.google.gson_nex.annotations.Expose;
import java.nio.ByteBuffer;
import java.security.Key;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.EncryptedPrivateKeyInfo;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.keyczar.enums.RsaPadding;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.i18n.Messages;
import org.keyczar.interfaces.KeyType;
import org.keyczar.interfaces.KeyType.KeyTypeDeserializer;
import org.keyczar.interfaces.Stream;
import org.keyczar.util.Base64Coder;
import org.keyczar.util.Util;

public abstract class KeyczarKey {
    private static final int IV_SIZE = 16;
    private static final String PBE_CIPHER = "PBEWithSHA1AndDESede";
    private static final int PBE_ITERATION_COUNT = 1000;
    private static final int PBE_SALT_SIZE = 8;
    private static final String PEM_FOOTER_BEGIN = "-----END ";
    private static final String PEM_HEADER_BEGIN = "-----BEGIN ";
    private static final String PEM_LINE_ENDING = "-----\n";
    @Expose
    final int size;

    protected abstract Key getJceKey();

    protected abstract Stream getStream() throws KeyczarException;

    public abstract KeyType getType();

    protected abstract byte[] hash();

    protected KeyczarKey(int i) {
        this.size = i;
    }

    void copyHeader(ByteBuffer byteBuffer) {
        byteBuffer.put((byte) 0);
        byteBuffer.put(hash());
    }

    public boolean equals(Object obj) {
        try {
            return Arrays.equals(((KeyczarKey) obj).hash(), hash());
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        return Util.toInt(hash());
    }

    int size() {
        return this.size;
    }

    static KeyczarKey genKey(KeyType keyType) throws KeyczarException {
        return genKey(keyType, keyType.defaultSize());
    }

    public static void registerType(KeyType keyType) {
        KeyTypeDeserializer.registerType(keyType);
    }

    public String toString() {
        return Util.gson().toJson((Object) this);
    }

    static KeyczarKey genKey(KeyType keyType, int i) throws KeyczarException {
        RsaPadding rsaPadding = null;
        if (keyType == DefaultKeyType.RSA_PRIV) {
            rsaPadding = RsaPadding.OAEP;
        }
        return genKey(keyType, rsaPadding, i);
    }

    static KeyczarKey genKey(KeyType keyType, RsaPadding rsaPadding, int i) throws KeyczarException {
        if (!keyType.isAcceptableSize(i)) {
            i = keyType.defaultSize();
        }
        if (rsaPadding == null || keyType == DefaultKeyType.RSA_PRIV) {
            return (keyType == DefaultKeyType.RSA_PRIV ? DefaultKeyType.RSA_PRIV.getRsaBuilder(rsaPadding) : keyType.getBuilder()).generate(i);
        }
        throw new KeyczarException(Messages.getString("InvalidPadding", rsaPadding.name()));
    }

    static KeyczarKey readKey(KeyType keyType, String str) throws KeyczarException {
        return keyType.getBuilder().read(str);
    }

    public String getPemString(String str) throws KeyczarException {
        if (isSecret()) {
            if (str != null && str.length() >= 8) {
                return convertDerToPem(encryptPrivateKey(getJceKey(), str));
            }
            throw new KeyczarException(Messages.getString("KeyczarTool.PassphraseRequired", new Object[0]));
        } else if (str == null || "".equals(str)) {
            return convertDerToPem(getJceKey().getEncoded());
        } else {
            throw new KeyczarException(Messages.getString("KeyczarTool.PassphraseNotAllowed", new Object[0]));
        }
    }

    private static byte[] encryptPrivateKey(Key key, String str) throws KeyczarException {
        try {
            Key generateSecret = SecretKeyFactory.getInstance(PBE_CIPHER).generateSecret(new PBEKeySpec(str.toCharArray()));
            byte[] bArr = new byte[8];
            Util.rand(bArr);
            Util.rand(new byte[16]);
            Cipher instance = Cipher.getInstance(PBE_CIPHER);
            instance.init(1, generateSecret, new PBEParameterSpec(bArr, PBE_ITERATION_COUNT));
            return new EncryptedPrivateKeyInfo(instance.getParameters(), instance.doFinal(key.getEncoded())).getEncoded();
        } catch (Throwable e) {
            throw new KeyczarException(Messages.getString("KeyczarTool.FailedToEncryptPrivateKey", new Object[0]), e);
        } catch (Throwable e2) {
            throw new KeyczarException(Messages.getString("KeyczarTool.FailedToEncryptPrivateKey", new Object[0]), e2);
        }
    }

    private String convertDerToPem(byte[] bArr) {
        String encodeMime = Base64Coder.encodeMime(bArr, true);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(PEM_HEADER_BEGIN);
        stringBuffer.append(getPemType());
        stringBuffer.append(PEM_LINE_ENDING);
        for (String encodeMime2 : Util.split(encodeMime2, 64)) {
            stringBuffer.append(encodeMime2);
            stringBuffer.append(10);
        }
        stringBuffer.append(PEM_FOOTER_BEGIN);
        stringBuffer.append(getPemType());
        stringBuffer.append(PEM_LINE_ENDING);
        return stringBuffer.toString();
    }

    protected boolean isSecret() {
        return true;
    }

    private String getPemType() {
        if (isSecret()) {
            return "ENCRYPTED PRIVATE KEY";
        }
        return getJceKey().getAlgorithm() + " PUBLIC KEY";
    }
}
