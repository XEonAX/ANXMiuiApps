package com.miui.internal.hybrid;

import android.util.Base64;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;

public class SignUtils {
    public static final String CIPHER_RSA = "RSA/ECB/PKCS1Padding";
    public static final int FLAG_CRLF = 4;
    public static final int FLAG_DEFAULT = 0;
    public static final int FLAG_NO_CLOSE = 16;
    public static final int FLAG_NO_PADDING = 1;
    public static final int FLAG_NO_WRAP = 2;
    public static final int FLAG_URL_SAFE = 8;
    public static final String KEY_RSA = "RSA";
    public static final String SIGNATURE_MD5_WITH_RSA = "MD5withRSA";
    public static final String SIGNATURE_SHA1_WITH_RSA = "SHA1withRSA";

    private SignUtils() {
    }

    public static PublicKey getPublicKey(KeySpec keySpec) throws Exception {
        return KeyFactory.getInstance("RSA").generatePublic(keySpec);
    }

    public static PublicKey getPublicKey(String str, int i) throws Exception {
        return getPublicKey(new X509EncodedKeySpec(Base64.decode(str, i)));
    }

    public static PublicKey getPublicKey(String str) throws Exception {
        return getPublicKey(str, 0);
    }

    public static PrivateKey getPrivateKey(KeySpec keySpec) throws Exception {
        return KeyFactory.getInstance("RSA").generatePrivate(keySpec);
    }

    public static PrivateKey getPrivateKey(String str, int i) throws Exception {
        return getPrivateKey(new PKCS8EncodedKeySpec(Base64.decode(str, i)));
    }

    public static PrivateKey getPrivateKey(String str) throws Exception {
        return getPrivateKey(str, 0);
    }

    public static byte[] sign(byte[] bArr, PrivateKey privateKey, String str) throws Exception {
        Signature instance = Signature.getInstance(str);
        instance.initSign(privateKey);
        instance.update(bArr);
        return instance.sign();
    }

    public static byte[] sign(byte[] bArr, PrivateKey privateKey) throws Exception {
        return sign(bArr, privateKey, "SHA1withRSA");
    }

    public static String sign(String str, PrivateKey privateKey, String str2) throws Exception {
        return new String(Base64.encode(sign(str.getBytes(), privateKey, str2), 2));
    }

    public static String sign(String str, PrivateKey privateKey) throws Exception {
        return sign(str, privateKey, "SHA1withRSA");
    }

    public static boolean verify(byte[] bArr, PublicKey publicKey, byte[] bArr2, String str) throws Exception {
        Signature instance = Signature.getInstance(str);
        instance.initVerify(publicKey);
        instance.update(bArr);
        return instance.verify(bArr2);
    }

    public static boolean verify(byte[] bArr, PublicKey publicKey, byte[] bArr2) throws Exception {
        return verify(bArr, publicKey, bArr2, "SHA1withRSA");
    }

    public static boolean verify(String str, PublicKey publicKey, String str2, String str3) throws Exception {
        return verify(str.getBytes(), publicKey, Base64.decode(str2, 2), str3);
    }

    public static boolean verify(String str, PublicKey publicKey, String str2) throws Exception {
        return verify(str, publicKey, str2, "SHA1withRSA");
    }
}
