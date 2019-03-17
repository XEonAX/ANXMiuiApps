package com.alipay.sdk.encrypt;

import java.security.Key;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class e {
    private static String a = "DESede/CBC/PKCS5Padding";

    public static byte[] a(String str, byte[] bArr) {
        byte[] bArr2 = null;
        try {
            Key secretKeySpec = new SecretKeySpec(str.getBytes(), "DESede");
            AlgorithmParameterSpec ivParameterSpec = new IvParameterSpec(new byte[8]);
            Cipher instance = Cipher.getInstance(a);
            instance.init(1, secretKeySpec, ivParameterSpec);
            return instance.doFinal(bArr);
        } catch (Exception e) {
            return bArr2;
        }
    }

    public static byte[] b(String str, byte[] bArr) {
        byte[] bArr2 = null;
        try {
            Key secretKeySpec = new SecretKeySpec(str.getBytes(), "DESede");
            AlgorithmParameterSpec ivParameterSpec = new IvParameterSpec(new byte[8]);
            Cipher instance = Cipher.getInstance(a);
            instance.init(2, secretKeySpec, ivParameterSpec);
            return instance.doFinal(bArr);
        } catch (Exception e) {
            return bArr2;
        }
    }

    public static String a(String str, String str2) {
        String str3 = null;
        try {
            return a.a(a(str, str2.getBytes()));
        } catch (Exception e) {
            return str3;
        }
    }

    public static String b(String str, String str2) {
        try {
            return new String(b(str, a.a(str2)));
        } catch (Exception e) {
            return null;
        }
    }
}
