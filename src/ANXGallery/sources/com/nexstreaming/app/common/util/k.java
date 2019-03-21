package com.nexstreaming.app.common.util;

/* compiled from: SimplexNoise */
public class k {
    private static a[] a = new a[]{new a(1.0d, 1.0d, 0.0d), new a(-1.0d, 1.0d, 0.0d), new a(1.0d, -1.0d, 0.0d), new a(-1.0d, -1.0d, 0.0d), new a(1.0d, 0.0d, 1.0d), new a(-1.0d, 0.0d, 1.0d), new a(1.0d, 0.0d, -1.0d), new a(-1.0d, 0.0d, -1.0d), new a(0.0d, 1.0d, 1.0d), new a(0.0d, -1.0d, 1.0d), new a(0.0d, 1.0d, -1.0d), new a(0.0d, -1.0d, -1.0d)};
    private static a[] b = new a[]{new a(0.0d, 1.0d, 1.0d, 1.0d), new a(0.0d, 1.0d, 1.0d, -1.0d), new a(0.0d, 1.0d, -1.0d, 1.0d), new a(0.0d, 1.0d, -1.0d, -1.0d), new a(0.0d, -1.0d, 1.0d, 1.0d), new a(0.0d, -1.0d, 1.0d, -1.0d), new a(0.0d, -1.0d, -1.0d, 1.0d), new a(0.0d, -1.0d, -1.0d, -1.0d), new a(1.0d, 0.0d, 1.0d, 1.0d), new a(1.0d, 0.0d, 1.0d, -1.0d), new a(1.0d, 0.0d, -1.0d, 1.0d), new a(1.0d, 0.0d, -1.0d, -1.0d), new a(-1.0d, 0.0d, 1.0d, 1.0d), new a(-1.0d, 0.0d, 1.0d, -1.0d), new a(-1.0d, 0.0d, -1.0d, 1.0d), new a(-1.0d, 0.0d, -1.0d, -1.0d), new a(1.0d, 1.0d, 0.0d, 1.0d), new a(1.0d, 1.0d, 0.0d, -1.0d), new a(1.0d, -1.0d, 0.0d, 1.0d), new a(1.0d, -1.0d, 0.0d, -1.0d), new a(-1.0d, 1.0d, 0.0d, 1.0d), new a(-1.0d, 1.0d, 0.0d, -1.0d), new a(-1.0d, -1.0d, 0.0d, 1.0d), new a(-1.0d, -1.0d, 0.0d, -1.0d), new a(1.0d, 1.0d, 1.0d, 0.0d), new a(1.0d, 1.0d, -1.0d, 0.0d), new a(1.0d, -1.0d, 1.0d, 0.0d), new a(1.0d, -1.0d, -1.0d, 0.0d), new a(-1.0d, 1.0d, 1.0d, 0.0d), new a(-1.0d, 1.0d, -1.0d, 0.0d), new a(-1.0d, -1.0d, 1.0d, 0.0d), new a(-1.0d, -1.0d, -1.0d, 0.0d)};
    private static short[] c = new short[]{(short) 151, (short) 160, (short) 137, (short) 91, (short) 90, (short) 15, (short) 131, (short) 13, (short) 201, (short) 95, (short) 96, (short) 53, (short) 194, (short) 233, (short) 7, (short) 225, (short) 140, (short) 36, (short) 103, (short) 30, (short) 69, (short) 142, (short) 8, (short) 99, (short) 37, (short) 240, (short) 21, (short) 10, (short) 23, (short) 190, (short) 6, (short) 148, (short) 247, (short) 120, (short) 234, (short) 75, (short) 0, (short) 26, (short) 197, (short) 62, (short) 94, (short) 252, (short) 219, (short) 203, (short) 117, (short) 35, (short) 11, (short) 32, (short) 57, (short) 177, (short) 33, (short) 88, (short) 237, (short) 149, (short) 56, (short) 87, (short) 174, (short) 20, (short) 125, (short) 136, (short) 171, (short) 168, (short) 68, (short) 175, (short) 74, (short) 165, (short) 71, (short) 134, (short) 139, (short) 48, (short) 27, (short) 166, (short) 77, (short) 146, (short) 158, (short) 231, (short) 83, (short) 111, (short) 229, (short) 122, (short) 60, (short) 211, (short) 133, (short) 230, (short) 220, (short) 105, (short) 92, (short) 41, (short) 55, (short) 46, (short) 245, (short) 40, (short) 244, (short) 102, (short) 143, (short) 54, (short) 65, (short) 25, (short) 63, (short) 161, (short) 1, (short) 216, (short) 80, (short) 73, (short) 209, (short) 76, (short) 132, (short) 187, (short) 208, (short) 89, (short) 18, (short) 169, (short) 200, (short) 196, (short) 135, (short) 130, (short) 116, (short) 188, (short) 159, (short) 86, (short) 164, (short) 100, (short) 109, (short) 198, (short) 173, (short) 186, (short) 3, (short) 64, (short) 52, (short) 217, (short) 226, (short) 250, (short) 124, (short) 123, (short) 5, (short) 202, (short) 38, (short) 147, (short) 118, (short) 126, (short) 255, (short) 82, (short) 85, (short) 212, (short) 207, (short) 206, (short) 59, (short) 227, (short) 47, (short) 16, (short) 58, (short) 17, (short) 182, (short) 189, (short) 28, (short) 42, (short) 223, (short) 183, (short) 170, (short) 213, (short) 119, (short) 248, (short) 152, (short) 2, (short) 44, (short) 154, (short) 163, (short) 70, (short) 221, (short) 153, (short) 101, (short) 155, (short) 167, (short) 43, (short) 172, (short) 9, (short) 129, (short) 22, (short) 39, (short) 253, (short) 19, (short) 98, (short) 108, (short) 110, (short) 79, (short) 113, (short) 224, (short) 232, (short) 178, (short) 185, (short) 112, (short) 104, (short) 218, (short) 246, (short) 97, (short) 228, (short) 251, (short) 34, (short) 242, (short) 193, (short) 238, (short) 210, (short) 144, (short) 12, (short) 191, (short) 179, (short) 162, (short) 241, (short) 81, (short) 51, (short) 145, (short) 235, (short) 249, (short) 14, (short) 239, (short) 107, (short) 49, (short) 192, (short) 214, (short) 31, (short) 181, (short) 199, (short) 106, (short) 157, (short) 184, (short) 84, (short) 204, (short) 176, (short) 115, (short) 121, (short) 50, (short) 45, (short) 127, (short) 4, (short) 150, (short) 254, (short) 138, (short) 236, (short) 205, (short) 93, (short) 222, (short) 114, (short) 67, (short) 29, (short) 24, (short) 72, (short) 243, (short) 141, (short) 128, (short) 195, (short) 78, (short) 66, (short) 215, (short) 61, (short) 156, (short) 180};
    private static short[] d = new short[512];
    private static short[] e = new short[512];
    private static final double f = (0.5d * (Math.sqrt(3.0d) - 1.0d));
    private static final double g = ((3.0d - Math.sqrt(3.0d)) / 6.0d);
    private static final double h = ((Math.sqrt(5.0d) - 1.0d) / 4.0d);
    private static final double i = ((5.0d - Math.sqrt(5.0d)) / 20.0d);

