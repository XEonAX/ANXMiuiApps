package com.alipay.sdk.encrypt;

import com.alibaba.fastjson.asm.Opcodes;
import com.alibaba.wireless.security.SecExceptionCode;

public final class a {
    private static final int a = 128;
    private static final int b = 64;
    private static final int c = 24;
    private static final int d = 8;
    private static final int e = 16;
    private static final int f = 4;
    private static final int g = -128;
    private static final char h = '=';
    private static final byte[] i = new byte[128];
    private static final char[] j = new char[64];

    static {
        int i;
        int i2 = 0;
        for (i = 0; i < 128; i++) {
            i[i] = (byte) -1;
        }
        for (i = 90; i >= 65; i--) {
            i[i] = (byte) (i - 65);
        }
        for (i = SecExceptionCode.SEC_ERROR_INIT_NO_DATA_FILE; i >= 97; i--) {
            i[i] = (byte) ((i - 97) + 26);
        }
        for (i = 57; i >= 48; i--) {
            i[i] = (byte) ((i - 48) + 52);
        }
        i[43] = (byte) 62;
        i[47] = (byte) 63;
        for (i = 0; i <= 25; i++) {
            j[i] = (char) (i + 65);
        }
        int i3 = 26;
        i = 0;
        while (i3 <= 51) {
            j[i3] = (char) (i + 97);
            i3++;
            i++;
        }
        i = 52;
        while (i <= 61) {
            j[i] = (char) (i2 + 48);
            i++;
            i2++;
        }
        j[62] = '+';
        j[63] = '/';
    }

    private static boolean a(char c) {
        return c == ' ' || c == 13 || c == 10 || c == 9;
    }

    private static boolean b(char c) {
        return c == h;
    }

    private static boolean c(char c) {
        return c < 128 && i[c] != (byte) -1;
    }

