package com.xiaomi.micloudsdk.utils;

import android.util.Base64;
import com.xiaomi.micloudsdk.exception.CipherException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.keyczar.Keyczar;

public class AESCoder implements CryptCoder {
    private SecretKeySpec keySpec;

    public AESCoder(byte[] aesKey) {
        if (aesKey == null) {
            throw new SecurityException("aes key is null");
        }
        if (aesKey.length != 16) {
            MiCloudLog.e("AESCoder", "aesKey is invalid");
        }
        this.keySpec = new SecretKeySpec(aesKey, "AES");
    }

    public AESCoder(String aesKey) {
        this(aesKey == null ? null : Base64.decode(aesKey, 2));
    }

    public String decrypt(String base64EncodeData) throws CipherException {
        if (base64EncodeData == null) {
            MiCloudLog.e("AESCoder", "decrypt failed for empty data");
            return null;
        }
        try {
            return new String(decrypt(Base64.decode(base64EncodeData, 2)), Keyczar.DEFAULT_ENCODING);
        } catch (Exception e) {
            throw new CipherException("fail to decrypt by aescoder", e);
        }
    }

    public byte[] decrypt(byte[] cipherData) throws CipherException {
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, this.keySpec, new IvParameterSpec(getInitalVector()));
            if (cipherData != null) {
                return cipher.doFinal(cipherData);
            }
            throw new IllegalBlockSizeException("no block data");
        } catch (Exception e) {
            throw new CipherException("fail to decrypt by aescoder", e);
        }
    }

    protected byte[] getInitalVector() {
        return "0102030405060708".getBytes();
    }

    public String encrypt(String data) throws CipherException {
        try {
            return Base64.encodeToString(encrypt(data.getBytes(Keyczar.DEFAULT_ENCODING)), 2);
        } catch (Exception e) {
            throw new CipherException("fail to encrypt by aescoder", e);
        }
    }

    public byte[] encrypt(byte[] rawData) throws CipherException {
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(1, this.keySpec, new IvParameterSpec(getInitalVector()));
            return cipher.doFinal(rawData);
        } catch (Exception e) {
            throw new CipherException("fail to encrypt by aescoder", e);
        }
    }
}
