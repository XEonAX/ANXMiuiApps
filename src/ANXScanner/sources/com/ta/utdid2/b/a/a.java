package com.ta.utdid2.b.a;

import com.xiaomi.scanner.module.amazoncloudconfig.CloudConfigHelper;
import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: AESUtils */
public class a {
    public static byte[] a = new byte[]{(byte) 48, (byte) 48, (byte) 49, (byte) 55, (byte) 68, (byte) 67, (byte) 49, (byte) 66, (byte) 69, (byte) 50, (byte) 50, (byte) 53, (byte) 56, (byte) 53, (byte) 53, (byte) 52, (byte) 67, (byte) 70, (byte) 48, (byte) 50, (byte) 67, (byte) 53, (byte) 55, (byte) 66, (byte) 55, (byte) 56, (byte) 69, (byte) 55, (byte) 52, (byte) 48, (byte) 65, (byte) 53};

    public static String d(String str, String str2) {
        byte[] a;
        try {
            a = a(a(str.getBytes()), str2.getBytes());
        } catch (Exception e) {
            a = null;
        }
        if (a != null) {
            return a(a);
        }
        return null;
    }

    public static String e(String str, String str2) {
        try {
            return new String(b(a(str.getBytes()), a(str2)));
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    private static byte[] m23a(byte[] bArr) throws Exception {
        return a(new String(a, 0, 32));
    }

    private static byte[] a(byte[] bArr, byte[] bArr2) throws Exception {
        Key secretKeySpec = new SecretKeySpec(bArr, CloudConfigHelper.AES);
        Cipher instance = Cipher.getInstance(CloudConfigHelper.CIPHER);
        instance.init(1, secretKeySpec, new IvParameterSpec(new byte[instance.getBlockSize()]));
        return instance.doFinal(bArr2);
    }

    private static byte[] b(byte[] bArr, byte[] bArr2) throws Exception {
        Key secretKeySpec = new SecretKeySpec(bArr, CloudConfigHelper.AES);
        Cipher instance = Cipher.getInstance(CloudConfigHelper.CIPHER);
        instance.init(2, secretKeySpec, new IvParameterSpec(new byte[instance.getBlockSize()]));
        return instance.doFinal(bArr2);
    }

    public static byte[] a(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = Integer.valueOf(str.substring(i * 2, (i * 2) + 2), 16).byteValue();
        }
        return bArr;
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte a : bArr) {
            a(stringBuffer, a);
        }
        return stringBuffer.toString();
    }

    private static void a(StringBuffer stringBuffer, byte b) {
        String str = "0123456789ABCDEF";
        stringBuffer.append("0123456789ABCDEF".charAt((b >> 4) & 15)).append("0123456789ABCDEF".charAt(b & 15));
    }
}