    /* compiled from: SimplexNoise */
    private static class a {
        double a;
        double b;
        double c;
        double d;

        a(double d, double d2, double d3) {
            this.a = d;
            this.b = d2;
            this.c = d3;
        }

        a(double d, double d2, double d3, double d4) {
            this.a = d;
            this.b = d2;
            this.c = d3;
            this.d = d4;
        }
    }

    static {
        for (int i = 0; i < 512; i++) {
            d[i] = c[i & 255];
            e[i] = (short) (d[i] % 12);
        }
    }

    private static int a(double d) {
        int i = (int) d;
        return d < ((double) i) ? i - 1 : i;
    }

    private static double a(a aVar, double d, double d2, double d3) {
        return ((aVar.a * d) + (aVar.b * d2)) + (aVar.c * d3);
    }

    public static double a(double d, double d2, double d3) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        double d4;
        double d5;
        double d6;
        double d7 = ((d + d2) + d3) * 0.3333333333333333d;
        int a = a(d + d7);
        int a2 = a(d2 + d7);
        int a3 = a(d7 + d3);
        d7 = ((double) ((a + a2) + a3)) * 0.16666666666666666d;
        double d8 = d - (((double) a) - d7);
        double d9 = d2 - (((double) a2) - d7);
        double d10 = d3 - (((double) a3) - d7);
        if (d8 >= d9) {
            if (d9 >= d10) {
                i = 1;
                i2 = 0;
                i3 = 0;
                i4 = 1;
                i5 = 1;
                i6 = 0;
            } else if (d8 >= d10) {
                i = 1;
                i2 = 0;
                i3 = 0;
                i4 = 1;
                i5 = 0;
                i6 = 1;
            } else {
                i = 0;
                i2 = 0;
                i3 = 1;
                i4 = 1;
                i5 = 0;
                i6 = 1;
            }
        } else if (d9 < d10) {
            i = 0;
            i2 = 0;
            i3 = 1;
            i4 = 0;
            i5 = 1;
            i6 = 1;
        } else if (d8 < d10) {
            i = 0;
            i2 = 1;
            i3 = 0;
            i4 = 0;
            i5 = 1;
            i6 = 1;
        } else {
            i = 0;
            i2 = 1;
            i3 = 0;
            i4 = 1;
            i5 = 1;
            i6 = 0;
        }
        double d11 = (d8 - ((double) i)) + 0.16666666666666666d;
        double d12 = (d9 - ((double) i2)) + 0.16666666666666666d;
        double d13 = (d10 - ((double) i3)) + 0.16666666666666666d;
        double d14 = (d8 - ((double) i4)) + 0.3333333333333333d;
        double d15 = (d9 - ((double) i5)) + 0.3333333333333333d;
        double d16 = (d10 - ((double) i6)) + 0.3333333333333333d;
        double d17 = (d8 - 1.0d) + 0.5d;
        double d18 = (d9 - 1.0d) + 0.5d;
        double d19 = (d10 - 1.0d) + 0.5d;
        a &= 255;
        a2 &= 255;
        a3 &= 255;
        short s = e[d[d[a3] + a2] + a];
        short s2 = e[d[d[i3 + a3] + (i2 + a2)] + (i + a)];
        short s3 = e[d[d[i6 + a3] + (i5 + a2)] + (i4 + a)];
        short s4 = e[(a + 1) + d[(a2 + 1) + d[a3 + 1]]];
        d7 = ((0.6d - (d8 * d8)) - (d9 * d9)) - (d10 * d10);
        if (d7 < 0.0d) {
            d4 = 0.0d;
        } else {
            d7 *= d7;
            d4 = a(a[s], d8, d9, d10) * (d7 * d7);
        }
        d7 = ((0.6d - (d11 * d11)) - (d12 * d12)) - (d13 * d13);
        if (d7 < 0.0d) {
            d5 = 0.0d;
        } else {
            d7 *= d7;
            d5 = a(a[s2], d11, d12, d13) * (d7 * d7);
        }
        d7 = ((0.6d - (d14 * d14)) - (d15 * d15)) - (d16 * d16);
        if (d7 < 0.0d) {
            d6 = 0.0d;
        } else {
            d7 *= d7;
            d6 = a(a[s3], d14, d15, d16) * (d7 * d7);
        }
        d7 = ((0.6d - (d17 * d17)) - (d18 * d18)) - (d19 * d19);
        if (d7 < 0.0d) {
            d7 = 0.0d;
        } else {
            d7 *= d7;
            d7 = a(a[s4], d17, d18, d19) * (d7 * d7);
        }
        return (d7 + ((d4 + d5) + d6)) * 32.0d;
    }
}
