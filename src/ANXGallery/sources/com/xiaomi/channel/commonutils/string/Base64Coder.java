package com.xiaomi.channel.commonutils.string;

public class Base64Coder {
    private static char[] map1 = new char[64];
    private static byte[] map2 = new byte[128];
    private static final String systemLineSeparator = System.getProperty("line.separator");

    static {
        int i;
        int i2 = 0;
        char c = 'A';
        while (true) {
            i = i2;
            if (c > 'Z') {
                break;
            }
            i2 = i + 1;
            map1[i] = c;
            c = (char) (c + 1);
        }
        c = 'a';
        while (c <= 'z') {
            i2 = i + 1;
            map1[i] = c;
            c = (char) (c + 1);
            i = i2;
        }
        c = '0';
        while (c <= '9') {
            i2 = i + 1;
            map1[i] = c;
            c = (char) (c + 1);
            i = i2;
        }
        i2 = i + 1;
        map1[i] = '+';
        i = i2 + 1;
        map1[i2] = '/';
        for (i2 = 0; i2 < map2.length; i2++) {
            map2[i2] = (byte) -1;
        }
        for (i2 = 0; i2 < 64; i2++) {
            map2[map1[i2]] = (byte) i2;
        }
    }

    public static char[] encode(byte[] in) {
        return encode(in, 0, in.length);
    }

    public static char[] encode(byte[] in, int iOff, int iLen) {
        int oDataLen = ((iLen * 4) + 2) / 3;
        char[] out = new char[(((iLen + 2) / 3) * 4)];
        int iEnd = iOff + iLen;
        int op = 0;
        int ip = iOff;
        while (ip < iEnd) {
            int i1;
            int i2;
            int ip2 = ip + 1;
            int i0 = in[ip] & 255;
            if (ip2 < iEnd) {
                ip = ip2 + 1;
                i1 = in[ip2] & 255;
            } else {
                i1 = 0;
                ip = ip2;
            }
            if (ip < iEnd) {
                ip2 = ip + 1;
                i2 = in[ip] & 255;
            } else {
                i2 = 0;
                ip2 = ip;
            }
            int o1 = ((i0 & 3) << 4) | (i1 >>> 4);
            int o2 = ((i1 & 15) << 2) | (i2 >>> 6);
            int o3 = i2 & 63;
            int i = op + 1;
            out[op] = map1[i0 >>> 2];
            op = i + 1;
            out[i] = map1[o1];
            out[op] = op < oDataLen ? map1[o2] : '=';
            i = op + 1;
            out[i] = i < oDataLen ? map1[o3] : '=';
            op = i + 1;
            ip = ip2;
        }
        return out;
    }

    public static byte[] decode(String s) {
        return decode(s.toCharArray());
    }

    public static byte[] decode(char[] in) {
        return decode(in, 0, in.length);
    }

    public static byte[] decode(char[] in, int iOff, int iLen) {
        if (iLen % 4 != 0) {
            throw new IllegalArgumentException("Length of Base64 encoded input string is not a multiple of 4.");
        }
        while (iLen > 0 && in[(iOff + iLen) - 1] == '=') {
            iLen--;
        }
        int oLen = (iLen * 3) / 4;
        byte[] out = new byte[oLen];
        int iEnd = iOff + iLen;
        int op = 0;
        int ip;
        for (int ip2 = iOff; ip2 < iEnd; ip2 = ip) {
            int i2;
            int i3;
            ip = ip2 + 1;
            int i0 = in[ip2];
            ip2 = ip + 1;
            int i1 = in[ip];
            if (ip2 < iEnd) {
                ip = ip2 + 1;
                i2 = in[ip2];
                ip2 = ip;
            } else {
                i2 = 65;
            }
            if (ip2 < iEnd) {
                ip = ip2 + 1;
                i3 = in[ip2];
            } else {
                i3 = 65;
                ip = ip2;
            }
            if (i0 > 127 || i1 > 127 || i2 > 127 || i3 > 127) {
                throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
            }
            int b0 = map2[i0];
            int b1 = map2[i1];
            int b2 = map2[i2];
            int b3 = map2[i3];
            if (b0 < 0 || b1 < 0 || b2 < 0 || b3 < 0) {
                throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
            }
            int o1 = ((b1 & 15) << 4) | (b2 >>> 2);
            int o2 = ((b2 & 3) << 6) | b3;
            int op2 = op + 1;
            out[op] = (byte) ((b0 << 2) | (b1 >>> 4));
            if (op2 < oLen) {
                op = op2 + 1;
                out[op2] = (byte) o1;
            } else {
                op = op2;
            }
            if (op < oLen) {
                op2 = op + 1;
                out[op] = (byte) o2;
            } else {
                op2 = op;
            }
            op = op2;
        }
        return out;
    }
}
