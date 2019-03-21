package com.miui.gallery.util.uil;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class CryptUtil {
    private static final byte[] sAesIv = new byte[]{(byte) 17, (byte) 19, (byte) 33, (byte) 35, (byte) 49, (byte) 51, (byte) 65, (byte) 67, (byte) 81, (byte) 83, (byte) 97, (byte) 102, (byte) 103, (byte) 104, (byte) 113, (byte) 114};
    private static final byte[] sRandomKey = new byte[16];

    private static Cipher getCipher(byte[] key, int opmode) {
        if (key == null || key.length != 16) {
            return null;
        }
        SecretKeySpec spec = new SecretKeySpec(key, "AES");
        IvParameterSpec ivSpec = new IvParameterSpec(sAesIv);
        Cipher cipher = null;
        try {
            cipher = Cipher.getInstance("AES/CTR/NoPadding");
            cipher.init(opmode, spec, ivSpec);
            return cipher;
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return cipher;
        } catch (NoSuchPaddingException e2) {
            e2.printStackTrace();
            return cipher;
        } catch (InvalidKeyException e3) {
            e3.printStackTrace();
            return cipher;
        } catch (InvalidAlgorithmParameterException e4) {
            e4.printStackTrace();
            return cipher;
        }
    }

    public static CipherInputStream getDecryptCipherInputStream(InputStream is, byte[] key) {
        return new CipherInputStream(is, getCipher(key, 2));
    }

    public static InputStream getDecryptCipherInputStream(String filePath, byte[] key) throws FileNotFoundException {
        InputStream is = new FileInputStream(filePath);
        if (key != null) {
            return new CipherInputStream(is, getCipher(key, 2));
        }
        return is;
    }
}
