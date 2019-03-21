package com.nexstreaming.app.common.thememath;

import android.graphics.Color;
import android.graphics.ColorMatrix;

/* compiled from: NexTheme_Math */
public class a {
    static a a = new a(1.164d, 0.0d, 1.596d, -0.871d, 1.164d, -0.392d, -0.813d, 0.53d, 1.164d, 2.017d, 0.0d, -1.081d, 0.0d, 0.0d, 0.0d, 1.0d);
    static a b = new a(1.164d, 0.0d, 1.596d, 0.0d, 1.164d, -0.392d, -0.813d, 0.0d, 1.164d, 2.017d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d);
    static a c = new a(0.257d, 0.504d, 0.098d, 0.0d, -0.148d, -0.291d, 0.439d, 0.0d, 0.439d, -0.368d, -0.071d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d);
    static a d = new a(0.257d, 0.504d, 0.098d, 0.0625d, -0.148d, -0.291d, 0.439d, 0.5d, 0.439d, -0.368d, -0.071d, 0.5d, 0.0d, 0.0d, 0.0d, 1.0d);
    static a e = new a(1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d);

    /* compiled from: NexTheme_Math */
    private static class a {
        float[] a;

        a(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16) {
            this.a = new float[]{f, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16};
        }

        a(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10, double d11, double d12, double d13, double d14, double d15, double d16) {
            this.a = new float[]{(float) d, (float) d2, (float) d3, (float) d4, (float) d5, (float) d6, (float) d7, (float) d8, (float) d9, (float) d10, (float) d11, (float) d12, (float) d13, (float) d14, (float) d15, (float) d16};
        }
    }

    /* compiled from: NexTheme_Math */
    private static class b {
        float[] a;

        b(float f, float f2, float f3, float f4) {
            this.a = new float[]{f, f2, f3, f4};
        }

        b(double d, double d2, double d3, double d4) {
            this.a = new float[]{(float) d, (float) d2, (float) d3, (float) d4};
        }
    }

    static a a() {
        return new a(1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d);
    }

    static a a(float f, float f2, float f3) {
        return new a((double) f, 0.0d, 0.0d, 0.0d, 0.0d, (double) f2, 0.0d, 0.0d, 0.0d, 0.0d, (double) f3, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d);
    }

    static a a(b bVar) {
        return new a(1.0d, 0.0d, 0.0d, (double) bVar.a[0], 0.0d, 1.0d, 0.0d, (double) bVar.a[1], 0.0d, 0.0d, 1.0d, (double) bVar.a[2], 0.0d, 0.0d, 0.0d, 1.0d);
    }

    static a a(float f, float f2, float f3, b bVar, boolean z) {
        a aVar;
        a a;
        float f4;
        a aVar2;
        if (((double) f) < -1.0d) {
            f = -1.0f;
        } else if (((double) f) > 1.0d) {
            f = 1.0f;
        }
        if (((double) f2) < -1.0d) {
            f2 = -1.0f;
        } else if (((double) f2) > 1.0d) {
            f2 = 1.0f;
        }
        if (z) {
            aVar = new a(1.0d, 0.0d, 1.402d, 0.0d, 1.0d, -0.344d, -0.714d, 0.0d, 1.0d, 1.772d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d);
        } else {
            aVar = new a(1.164d, 0.0d, 1.596d, 0.0d, 1.164d, -0.392d, -0.813d, 0.0d, 1.164d, 2.017d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d);
        }
        a a2 = a(new b((double) f, 0.0d, 0.0d, 0.0d));
        a a3 = a(a(a(new b(0.5d, 0.5d, 0.5d, 0.0d)), a(1.0f + f2, 1.0f + f2, 1.0f + f2)), a(new b(-0.5d, -0.5d, -0.5d, 0.0d)));
        if (z) {
            a = a(new b(0.0d, -0.5d, -0.5d, 0.0d));
        } else {
            a = a(new b(-0.0625d, -0.5d, -0.5d, 0.0d));
        }
        a a4 = a(1.0f, 1.0f + f3, 1.0f + f3);
        float f5 = bVar.a[0];
        float f6 = bVar.a[1];
        float f7 = bVar.a[2];
        float f8 = (f5 + f6) + f7;
        float f9 = f8 == 0.0f ? 1.0f : (f5 / f8) * 3.0f;
        float f10 = f8 == 0.0f ? 1.0f : (f6 / f8) * 3.0f;
        if (f8 == 0.0f) {
            f4 = 1.0f;
        } else {
            f4 = (f7 / f8) * 3.0f;
        }
        if (f3 < 0.0f) {
            aVar2 = new a((double) (0.241f * f9), (double) (0.691f * f9), (double) (f9 * 0.068f), 0.0d, (double) (0.241f * f10), (double) (0.691f * f10), (double) (f10 * 0.068f), 0.0d, (double) (0.241f * f4), (double) (0.691f * f4), (double) (f4 * 0.068f), 0.0d, 0.0d, 0.0d, 0.0d, 1.0d);
            a a5 = a();
            for (int i = 0; i < 16; i++) {
                aVar2.a[i] = (aVar2.a[i] * (1.0f - (1.0f + f3))) + (a5.a[i] * (1.0f + f3));
            }
        } else {
            aVar2 = a();
        }
        return a(aVar2, a(a(a(aVar, a(a4, a)), a2), a3));
    }

