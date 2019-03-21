package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.string.Base64Coder;

public class RC4Cryption {
    private static int keylength = 8;
    private byte[] S = new byte[256];
    private int next_j = -666;
    private int the_i = 0;
    private int the_j = 0;

    private void ksa(int n, byte[] key, boolean printstats) {
        int keylength = key.length;
        for (int i = 0; i < 256; i++) {
            this.S[i] = (byte) i;
        }
        this.the_j = 0;
        this.the_i = 0;
        while (this.the_i < n) {
            this.the_j = ((this.the_j + posify(this.S[this.the_i])) + posify(key[this.the_i % keylength])) % 256;
            sswap(this.S, this.the_i, this.the_j);
            this.the_i++;
        }
        if (n != 256) {
            this.next_j = ((this.the_j + posify(this.S[n])) + posify(key[n % keylength])) % 256;
        }
        if (printstats) {
            StringBuilder builder = new StringBuilder();
            builder.append("S_").append(n - 1).append(":");
            for (int k = 0; k <= n; k++) {
                builder.append(" ").append(posify(this.S[k]));
            }
            builder.append("   j_").append(n - 1).append("=").append(this.the_j);
            builder.append("   j_").append(n).append("=").append(this.next_j);
            builder.append("   S_").append(n - 1).append("[j_").append(n - 1).append("]=").append(posify(this.S[this.the_j]));
            builder.append("   S_").append(n - 1).append("[j_").append(n).append("]=").append(posify(this.S[this.next_j]));
            if (this.S[1] != (byte) 0) {
                builder.append("   S[1]!=0");
            }
            MyLog.w(builder.toString());
        }
    }

    private void ksa(byte[] key) {
        ksa(256, key, false);
    }

    private void init() {
        this.the_j = 0;
        this.the_i = 0;
    }

    byte nextVal() {
        this.the_i = (this.the_i + 1) % 256;
        this.the_j = (this.the_j + posify(this.S[this.the_i])) % 256;
        sswap(this.S, this.the_i, this.the_j);
        return this.S[(posify(this.S[this.the_i]) + posify(this.S[this.the_j])) % 256];
    }

    private static void sswap(byte[] S, int i, int j) {
        byte temp = S[i];
        S[i] = S[j];
        S[j] = temp;
    }

    public static int posify(byte b) {
        return b >= (byte) 0 ? b : b + 256;
    }

    public static byte[] encrypt(byte[] key, byte[] content) {
        byte[] outbuf = new byte[content.length];
        RC4Cryption r = new RC4Cryption();
        r.ksa(key);
        r.init();
        for (int i = 0; i < content.length; i++) {
            outbuf[i] = (byte) (content[i] ^ r.nextVal());
        }
        return outbuf;
    }

    public static byte[] encrypt(byte[] key, byte[] content, boolean inplace, int start, int len) {
        if (start < 0 || start > content.length || start + len > content.length) {
            throw new IllegalArgumentException("start = " + start + " len = " + len);
        }
        int dst = start;
        byte[] outbuf = content;
        if (!inplace) {
            outbuf = new byte[len];
            dst = 0;
        }
        RC4Cryption r = new RC4Cryption();
        r.ksa(key);
        r.init();
        for (int i = 0; i < len; i++) {
            outbuf[dst + i] = (byte) (content[start + i] ^ r.nextVal());
        }
        return outbuf;
    }

    public static byte[] decrypt(byte[] key, String content) {
        return encrypt(key, Base64Coder.decode(content));
    }

    public static byte[] generateKeyForRC4(String secretKey, String id) {
        int i;
        byte[] keyBytes = Base64Coder.decode(secretKey);
        byte[] idbytes = id.getBytes();
        byte[] result = new byte[((keyBytes.length + 1) + idbytes.length)];
        for (i = 0; i < keyBytes.length; i++) {
            result[i] = keyBytes[i];
        }
        result[keyBytes.length] = (byte) 95;
        for (i = 0; i < idbytes.length; i++) {
            result[(keyBytes.length + 1) + i] = idbytes[i];
        }
        return result;
    }
}
