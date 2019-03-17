package com.alipay.sdk.encrypt;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

public final class d {
    private static final String a = "RSA";

    private static PublicKey b(String str, String str2) throws NoSuchAlgorithmException, Exception {
        return KeyFactory.getInstance(str).generatePublic(new X509EncodedKeySpec(a.a(str2)));
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0051 A:{SYNTHETIC, Splitter: B:19:0x0051} */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x005d A:{SYNTHETIC, Splitter: B:25:0x005d} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] a(String str, String str2) {
        Throwable th;
        byte[] bArr = null;
        ByteArrayOutputStream byteArrayOutputStream;
        try {
            String str3 = a;
            Key generatePublic = KeyFactory.getInstance(str3).generatePublic(new X509EncodedKeySpec(a.a(str2)));
            Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            instance.init(1, generatePublic);
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
                    if (bytes.length - i2 < blockSize) {
                        i = bytes.length - i2;
                    } else {
                        i = blockSize;
                    }
                    byteArrayOutputStream.write(instance.doFinal(bytes, i2, i));
                    i = i2 + blockSize;
                } catch (Exception e) {
                    if (byteArrayOutputStream != null) {
                    }
                    return bArr;
                } catch (Throwable th2) {
                    th = th2;
                    if (byteArrayOutputStream != null) {
                    }
                    throw th;
                }
            }
            bArr = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (IOException e2) {
            }
        } catch (Exception e3) {
            byteArrayOutputStream = null;
            if (byteArrayOutputStream != null) {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e4) {
                }
            }
            return bArr;
        } catch (Throwable th3) {
            Throwable th4 = th3;
            byteArrayOutputStream = null;
            th = th4;
            if (byteArrayOutputStream != null) {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e5) {
                }
            }
            throw th;
        }
        return bArr;
    }
}
