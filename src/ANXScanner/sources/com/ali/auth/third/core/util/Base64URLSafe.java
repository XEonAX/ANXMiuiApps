package com.ali.auth.third.core.util;

import com.alibaba.fastjson.asm.Opcodes;
import com.alibaba.wireless.security.SecExceptionCode;

public class Base64URLSafe {
    private static final byte[] a = new byte[128];
    private static final char[] b = new char[64];

    static {
        int i;
        int i2 = 0;
        for (i = 0; i < 128; i++) {
            a[i] = (byte) -1;
        }
        for (i = 90; i >= 65; i--) {
            a[i] = (byte) (i - 65);
        }
        for (i = SecExceptionCode.SEC_ERROR_INIT_NO_DATA_FILE; i >= 97; i--) {
            a[i] = (byte) ((i - 97) + 26);
        }
        for (i = 57; i >= 48; i--) {
            a[i] = (byte) ((i - 48) + 52);
        }
        a[45] = (byte) 62;
        a[95] = (byte) 63;
        for (i = 0; i <= 25; i++) {
            b[i] = (char) (i + 65);
        }
        int i3 = 26;
        i = 0;
        while (i3 <= 51) {
            b[i3] = (char) (i + 97);
            i3++;
            i++;
        }
        i = 52;
        while (i <= 61) {
            b[i] = (char) (i2 + 48);
            i++;
            i2++;
        }
        b[62] = '-';
        b[63] = '_';
    }

    private static int a(char[] cArr) {
        int i = 0;
        if (cArr != null) {
            int length = cArr.length;
            int i2 = 0;
            while (i2 < length) {
                int i3;
                if (a(cArr[i2])) {
                    i3 = i;
                } else {
                    i3 = i + 1;
                    cArr[i] = cArr[i2];
                }
                i2++;
                i = i3;
            }
        }
        return i;
    }

    private static boolean a(char c) {
        return c == ' ' || c == 13 || c == 10 || c == 9;
    }

    private static boolean b(char c) {
        return c == '=';
    }

    private static boolean c(char c) {
        return c < 128 && a[c] != (byte) -1;
    }