    public static ColorMatrix a(float f, float f2, float f3, int i) {
        float[] fArr = a(f, f2, f3, new b(((float) Color.red(i)) / 255.0f, ((float) Color.green(i)) / 255.0f, ((float) Color.blue(i)) / 255.0f, 1.0f)).a;
        return new ColorMatrix(new float[]{fArr[0], fArr[1], fArr[2], 0.0f, fArr[3], fArr[4], fArr[5], fArr[6], 0.0f, fArr[7], fArr[8], fArr[9], fArr[10], 0.0f, fArr[11], fArr[12], fArr[13], fArr[14], 1.0f, 0.0f});
    }

    static a a(float f, float f2, float f3, b bVar) {
        return a(a(f, f2, f3, bVar, false), d);
    }

    static a a(a aVar, a aVar2) {
        float[] fArr = aVar2.a;
        float[] fArr2 = aVar.a;
        return new a((((fArr[0] * fArr2[0]) + (fArr[4] * fArr2[1])) + (fArr[8] * fArr2[2])) + (fArr[12] * fArr2[3]), (((fArr[1] * fArr2[0]) + (fArr[5] * fArr2[1])) + (fArr[9] * fArr2[2])) + (fArr[13] * fArr2[3]), (((fArr[2] * fArr2[0]) + (fArr[6] * fArr2[1])) + (fArr[10] * fArr2[2])) + (fArr[14] * fArr2[3]), (((fArr[3] * fArr2[0]) + (fArr[7] * fArr2[1])) + (fArr[11] * fArr2[2])) + (fArr[15] * fArr2[3]), (((fArr[0] * fArr2[4]) + (fArr[4] * fArr2[5])) + (fArr[8] * fArr2[6])) + (fArr[12] * fArr2[7]), (((fArr[1] * fArr2[4]) + (fArr[5] * fArr2[5])) + (fArr[9] * fArr2[6])) + (fArr[13] * fArr2[7]), (((fArr[2] * fArr2[4]) + (fArr[6] * fArr2[5])) + (fArr[10] * fArr2[6])) + (fArr[14] * fArr2[7]), (((fArr[3] * fArr2[4]) + (fArr[7] * fArr2[5])) + (fArr[11] * fArr2[6])) + (fArr[15] * fArr2[7]), (((fArr[0] * fArr2[8]) + (fArr[4] * fArr2[9])) + (fArr[8] * fArr2[10])) + (fArr[12] * fArr2[11]), (((fArr[1] * fArr2[8]) + (fArr[5] * fArr2[9])) + (fArr[9] * fArr2[10])) + (fArr[13] * fArr2[11]), (((fArr[2] * fArr2[8]) + (fArr[6] * fArr2[9])) + (fArr[10] * fArr2[10])) + (fArr[14] * fArr2[11]), (((fArr[3] * fArr2[8]) + (fArr[7] * fArr2[9])) + (fArr[11] * fArr2[10])) + (fArr[15] * fArr2[11]), (((fArr[0] * fArr2[12]) + (fArr[4] * fArr2[13])) + (fArr[8] * fArr2[14])) + (fArr[12] * fArr2[15]), (((fArr[1] * fArr2[12]) + (fArr[5] * fArr2[13])) + (fArr[9] * fArr2[14])) + (fArr[13] * fArr2[15]), (((fArr[2] * fArr2[12]) + (fArr[6] * fArr2[13])) + (fArr[10] * fArr2[14])) + (fArr[14] * fArr2[15]), (fArr[15] * fArr2[15]) + (((fArr[3] * fArr2[12]) + (fArr[7] * fArr2[13])) + (fArr[11] * fArr2[14])));
    }
}
