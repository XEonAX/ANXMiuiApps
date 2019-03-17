package com.alibaba.mtl.log.d;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* compiled from: MD5Utils */
public class j {
    public static char[] a = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String toHexString(byte[] b) {
        StringBuilder stringBuilder = new StringBuilder(b.length * 2);
        for (int i = 0; i < b.length; i++) {
            stringBuilder.append(a[(b[i] & 240) >>> 4]);
            stringBuilder.append(a[b[i] & 15]);
        }
        return stringBuilder.toString();
    }

    public static String a(byte[] bArr) {
        byte[] a = a(bArr);
        if (a != null) {
            return toHexString(a);
        }
        return "0000000000000000";
    }

    /* renamed from: a */
    public static byte[] m17a(byte[] bArr) {
        if (bArr != null) {
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                instance.update(bArr);
                return instance.digest();
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
