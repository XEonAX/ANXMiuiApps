package org.keyczar;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.interfaces.DSAPrivateKey;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.EncryptedPrivateKeyInfo;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.enums.KeyStatus;
import org.keyczar.enums.RsaPadding;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.i18n.Messages;
import org.keyczar.interfaces.KeyczarReader;
import org.keyczar.util.Base64Coder;
import org.keyczar.util.Util;

public class PkcsKeyReader implements KeyczarReader {
    private static final Pattern PEM_FOOTER_PATTERN = Pattern.compile("-----END ([A-Z ]+)-----");
    private static final Pattern PEM_HEADER_PATTERN = Pattern.compile("-----BEGIN ([A-Z ]+)-----");
    private KeyczarKey key;
    private KeyMetadata meta;
    private final String passphrase;
    private final InputStream pkcs8Stream;
    private final KeyPurpose purpose;
    private final RsaPadding rsaPadding;

    public PkcsKeyReader(KeyPurpose keyPurpose, InputStream inputStream, RsaPadding rsaPadding, String str) throws KeyczarException {
        if (keyPurpose == null) {
            throw new KeyczarException("Key purpose must not be null");
        } else if (inputStream == null) {
            throw new KeyczarException("PKCS8 stream must not be null");
        } else {
            this.purpose = keyPurpose;
            this.pkcs8Stream = inputStream;
            this.rsaPadding = rsaPadding;
            this.passphrase = str;
        }
    }

    public String getKey(int i) throws KeyczarException {
        ensureKeyRead();
        return this.key.toString();
    }

    public String getKey() throws KeyczarException {
        ensureKeyRead();
        return this.key.toString();
    }

    public String getMetadata() throws KeyczarException {
        ensureKeyRead();
        return this.meta.toString();
    }

    private void ensureKeyRead() throws KeyczarException {
        try {
            if (this.key == null) {
                this.key = parseKeyStream(this.pkcs8Stream, this.passphrase, this.rsaPadding);
                this.meta = constructMetadata(this.key, this.purpose);
            }
        } catch (Throwable e) {
            throw new KeyczarException("Error Reading key", e);
        }
    }

    private static KeyMetadata constructMetadata(KeyczarKey keyczarKey, KeyPurpose keyPurpose) throws KeyczarException {
        validatePurpose(keyczarKey, keyPurpose);
        KeyMetadata keyMetadata = new KeyMetadata("imported from PKCS8 file", keyPurpose, keyczarKey.getType());
        keyMetadata.addVersion(new KeyVersion(1, KeyStatus.PRIMARY, true));
        return keyMetadata;
    }

    private static void validatePurpose(KeyczarKey keyczarKey, KeyPurpose keyPurpose) throws KeyczarException {
        if (keyPurpose == KeyPurpose.ENCRYPT && keyczarKey.getType() == DefaultKeyType.DSA_PUB) {
            throw new KeyczarException(Messages.getString("Keyczartool.InvalidUseOfDsaKey", new Object[0]));
        }
    }

    private static KeyczarKey parseKeyStream(InputStream inputStream, String str, RsaPadding rsaPadding) throws IOException, KeyczarException {
        PKCS8EncodedKeySpec pKCS8EncodedKeySpec = new PKCS8EncodedKeySpec(decryptPbeEncryptedKey(convertPemToDer(Util.readStreamFully(inputStream)), str));
        try {
            return new RsaPrivateKey((RSAPrivateCrtKey) extractPrivateKey(pKCS8EncodedKeySpec, "RSA"), rsaPadding);
        } catch (InvalidKeySpecException e) {
            KeyczarKey dsaPrivateKey = new DsaPrivateKey((DSAPrivateKey) extractPrivateKey(pKCS8EncodedKeySpec, "DSA"));
            if (rsaPadding == null) {
                return dsaPrivateKey;
            }
            throw new KeyczarException(Messages.getString("InvalidPadding", rsaPadding.name()));
        } catch (InvalidKeySpecException e2) {
            throw new KeyczarException(Messages.getString("KeyczarTool.InvalidPkcs8Stream", new Object[0]));
        }
    }

    private static PrivateKey extractPrivateKey(PKCS8EncodedKeySpec pKCS8EncodedKeySpec, String str) throws KeyczarException, InvalidKeySpecException {
        try {
            return KeyFactory.getInstance(str).generatePrivate(pKCS8EncodedKeySpec);
        } catch (Throwable e) {
            throw new KeyczarException(e);
        }
    }

    private static byte[] decryptPbeEncryptedKey(byte[] bArr, String str) throws KeyczarException {
        if (str == null || str.length() == 0) {
            return bArr;
        }
        try {
            EncryptedPrivateKeyInfo encryptedPrivateKeyInfo = new EncryptedPrivateKeyInfo(bArr);
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) encryptedPrivateKeyInfo.getAlgParameters().getParameterSpec(PBEParameterSpec.class);
            String algName = encryptedPrivateKeyInfo.getAlgName();
            Cipher instance = Cipher.getInstance(algName);
            instance.init(2, computeDecryptionKey(str, algName), pBEParameterSpec);
            return instance.doFinal(encryptedPrivateKeyInfo.getEncryptedData());
        } catch (NullPointerException e) {
            throw new KeyczarException(Messages.getString("KeyczarTool.UnknownKeyEncryption", new Object[0]));
        } catch (GeneralSecurityException e2) {
            throw new KeyczarException(Messages.getString("KeyczarTool.UnknownKeyEncryption", new Object[0]));
        } catch (IOException e3) {
            throw new KeyczarException(Messages.getString("KeyczarTool.UnknownKeyEncryption", new Object[0]));
        }
    }

    private static SecretKey computeDecryptionKey(String str, String str2) throws NoSuchAlgorithmException, InvalidKeySpecException {
        return SecretKeyFactory.getInstance(str2).generateSecret(new PBEKeySpec(str.toCharArray()));
    }

    private static byte[] convertPemToDer(byte[] bArr) throws IOException, KeyczarException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr)));
        Matcher matcher = PEM_HEADER_PATTERN.matcher(bufferedReader.readLine());
        return !matcher.matches() ? bArr : decodeBase64(bufferedReader, matcher.group(1));
    }

    private static byte[] decodeBase64(BufferedReader bufferedReader, String str) throws IOException, KeyczarException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            Object readLine = bufferedReader.readLine();
            if (readLine == null) {
                break;
            }
            Matcher matcher = PEM_FOOTER_PATTERN.matcher(readLine);
            if (!matcher.matches()) {
                byteArrayOutputStream.write(Base64Coder.decodeMime(readLine));
            } else if (matcher.group(1).equals(str)) {
                return byteArrayOutputStream.toByteArray();
            }
        }
        throw new KeyczarException(Messages.getString("KeyczarTool.InvalidPemFile", new Object[0]));
    }
}
