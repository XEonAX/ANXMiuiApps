package com.alibaba.baichuan.trade.common.utils;

import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.security.Key;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

public class AlibcCodeUtils {
    private static String a = "\\u";

    private static String a(char c) {
        if (c <= 255) {
            return Character.toString(c);
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(a);
        String toHexString = Integer.toHexString(c >> 8);
        if (toHexString.length() == 1) {
            stringBuilder.append("0");
        }
        stringBuilder.append(toHexString);
        toHexString = Integer.toHexString(c & 255);
        if (toHexString.length() == 1) {
            stringBuilder.append("0");
        }
        stringBuilder.append(toHexString);
        return stringBuilder.toString();
    }

    private static PublicKey a(byte[] bArr) {
        try {
            try {
                return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArr));
            } catch (Throwable e) {
                throw new RuntimeException(e);
            }
        } catch (Throwable e2) {
            throw new RuntimeException(e2);
        }
    }

    public static String getBase64(String str) {
        return Base64.encodeToString(str.getBytes(), 0);
    }

    public static String getFromBase64(String str) {
        return Base64.encodeToString(str.getBytes(), 0);
    }

    public static String md5Digest(byte[] bArr) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(bArr);
            StringBuilder stringBuilder = new StringBuilder(digest.length * 2);
            for (byte b : digest) {
                if ((b & 255) < 16) {
                    stringBuilder.append("0");
                }
                stringBuilder.append(Integer.toHexString(b & 255));
            }
            return stringBuilder.toString();
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    public static String native2Ascii(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            stringBuilder.append(a(str.charAt(i)));
        }
        return stringBuilder.toString();
    }

    public static byte[] rsaDecrypt(byte[] bArr, byte[] bArr2) {
        try {
            Key a = a(bArr2);
            Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            instance.init(2, a);
            int blockSize = instance.getBlockSize();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= bArr.length) {
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(instance.doFinal(bArr, i2, bArr.length - i2 < blockSize ? bArr.length - i2 : blockSize));
                i = i2 + blockSize;
            }
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    public static byte[] rsaEncrypt(byte[] bArr, byte[] bArr2) {
        try {
            Key a = a(bArr2);
            Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            instance.init(1, a);
            int blockSize = instance.getBlockSize();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= bArr.length) {
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(instance.doFinal(bArr, i2, bArr.length - i2 < blockSize ? bArr.length - i2 : blockSize));
                i = i2 + blockSize;
            }
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }
}
