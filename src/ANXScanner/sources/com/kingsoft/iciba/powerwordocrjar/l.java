package com.kingsoft.iciba.powerwordocrjar;

import java.io.UnsupportedEncodingException;

public class l {
    static final byte[] a = new byte[]{(byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102};

    public static String a(byte[] bArr) {
        int i = 0;
        byte[] bArr2 = new byte[(bArr.length * 2)];
        int length = bArr.length;
        int i2 = 0;
        while (i < length) {
            int i3 = bArr[i] & 255;
            int i4 = i2 + 1;
            bArr2[i2] = a[i3 >>> 4];
            i2 = i4 + 1;
            bArr2[i4] = a[i3 & 15];
            i++;
        }
        String str = "";
        try {
            return new String(bArr2, "ASCII");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return str;
        } catch (Exception e2) {
            e2.printStackTrace();
            return str;
        }
    }
}
