package com.xiaomi.stat.d;

import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class a {
    private static final String a = "AES";
    private static final String b = "AES/CBC/PKCS5Padding";
    private static final String c = "AES";
    private static final String d = "BC";
    private static String e = "cfbsdfgsdfxccvd1";
    private static KeyGenerator f;
    private static Cipher g;

    static {
        try {
            f = KeyGenerator.getInstance("AES");
            f.init(128);
            g = Cipher.getInstance(b);
        } catch (Throwable e) {
            k.b("AES", "AesUtils e", e);
        }
    }

    public static byte[] a() {
        return f.generateKey().getEncoded();
    }

    public static byte[] a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = null;
        Key secretKeySpec = new SecretKeySpec(bArr2, "AES");
        try {
            g.init(1, secretKeySpec, new IvParameterSpec(e.getBytes()));
            return g.doFinal(bArr);
        } catch (Throwable e) {
            k.b("AES", "encrypt exception:", e);
            return bArr3;
        }
    }

    public static byte[] a(byte[] bArr, String str) {
        byte[] bArr2 = null;
        try {
            g.init(1, new SecretKeySpec(a(str), "AES"), new IvParameterSpec(e.getBytes()));
            return g.doFinal(bArr);
        } catch (Throwable e) {
            k.b("AES", "encrypt exception:", e);
            return bArr2;
        }
    }

    public static String a(String str, byte[] bArr) {
        try {
            g.init(2, new SecretKeySpec(bArr, "AES"), new IvParameterSpec(e.getBytes()));
            return new String(g.doFinal(a(str)));
        } catch (Throwable e) {
            k.b("AES", "decrypt exception:", e);
            return null;
        }
    }

    public static byte[] a(String str) {
        if (str == null || str.length() < 1) {
            return null;
        }
        byte[] bArr = new byte[(str.length() / 2)];
        for (int i = 0; i < str.length() / 2; i++) {
            bArr[i] = (byte) ((Integer.parseInt(str.substring(i * 2, (i * 2) + 1), 16) * 16) + Integer.parseInt(str.substring((i * 2) + 1, (i * 2) + 2), 16));
        }
        return bArr;
    }
}
