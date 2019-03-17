package com.ali.auth.third.core.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

public class Rsa {
    public static final String SIGN_ALGORITHMS = "SHA1WithRSA";

    private static PublicKey a(String str, String str2) throws NoSuchAlgorithmException, Exception {
        return KeyFactory.getInstance(str).generatePublic(new X509EncodedKeySpec(Base64.decode(str2)));
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0057 A:{SYNTHETIC, Splitter: B:23:0x0057} */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0065 A:{SYNTHETIC, Splitter: B:31:0x0065} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String encrypt(String str, String str2) {
        Exception e;
        Throwable th;
        ByteArrayOutputStream byteArrayOutputStream;
        try {
            Key a = a("RSA", str2);
            Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            instance.init(1, a);
            byte[] bytes = str.getBytes("UTF-8");
            int blockSize = instance.getBlockSize();
            byteArrayOutputStream = new ByteArrayOutputStream();
            int i = 0;
            while (true) {
                try {
                    int i2 = i;
                    if (i2 >= bytes.length) {
                        break;
                    }
                    byteArrayOutputStream.write(instance.doFinal(bytes, i2, bytes.length - i2 < blockSize ? bytes.length - i2 : blockSize));
                    i = i2 + blockSize;
                } catch (Exception e2) {
                    e = e2;
                    try {
                        e.printStackTrace();
                        if (byteArrayOutputStream != null) {
                            return null;
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        if (byteArrayOutputStream != null) {
                        }
                        throw th;
                    }
                }
            }
            String str3 = new String(Base64.encode(byteArrayOutputStream.toByteArray()));
            if (byteArrayOutputStream == null) {
                return str3;
            }
            try {
                byteArrayOutputStream.close();
                return str3;
            } catch (IOException e4) {
                e4.printStackTrace();
                return str3;
            }
        } catch (Exception e5) {
            e = e5;
            byteArrayOutputStream = null;
            e.printStackTrace();
            if (byteArrayOutputStream != null) {
            }
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
            if (byteArrayOutputStream != null) {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e42) {
                    e42.printStackTrace();
                }
            }
            throw th;
        }
    }
}