    public static byte[] decode(String str) {
        if (str == null) {
            return null;
        }
        char[] toCharArray = str.toCharArray();
        int a = a(toCharArray);
        if (a % 4 != 0) {
            return null;
        }
        int i = a / 4;
        if (i == 0) {
            return new byte[0];
        }
        int i2;
        char c;
        int i3;
        int i4;
        Object obj = new byte[(i * 3)];
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i7 < i - 1) {
            i2 = i5 + 1;
            char c2 = toCharArray[i5];
            if (!c(c2)) {
                return null;
            }
            i5 = i2 + 1;
            c = toCharArray[i2];
            if (!c(c)) {
                return null;
            }
            i3 = i5 + 1;
            char c3 = toCharArray[i5];
            if (!c(c3)) {
                return null;
            }
            i5 = i3 + 1;
            char c4 = toCharArray[i3];
            if (!c(c4)) {
                return null;
            }
            byte b = a[c2];
            byte b2 = a[c];
            byte b3 = a[c3];
            byte b4 = a[c4];
            int i8 = i6 + 1;
            obj[i6] = (byte) ((b << 2) | (b2 >> 4));
            i4 = i8 + 1;
            obj[i8] = (byte) (((b2 & 15) << 4) | ((b3 >> 2) & 15));
            i6 = i4 + 1;
            obj[i4] = (byte) ((b3 << 6) | b4);
            i7++;
        }
        i = i5 + 1;
        char c5 = toCharArray[i5];
        if (!c(c5)) {
            return null;
        }
        i2 = i + 1;
        char c6 = toCharArray[i];
        if (!c(c6)) {
            return null;
        }
        byte b5 = a[c5];
        byte b6 = a[c6];
        i4 = i2 + 1;
        c = toCharArray[i2];
        i3 = i4 + 1;
        char c7 = toCharArray[i4];
        Object obj2;
        if (c(c) && c(c7)) {
            byte b7 = a[c];
            byte b8 = a[c7];
            i7 = i6 + 1;
            obj[i6] = (byte) ((b5 << 2) | (b6 >> 4));
            i5 = i7 + 1;
            obj[i7] = (byte) (((b6 & 15) << 4) | ((b7 >> 2) & 15));
            i6 = i5 + 1;
            obj[i5] = (byte) ((b7 << 6) | b8);
            return obj;
        } else if (b(c) && b(c7)) {
            if ((b6 & 15) != 0) {
                return null;
            }
            obj2 = new byte[((i7 * 3) + 1)];
            System.arraycopy(obj, 0, obj2, 0, i7 * 3);
            obj2[i6] = (byte) ((b5 << 2) | (b6 >> 4));
            return obj2;
        } else if (b(c) || !b(c7)) {
            return null;
        } else {
            byte b9 = a[c];
            if ((b9 & 3) != 0) {
                return null;
            }
            obj2 = new byte[((i7 * 3) + 2)];
            System.arraycopy(obj, 0, obj2, 0, i7 * 3);
            a = i6 + 1;
            obj2[i6] = (byte) ((b5 << 2) | (b6 >> 4));
            obj2[a] = (byte) (((b6 & 15) << 4) | ((b9 >> 2) & 15));
            return obj2;
        }
    }

    public static String encode(byte[] bArr) {
        int i = 0;
        if (bArr == null) {
            return null;
        }
        int length = bArr.length * 8;
        if (length == 0) {
            return "";
        }
        byte b;
        byte b2;
        byte b3;
        int i2 = length % 24;
        int i3 = length / 24;
        char[] cArr = new char[((i2 != 0 ? i3 + 1 : i3) * 4)];
        int i4 = 0;
        int i5 = 0;
        while (i4 < i3) {
            length = i + 1;
            b = bArr[i];
            int i6 = length + 1;
            byte b4 = bArr[length];
            int i7 = i6 + 1;
            byte b5 = bArr[i6];
            byte b6 = (byte) (b4 & 15);
            byte b7 = (byte) (b & 3);
            if ((b & -128) == 0) {
                i6 = (byte) (b >> 2);
            } else {
                b2 = (byte) ((b >> 2) ^ Opcodes.CHECKCAST);
            }
            if ((b4 & -128) == 0) {
                i = (byte) (b4 >> 4);
            } else {
                b = (byte) ((b4 >> 4) ^ 240);
            }
            b3 = (byte) ((b5 & -128) == 0 ? b5 >> 6 : (b5 >> 6) ^ 252);
            int i8 = i5 + 1;
            cArr[i5] = b[i6];
            i6 = i8 + 1;
            cArr[i8] = b[i | (b7 << 4)];
            i5 = i6 + 1;
            cArr[i6] = b[b3 | (b6 << 2)];
            i = i5 + 1;
            cArr[i5] = b[b5 & 63];
            i4++;
            i5 = i;
            i = i7;
        }
        byte b8;
        if (i2 == 8) {
            b3 = bArr[i];
            b8 = (byte) (b3 & 3);
            i = i5 + 1;
            cArr[i5] = b[(b3 & -128) == 0 ? (byte) (b3 >> 2) : (byte) ((b3 >> 2) ^ Opcodes.CHECKCAST)];
            length = i + 1;
            cArr[i] = b[b8 << 4];
            i3 = length + 1;
            cArr[length] = '=';
            length = i3 + 1;
            cArr[i3] = '=';
        } else if (i2 == 16) {
            b3 = bArr[i];
            b = bArr[i + 1];
            b2 = (byte) (b & 15);
            byte b9 = (byte) (b3 & 3);
            if ((b3 & -128) == 0) {
                i3 = (byte) (b3 >> 2);
            } else {
                b8 = (byte) ((b3 >> 2) ^ Opcodes.CHECKCAST);
            }
            length = (b & -128) == 0 ? (byte) (b >> 4) : (byte) ((b >> 4) ^ 240);
            i = i5 + 1;
            cArr[i5] = b[i3];
            i3 = i + 1;
            cArr[i] = b[length | (b9 << 4)];
            length = i3 + 1;
            cArr[i3] = b[b2 << 2];
            i3 = length + 1;
            cArr[length] = '=';
        }
        return new String(cArr);
    }
}
