package com.alibaba.mtl.log.d;

/* compiled from: IntUtils */
public class f {
    public static byte[] getBytes(int i) {
        byte[] bArr = new byte[4];
        bArr[3] = (byte) (i % 256);
        int i2 = i >> 8;
        bArr[2] = (byte) (i2 % 256);
        i2 >>= 8;
        bArr[1] = (byte) (i2 % 256);
        bArr[0] = (byte) ((i2 >> 8) % 256);
        return bArr;
    }
}