    public static String a(byte[] bArr) {
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
            if ((b & g) == 0) {
                i6 = (byte) (b >> 2);
            } else {
                b2 = (byte) ((b >> 2) ^ Opcodes.CHECKCAST);
            }
            if ((b4 & g) == 0) {
                i = (byte) (b4 >> 4);
            } else {
                b = (byte) ((b4 >> 4) ^ 240);
            }
            if ((b5 & g) == 0) {
                length = b5 >> 6;
            } else {
                length = (b5 >> 6) ^ 252;
            }
            b3 = (byte) length;
            int i8 = i5 + 1;
            cArr[i5] = j[i6];
            i6 = i8 + 1;
            cArr[i8] = j[i | (b7 << 4)];
            i5 = i6 + 1;
            cArr[i6] = j[b3 | (b6 << 2)];
            i = i5 + 1;
            cArr[i5] = j[b5 & 63];
            i4++;
            i5 = i;
            i = i7;
        }
        byte b8;
        if (i2 == 8) {
            b3 = bArr[i];
            b8 = (byte) (b3 & 3);
            i = i5 + 1;
            cArr[i5] = j[(b3 & g) == 0 ? (byte) (b3 >> 2) : (byte) ((b3 >> 2) ^ Opcodes.CHECKCAST)];
            length = i + 1;
            cArr[i] = j[b8 << 4];
            i3 = length + 1;
            cArr[length] = h;
            cArr[i3] = h;
        } else if (i2 == 16) {
            b3 = bArr[i];
            b = bArr[i + 1];
            b2 = (byte) (b & 15);
            byte b9 = (byte) (b3 & 3);
            if ((b3 & g) == 0) {
                i3 = (byte) (b3 >> 2);
            } else {
                b8 = (byte) ((b3 >> 2) ^ Opcodes.CHECKCAST);
            }
            length = (b & g) == 0 ? (byte) (b >> 4) : (byte) ((b >> 4) ^ 240);
            i = i5 + 1;
            cArr[i5] = j[i3];
            i3 = i + 1;
            cArr[i] = j[length | (b9 << 4)];
            length = i3 + 1;
            cArr[i3] = j[b2 << 2];
            cArr[length] = h;
        }
        return new String(cArr);
    }

    public static byte[] a(String str) {
        if (str == null) {
            return null;
        }
        int i;
        int length;
        int i2;
        int i3;
        char[] toCharArray = str.toCharArray();
        if (toCharArray == null) {
            i = 0;
        } else {
            length = toCharArray.length;
            i2 = 0;
            i = 0;
            while (i2 < length) {
                char c = toCharArray[i2];
                if (c == ' ' || c == 13 || c == 10 || c == 9) {
                    i3 = 1;
                } else {
                    i3 = 0;
                }
                if (i3 == 0) {
                    i3 = i + 1;
                    toCharArray[i] = toCharArray[i2];
                } else {
                    i3 = i;
                }
                i2++;
                i = i3;
            }
        }
        if (i % 4 != 0) {
            return null;
        }
        int i4 = i / 4;
        if (i4 == 0) {
            return new byte[0];
        }
        int i5;
        char c2;
        byte b;
        byte[] bArr = new byte[(i4 * 3)];
        i = 0;
        i2 = 0;
        length = 0;
        while (length < i4 - 1) {
            i5 = i + 1;
            char c3 = toCharArray[i];
            if (c(c3)) {
                i = i5 + 1;
                c2 = toCharArray[i5];
                if (c(c2)) {
                    int i6 = i + 1;
                    char c4 = toCharArray[i];
                    if (c(c4)) {
                        i = i6 + 1;
                        char c5 = toCharArray[i6];
                        if (c(c5)) {
                            b = i[c3];
                            byte b2 = i[c2];
                            byte b3 = i[c4];
                            byte b4 = i[c5];
                            int i7 = i2 + 1;
                            bArr[i2] = (byte) ((b << 2) | (b2 >> 4));
                            int i8 = i7 + 1;
                            bArr[i7] = (byte) (((b2 & 15) << 4) | ((b3 >> 2) & 15));
                            i2 = i8 + 1;
                            bArr[i8] = (byte) ((b3 << 6) | b4);
                            length++;
                        }
                    }
                }
            }
            return null;
        }
        i4 = i + 1;
        char c6 = toCharArray[i];
        if (c(c6)) {
            i5 = i4 + 1;
            char c7 = toCharArray[i4];
            if (c(c7)) {
                b = i[c6];
                byte b5 = i[c7];
                i = i5 + 1;
                c2 = toCharArray[i5];
                c6 = toCharArray[i];
                Object obj;
                if (c(c2) && c(c6)) {
                    byte b6 = i[c2];
                    byte b7 = i[c6];
                    int i9 = i2 + 1;
                    bArr[i2] = (byte) ((b << 2) | (b5 >> 4));
                    i2 = i9 + 1;
                    bArr[i9] = (byte) (((b5 & 15) << 4) | ((b6 >> 2) & 15));
                    bArr[i2] = (byte) (b7 | (b6 << 6));
                    return bArr;
                } else if (b(c2) && b(c6)) {
                    if ((b5 & 15) != 0) {
                        return null;
                    }
                    obj = new byte[((length * 3) + 1)];
                    System.arraycopy(bArr, 0, obj, 0, length * 3);
                    obj[i2] = (byte) ((b << 2) | (b5 >> 4));
                    return obj;
                } else if (b(c2) || !b(c6)) {
                    return null;
                } else {
                    byte b8 = i[c2];
                    if ((b8 & 3) != 0) {
                        return null;
                    }
                    obj = new byte[((length * 3) + 2)];
                    System.arraycopy(bArr, 0, obj, 0, length * 3);
                    i3 = i2 + 1;
                    obj[i2] = (byte) ((b << 2) | (b5 >> 4));
                    obj[i3] = (byte) (((b5 & 15) << 4) | ((b8 >> 2) & 15));
                    return obj;
                }
            }
        }
        return null;
    }

    private static int a(char[] cArr) {
        if (cArr == null) {
            return 0;
        }
        int length = cArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            Object obj;
            int i3;
            char c = cArr[i];
            if (c == ' ' || c == 13 || c == 10 || c == 9) {
                obj = 1;
            } else {
                obj = null;
            }
            if (obj == null) {
                i3 = i2 + 1;
                cArr[i2] = cArr[i];
            } else {
                i3 = i2;
            }
            i++;
            i2 = i3;
        }
        return i2;
    }
}
