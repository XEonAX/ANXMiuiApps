package com.xiaomi.stat.d;

import java.io.UnsupportedEncodingException;

public class d {
    private static final String a = "Base64Utils";
    private static char[] b = new char[]{'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};
    private static byte[] c = new byte[]{(byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) 62, (byte) -1, (byte) -1, (byte) -1, (byte) 63, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 58, (byte) 59, (byte) 60, (byte) 61, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) 0, (byte) 1, (byte) 2, (byte) 3, (byte) 4, (byte) 5, (byte) 6, (byte) 7, (byte) 8, (byte) 9, (byte) 10, (byte) 11, (byte) 12, (byte) 13, (byte) 14, (byte) 15, (byte) 16, (byte) 17, (byte) 18, (byte) 19, (byte) 20, (byte) 21, (byte) 22, (byte) 23, (byte) 24, (byte) 25, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) 26, (byte) 27, (byte) 28, (byte) 29, (byte) 30, (byte) 31, (byte) 32, (byte) 33, (byte) 34, (byte) 35, (byte) 36, (byte) 37, (byte) 38, (byte) 39, (byte) 40, (byte) 41, (byte) 42, (byte) 43, (byte) 44, (byte) 45, (byte) 46, (byte) 47, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) -1, (byte) -1, (byte) -1, (byte) -1, (byte) -1};

    public static String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            int i3 = bArr[i] & 255;
            if (i2 == length) {
                stringBuffer.append(b[i3 >>> 2]);
                stringBuffer.append(b[(i3 & 3) << 4]);
                stringBuffer.append("==");
                break;
            }
            int i4 = i2 + 1;
            i2 = bArr[i2] & 255;
            if (i4 == length) {
                stringBuffer.append(b[i3 >>> 2]);
                stringBuffer.append(b[((i3 & 3) << 4) | ((i2 & 240) >>> 4)]);
                stringBuffer.append(b[(i2 & 15) << 2]);
                stringBuffer.append("=");
                break;
            }
            i = i4 + 1;
            i4 = bArr[i4] & 255;
            stringBuffer.append(b[i3 >>> 2]);
            stringBuffer.append(b[((i3 & 3) << 4) | ((i2 & 240) >>> 4)]);
            stringBuffer.append(b[((i2 & 15) << 2) | ((i4 & 192) >>> 6)]);
            stringBuffer.append(b[i4 & 63]);
        }
        return stringBuffer.toString();
    }

    public static byte[] a(String str) {
        try {
            return b(str);
        } catch (Throwable e) {
            k.e(a, "decode e", e);
            return new byte[0];
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x0020 A:{SYNTHETIC, EDGE_INSN: B:32:0x0020->B:6:0x0020 ?: BREAK  } */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0088 A:{LOOP_END, LOOP:0: B:1:0x0010->B:28:0x0088} */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0020 A:{SYNTHETIC, EDGE_INSN: B:35:0x0020->B:6:0x0020 ?: BREAK  } */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0060  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0020 A:{SYNTHETIC, EDGE_INSN: B:38:0x0020->B:6:0x0020 ?: BREAK  } */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x003a  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x002c A:{LOOP_START, LOOP:2: B:8:0x002c->B:7:0x002b, PHI: r1 } */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0020 A:{SYNTHETIC, EDGE_INSN: B:36:0x0020->B:6:0x0020 ?: BREAK  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static byte[] b(String str) throws UnsupportedEncodingException {
        StringBuffer stringBuffer = new StringBuffer();
        byte[] bytes = str.getBytes("US-ASCII");
        int length = bytes.length;
        int i = 0;
        while (i < length) {
            byte b;
            while (true) {
                int i2 = i + 1;
                b = c[bytes[i]];
                if (i2 < length && b == (byte) -1) {
                    i = i2;
                } else if (b != (byte) -1) {
                    break;
                } else {
                    byte b2;
                    while (true) {
                        i = i2 + 1;
                        b2 = c[bytes[i2]];
                        if (i >= length || b2 != (byte) -1) {
                            if (b2 != (byte) -1) {
                                break;
                            }
                            stringBuffer.append((char) ((b << 2) | ((b2 & 48) >>> 4)));
                            while (true) {
                                i2 = i + 1;
                                byte b3 = bytes[i];
                                if (b3 == (byte) 61) {
                                    return stringBuffer.toString().getBytes("iso8859-1");
                                }
                                b = c[b3];
                                if (i2 >= length || b != (byte) -1) {
                                    if (b != (byte) -1) {
                                        break;
                                    }
                                    byte b4;
                                    stringBuffer.append((char) (((b2 & 15) << 4) | ((b & 60) >>> 2)));
                                    while (true) {
                                        i = i2 + 1;
                                        b4 = bytes[i2];
                                        if (b4 == (byte) 61) {
                                            return stringBuffer.toString().getBytes("iso8859-1");
                                        }
                                        b4 = c[b4];
                                        if (i >= length || b4 != (byte) -1) {
                                            if (b4 != (byte) -1) {
                                                break;
                                            }
                                            stringBuffer.append((char) (b4 | ((b & 3) << 6)));
                                        } else {
                                            i2 = i;
                                        }
                                    }
                                    if (b4 != (byte) -1) {
                                    }
                                } else {
                                    i = i2;
                                }
                            }
                            if (b != (byte) -1) {
                            }
                        } else {
                            i2 = i;
                        }
                    }
                    if (b2 != (byte) -1) {
                    }
                }
            }
            if (b != (byte) -1) {
            }
        }
        return stringBuffer.toString().getBytes("iso8859-1");
    }
}
