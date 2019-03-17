package com.alibaba.mtl.log.d;

import java.io.UnsupportedEncodingException;

/* compiled from: Base64 */
public class c {
    static final /* synthetic */ boolean J = (!c.class.desiredAssertionStatus());

    /* compiled from: Base64 */
    static abstract class a {
        public int op;
        public byte[] output;

        a() {
        }
    }

    /* compiled from: Base64 */
    static class b extends a {
        private static final int[] a = new int[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        private static final int[] b = new int[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        private final int[] c;
        private int state;
        private int value;

        public b(int i, byte[] bArr) {
            this.output = bArr;
            this.c = (i & 8) == 0 ? a : b;
            this.state = 0;
            this.value = 0;
        }

        /* JADX WARNING: Removed duplicated region for block: B:63:0x005b A:{SYNTHETIC} */
        /* JADX WARNING: Removed duplicated region for block: B:54:0x0104  */
        /* JADX WARNING: Removed duplicated region for block: B:14:0x005e  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean process(byte[] input, int offset, int len, boolean finish) {
            if (this.state == 6) {
                return false;
            }
            len += offset;
            int i = this.state;
            int i2 = this.value;
            int i3 = 0;
            byte[] bArr = this.output;
            int[] iArr = this.c;
            int i4 = offset;
            while (i4 < len) {
                if (i == 0) {
                    while (i4 + 4 <= len) {
                        i2 = (((iArr[input[i4] & 255] << 18) | (iArr[input[i4 + 1] & 255] << 12)) | (iArr[input[i4 + 2] & 255] << 6)) | iArr[input[i4 + 3] & 255];
                        if (i2 >= 0) {
                            bArr[i3 + 2] = (byte) i2;
                            bArr[i3 + 1] = (byte) (i2 >> 8);
                            bArr[i3] = (byte) (i2 >> 16);
                            i3 += 3;
                            i4 += 4;
                        } else if (i4 >= len) {
                            i4 = i2;
                            if (finish) {
                                this.state = i;
                                this.value = i4;
                                this.op = i3;
                                return true;
                            }
                            switch (i) {
                                case 1:
                                    this.state = 6;
                                    return false;
                                case 2:
                                    i2 = i3 + 1;
                                    bArr[i3] = (byte) (i4 >> 4);
                                    i3 = i2;
                                    break;
                                case 3:
                                    i2 = i3 + 1;
                                    bArr[i3] = (byte) (i4 >> 10);
                                    i3 = i2 + 1;
                                    bArr[i2] = (byte) (i4 >> 2);
                                    break;
                                case 4:
                                    this.state = 6;
                                    return false;
                            }
                            this.state = i;
                            this.op = i3;
                            return true;
                        }
                    }
                    if (i4 >= len) {
                    }
                }
                offset = i4 + 1;
                i4 = iArr[input[i4] & 255];
                int i5;
                switch (i) {
                    case 0:
                        if (i4 >= 0) {
                            i5 = i4;
                            i4 = i + 1;
                            i2 = i5;
                            continue;
                        } else if (i4 != -1) {
                            this.state = 6;
                            return false;
                        }
                    case 1:
                        if (i4 >= 0) {
                            i2 = (i2 << 6) | i4;
                            i4 = i + 1;
                            continue;
                        } else if (i4 != -1) {
                            this.state = 6;
                            return false;
                        }
                    case 2:
                        if (i4 >= 0) {
                            i2 = (i2 << 6) | i4;
                            i4 = i + 1;
                            continue;
                        } else if (i4 == -2) {
                            i4 = i3 + 1;
                            bArr[i3] = (byte) (i2 >> 4);
                            i5 = i4;
                            i4 = 4;
                            i3 = i5;
                            break;
                        } else if (i4 != -1) {
                            this.state = 6;
                            return false;
                        }
                    case 3:
                        if (i4 >= 0) {
                            i2 = (i2 << 6) | i4;
                            bArr[i3 + 2] = (byte) i2;
                            bArr[i3 + 1] = (byte) (i2 >> 8);
                            bArr[i3] = (byte) (i2 >> 16);
                            i3 += 3;
                            i4 = 0;
                            continue;
                        } else if (i4 == -2) {
                            bArr[i3 + 1] = (byte) (i2 >> 2);
                            bArr[i3] = (byte) (i2 >> 10);
                            i3 += 2;
                            i4 = 5;
                            break;
                        } else if (i4 != -1) {
                            this.state = 6;
                            return false;
                        }
                    case 4:
                        if (i4 == -2) {
                            i4 = i + 1;
                            continue;
                        } else if (i4 != -1) {
                            this.state = 6;
                            return false;
                        }
                    case 5:
                        if (i4 != -1) {
                            this.state = 6;
                            return false;
                        }
                        i4 = i;
                        break;
                }
                i4 = i;
                i = i4;
                i4 = offset;
            }
            i4 = i2;
            if (finish) {
            }
        }
    }

    /* compiled from: Base64 */
    static class c extends a {
        static final /* synthetic */ boolean J;
        private static final byte[] a = new byte[]{(byte) 65, (byte) 66, (byte) 67, (byte) 68, (byte) 69, (byte) 70, (byte) 71, (byte) 72, (byte) 73, (byte) 74, (byte) 75, (byte) 76, (byte) 77, (byte) 78, (byte) 79, (byte) 80, (byte) 81, (byte) 82, (byte) 83, (byte) 84, (byte) 85, (byte) 86, (byte) 87, (byte) 88, (byte) 89, (byte) 90, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102, (byte) 103, (byte) 104, (byte) 105, (byte) 106, (byte) 107, (byte) 108, (byte) 109, (byte) 110, (byte) 111, (byte) 112, (byte) 113, (byte) 114, (byte) 115, (byte) 116, (byte) 117, (byte) 118, (byte) 119, (byte) 120, (byte) 121, (byte) 122, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 43, (byte) 47};
        private static final byte[] b = new byte[]{(byte) 65, (byte) 66, (byte) 67, (byte) 68, (byte) 69, (byte) 70, (byte) 71, (byte) 72, (byte) 73, (byte) 74, (byte) 75, (byte) 76, (byte) 77, (byte) 78, (byte) 79, (byte) 80, (byte) 81, (byte) 82, (byte) 83, (byte) 84, (byte) 85, (byte) 86, (byte) 87, (byte) 88, (byte) 89, (byte) 90, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102, (byte) 103, (byte) 104, (byte) 105, (byte) 106, (byte) 107, (byte) 108, (byte) 109, (byte) 110, (byte) 111, (byte) 112, (byte) 113, (byte) 114, (byte) 115, (byte) 116, (byte) 117, (byte) 118, (byte) 119, (byte) 120, (byte) 121, (byte) 122, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 45, (byte) 95};
        int D;
        private final byte[] c;
        private int count;
        private final byte[] d;
        public final boolean do_cr;
        public final boolean do_newline;
        public final boolean do_padding;

        static {
            boolean z;
            if (c.class.desiredAssertionStatus()) {
                z = false;
            } else {
                z = true;
            }
            J = z;
        }

        public c(int i, byte[] bArr) {
            boolean z;
            boolean z2 = true;
            this.output = bArr;
            this.do_padding = (i & 1) == 0;
            if ((i & 2) == 0) {
                z = true;
            } else {
                z = false;
            }
            this.do_newline = z;
            if ((i & 4) == 0) {
                z2 = false;
            }
            this.do_cr = z2;
            this.d = (i & 8) == 0 ? a : b;
            this.c = new byte[2];
            this.D = 0;
            this.count = this.do_newline ? 19 : -1;
        }

        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean process(byte[] input, int offset, int len, boolean finish) {
            int i;
            byte[] bArr = this.d;
            byte[] bArr2 = this.output;
            int i2 = 0;
            int i3 = this.count;
            len += offset;
            int i4 = -1;
            switch (this.D) {
                case 0:
                    i = offset;
                    break;
                case 1:
                    if (offset + 2 <= len) {
                        i = offset + 1;
                        offset = i + 1;
                        i4 = (((this.c[0] & 255) << 16) | ((input[offset] & 255) << 8)) | (input[i] & 255);
                        this.D = 0;
                        i = offset;
                        break;
                    }
                case 2:
                    if (offset + 1 <= len) {
                        i = offset + 1;
                        i4 = (((this.c[0] & 255) << 16) | ((this.c[1] & 255) << 8)) | (input[offset] & 255);
                        this.D = 0;
                        break;
                    }
                default:
                    i = offset;
                    break;
            }
            if (i4 != -1) {
                bArr2[0] = bArr[(i4 >> 18) & 63];
                bArr2[1] = bArr[(i4 >> 12) & 63];
                bArr2[2] = bArr[(i4 >> 6) & 63];
                i2 = 4;
                bArr2[3] = bArr[i4 & 63];
                i3--;
                if (i3 == 0) {
                    if (this.do_cr) {
                        i3 = 5;
                        bArr2[4] = (byte) 13;
                    } else {
                        i3 = 4;
                    }
                    i2 = i3 + 1;
                    bArr2[i3] = (byte) 10;
                    i3 = 19;
                }
            }
            while (true) {
                int i5 = i3;
                int i6 = i2;
                if (i + 3 <= len) {
                    i3 = (((input[i] & 255) << 16) | ((input[i + 1] & 255) << 8)) | (input[i + 2] & 255);
                    bArr2[i6] = bArr[(i3 >> 18) & 63];
                    bArr2[i6 + 1] = bArr[(i3 >> 12) & 63];
                    bArr2[i6 + 2] = bArr[(i3 >> 6) & 63];
                    bArr2[i6 + 3] = bArr[i3 & 63];
                    i += 3;
                    i2 = i6 + 4;
                    i3 = i5 - 1;
                    if (i3 == 0) {
                        if (this.do_cr) {
                            i3 = i2 + 1;
                            bArr2[i2] = (byte) 13;
                        } else {
                            i3 = i2;
                        }
                        i2 = i3 + 1;
                        bArr2[i3] = (byte) 10;
                        i3 = 19;
                    }
                } else {
                    byte[] bArr3;
                    if (finish) {
                        if (i - this.D == len - 1) {
                            if (this.D > 0) {
                                i2 = 1;
                                i3 = this.c[0];
                                i4 = i;
                            } else {
                                i2 = i + 1;
                                i3 = input[i];
                                i4 = i2;
                                i2 = 0;
                            }
                            i = (i3 & 255) << 4;
                            this.D -= i2;
                            i2 = i6 + 1;
                            bArr2[i6] = bArr[(i >> 6) & 63];
                            i3 = i2 + 1;
                            bArr2[i2] = bArr[i & 63];
                            if (this.do_padding) {
                                i2 = i3 + 1;
                                bArr2[i3] = (byte) 61;
                                i3 = i2 + 1;
                                bArr2[i2] = (byte) 61;
                            }
                            if (this.do_newline) {
                                if (this.do_cr) {
                                    i2 = i3 + 1;
                                    bArr2[i3] = (byte) 13;
                                    i3 = i2;
                                }
                                i2 = i3 + 1;
                                bArr2[i3] = (byte) 10;
                                i3 = i2;
                            }
                            i = i4;
                            i6 = i3;
                        } else if (i - this.D == len - 2) {
                            if (this.D > 1) {
                                i2 = 1;
                                i3 = this.c[0];
                            } else {
                                i2 = i + 1;
                                i3 = input[i];
                                i = i2;
                                i2 = 0;
                            }
                            int i7 = (i3 & 255) << 10;
                            if (this.D > 0) {
                                i4 = i2 + 1;
                                i3 = this.c[i2];
                                i2 = i4;
                            } else {
                                i4 = i + 1;
                                i3 = input[i];
                                i = i4;
                            }
                            i3 = ((i3 & 255) << 2) | i7;
                            this.D -= i2;
                            i2 = i6 + 1;
                            bArr2[i6] = bArr[(i3 >> 12) & 63];
                            i4 = i2 + 1;
                            bArr2[i2] = bArr[(i3 >> 6) & 63];
                            i2 = i4 + 1;
                            bArr2[i4] = bArr[i3 & 63];
                            if (this.do_padding) {
                                i3 = i2 + 1;
                                bArr2[i2] = (byte) 61;
                            } else {
                                i3 = i2;
                            }
                            if (this.do_newline) {
                                if (this.do_cr) {
                                    i2 = i3 + 1;
                                    bArr2[i3] = (byte) 13;
                                    i3 = i2;
                                }
                                i2 = i3 + 1;
                                bArr2[i3] = (byte) 10;
                                i3 = i2;
                            }
                            i6 = i3;
                        } else if (this.do_newline && i6 > 0 && i5 != 19) {
                            if (this.do_cr) {
                                i3 = i6 + 1;
                                bArr2[i6] = (byte) 13;
                            } else {
                                i3 = i6;
                            }
                            i6 = i3 + 1;
                            bArr2[i3] = (byte) 10;
                        }
                        if (!J && this.D != 0) {
                            throw new AssertionError();
                        } else if (!(J || r3 == len)) {
                            throw new AssertionError();
                        }
                    } else if (i == len - 1) {
                        bArr3 = this.c;
                        i2 = this.D;
                        this.D = i2 + 1;
                        bArr3[i2] = input[i];
                    } else if (i == len - 2) {
                        bArr3 = this.c;
                        i2 = this.D;
                        this.D = i2 + 1;
                        bArr3[i2] = input[i];
                        bArr3 = this.c;
                        i2 = this.D;
                        this.D = i2 + 1;
                        bArr3[i2] = input[i + 1];
                    }
                    this.op = i6;
                    this.count = i5;
                    return true;
                }
            }
        }
    }

    public static byte[] decode(byte[] input, int flags) {
        return decode(input, 0, input.length, flags);
    }

    public static byte[] decode(byte[] input, int offset, int len, int flags) {
        b bVar = new b(flags, new byte[((len * 3) / 4)]);
        if (!bVar.process(input, offset, len, true)) {
            throw new IllegalArgumentException("bad base-64");
        } else if (bVar.op == bVar.output.length) {
            return bVar.output;
        } else {
            byte[] bArr = new byte[bVar.op];
            System.arraycopy(bVar.output, 0, bArr, 0, bVar.op);
            return bArr;
        }
    }

    public static String encodeToString(byte[] input, int flags) {
        try {
            return new String(encode(input, flags), "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public static byte[] encode(byte[] input, int flags) {
        return encode(input, 0, input.length, flags);
    }

    public static byte[] encode(byte[] input, int offset, int len, int flags) {
        c cVar = new c(flags, null);
        int i = (len / 3) * 4;
        if (!cVar.do_padding) {
            switch (len % 3) {
                case 1:
                    i += 2;
                    break;
                case 2:
                    i += 3;
                    break;
            }
        } else if (len % 3 > 0) {
            i += 4;
        }
        if (cVar.do_newline && len > 0) {
            int i2;
            int i3 = ((len - 1) / 57) + 1;
            if (cVar.do_cr) {
                i2 = 2;
            } else {
                i2 = 1;
            }
            i += i2 * i3;
        }
        cVar.output = new byte[i];
        cVar.process(input, offset, len, true);
        if (J || cVar.op == i) {
            return cVar.output;
        }
        throw new AssertionError();
    }

    private c() {
    }
}
