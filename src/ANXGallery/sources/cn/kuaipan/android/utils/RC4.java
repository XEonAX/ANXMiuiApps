package cn.kuaipan.android.utils;

import java.security.InvalidKeyException;

public class RC4 {
    private final int[] sBox = new int[256];
    private int x;
    private int y;

    public void makeKey(byte[] key) throws InvalidKeyException {
        byte[] userkey = key;
        if (userkey == null) {
            throw new InvalidKeyException("Null user key");
        }
        int len = userkey.length;
        if (len == 0) {
            throw new InvalidKeyException("Invalid user key length");
        }
        int i;
        this.x = 0;
        this.y = 0;
        for (i = 0; i < 256; i++) {
            this.sBox[i] = i;
        }
        int i1 = 0;
        int i2 = 0;
        for (i = 0; i < 256; i++) {
            i2 = (((userkey[i1] & 255) + this.sBox[i]) + i2) & 255;
            int t = this.sBox[i];
            this.sBox[i] = this.sBox[i2];
            this.sBox[i2] = t;
            i1 = (i1 + 1) % len;
        }
    }

    public void genRC4(byte[] in, int inOffset, int inLen, byte[] out, int outOffset) {
        int i = 0;
        int outOffset2 = outOffset;
        int inOffset2 = inOffset;
        while (i < inLen) {
            this.x = (this.x + 1) & 255;
            this.y = (this.sBox[this.x] + this.y) & 255;
            int t = this.sBox[this.x];
            this.sBox[this.x] = this.sBox[this.y];
            this.sBox[this.y] = t;
            outOffset = outOffset2 + 1;
            inOffset = inOffset2 + 1;
            out[outOffset2] = (byte) (in[inOffset2] ^ this.sBox[(this.sBox[this.x] + this.sBox[this.y]) & 255]);
            i++;
            outOffset2 = outOffset;
            inOffset2 = inOffset;
        }
    }

    public void skip(long size) {
        for (long i = 0; i < size; i++) {
            this.x = (this.x + 1) & 255;
            this.y = (this.sBox[this.x] + this.y) & 255;
            int t = this.sBox[this.x];
            this.sBox[this.x] = this.sBox[this.y];
            this.sBox[this.y] = t;
        }
    }
}
