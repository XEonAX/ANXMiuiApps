package com.xiaomi.stat.d;

import java.security.Key;
import java.security.KeyFactory;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

public class o {
    private static final String a = "RsaUtils";
    private static final String b = "RSA/ECB/PKCS1Padding";
    private static final String c = "BC";
    private static final String d = "RSA";

    public static byte[] a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = null;
        try {
            Key a = a(bArr);
            Cipher instance = Cipher.getInstance(b);
            instance.init(1, a);
            return instance.doFinal(bArr2);
        } catch (Throwable e) {
            k.e(a, "RsaUtils encrypt exception:", e);
            return bArr3;
        }
    }

    private static RSAPublicKey a(byte[] bArr) throws Exception {
        return (RSAPublicKey) KeyFactory.getInstance(d).generatePublic(new X509EncodedKeySpec(bArr));
    }
}
