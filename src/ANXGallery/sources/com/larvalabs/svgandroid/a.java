package com.larvalabs.svgandroid;

/* compiled from: ParserHelper */
public class a {
    private static final double[] e = new double[128];
    public int a;
    private char b;
    private CharSequence c;
    private int d;

    public a(CharSequence charSequence, int i) {
        this.c = charSequence;
        this.a = i;
        this.d = charSequence.length();
        this.b = charSequence.charAt(i);
    }

    private char f() {
        if (this.a < this.d) {
            this.a++;
        }
        if (this.a == this.d) {
            return 0;
        }
        return this.c.charAt(this.a);
    }

    public void a() {
        while (this.a < this.d && Character.isWhitespace(this.c.charAt(this.a))) {
            c();
        }
    }

    public void b() {
        while (this.a < this.d) {
            switch (this.c.charAt(this.a)) {
                case 9:
                case 10:
                case ' ':
                case ',':
                    c();
                default:
                    return;
            }
        }
    }

    public void c() {
        this.b = f();
    }

    /* JADX WARNING: Missing block: B:10:0x0023, code:
            if (r11.b != '.') goto L_0x0099;
     */
    /* JADX WARNING: Missing block: B:11:0x0025, code:
            r11.b = f();
     */
    /* JADX WARNING: Missing block: B:12:0x002d, code:
            switch(r11.b) {
                case 48: goto L_0x006b;
                case 49: goto L_0x0100;
                case 50: goto L_0x0100;
                case 51: goto L_0x0100;
                case 52: goto L_0x0100;
                case 53: goto L_0x0100;
                case 54: goto L_0x0100;
                case 55: goto L_0x0100;
                case 56: goto L_0x0100;
                case 57: goto L_0x0100;
                default: goto L_0x0030;
            };
     */
    /* JADX WARNING: Missing block: B:13:0x0030, code:
            if (r4 != 0) goto L_0x0099;
     */
    /* JADX WARNING: Missing block: B:14:0x0032, code:
            a(r11.b);
     */
    /* JADX WARNING: Missing block: B:15:0x0039, code:
            r11.b = f();
     */
    /* JADX WARNING: Missing block: B:16:0x0041, code:
            switch(r11.b) {
                case 46: goto L_0x0046;
                case 48: goto L_0x0039;
                case 49: goto L_0x004b;
                case 50: goto L_0x004b;
                case 51: goto L_0x004b;
                case 52: goto L_0x004b;
                case 53: goto L_0x004b;
                case 54: goto L_0x004b;
                case 55: goto L_0x004b;
                case 56: goto L_0x004b;
                case 57: goto L_0x004b;
                case 69: goto L_0x0046;
                case com.miui.gallery.assistant.jni.filter.BaiduSceneResult.SHOOTING :int: goto L_0x0046;
                default: goto L_0x0044;
            };
     */
    /* JADX WARNING: Missing block: B:18:0x0046, code:
            r3 = 0;
            r4 = 1;
            r5 = 0;
            r6 = 0;
     */
    /* JADX WARNING: Missing block: B:19:0x004b, code:
            r3 = 0;
            r4 = 0;
            r5 = 0;
     */
    /* JADX WARNING: Missing block: B:20:0x004e, code:
            if (r4 >= 9) goto L_0x0068;
     */
    /* JADX WARNING: Missing block: B:21:0x0050, code:
            r4 = r4 + 1;
            r5 = (r5 * 10) + (r11.b - 48);
     */
    /* JADX WARNING: Missing block: B:22:0x0059, code:
            r11.b = f();
     */
    /* JADX WARNING: Missing block: B:23:0x0061, code:
            switch(r11.b) {
                case 48: goto L_0x004e;
                case 49: goto L_0x004e;
                case 50: goto L_0x004e;
                case 51: goto L_0x004e;
                case 52: goto L_0x004e;
                case 53: goto L_0x004e;
                case 54: goto L_0x004e;
                case 55: goto L_0x004e;
                case 56: goto L_0x004e;
                case 57: goto L_0x004e;
                default: goto L_0x0064;
            };
     */
    /* JADX WARNING: Missing block: B:24:0x0064, code:
            r6 = r5;
            r5 = r4;
            r4 = 1;
     */
    /* JADX WARNING: Missing block: B:25:0x0068, code:
            r3 = r3 + 1;
     */
    /* JADX WARNING: Missing block: B:26:0x006b, code:
            if (r5 != 0) goto L_0x0100;
     */
    /* JADX WARNING: Missing block: B:27:0x006d, code:
            r11.b = f();
            r3 = r3 - 1;
     */
    /* JADX WARNING: Missing block: B:28:0x0077, code:
            switch(r11.b) {
                case 48: goto L_0x006d;
                case 49: goto L_0x007e;
                case 50: goto L_0x007e;
                case 51: goto L_0x007e;
                case 52: goto L_0x007e;
                case 53: goto L_0x007e;
                case 54: goto L_0x007e;
                case 55: goto L_0x007e;
                case 56: goto L_0x007e;
                case 57: goto L_0x007e;
                default: goto L_0x007a;
            };
     */
    /* JADX WARNING: Missing block: B:29:0x007a, code:
            if (r4 != 0) goto L_0x0099;
     */
    /* JADX WARNING: Missing block: B:31:0x007e, code:
            r4 = r5;
            r5 = r6;
     */
    /* JADX WARNING: Missing block: B:32:0x0080, code:
            if (r4 >= 9) goto L_0x008d;
     */
    /* JADX WARNING: Missing block: B:33:0x0082, code:
            r4 = r4 + 1;
            r5 = (r5 * 10) + (r11.b - 48);
            r3 = r3 - 1;
     */
    /* JADX WARNING: Missing block: B:34:0x008d, code:
            r11.b = f();
     */
    /* JADX WARNING: Missing block: B:35:0x0095, code:
            switch(r11.b) {
                case 48: goto L_0x0080;
                case 49: goto L_0x0080;
                case 50: goto L_0x0080;
                case 51: goto L_0x0080;
                case 52: goto L_0x0080;
                case 53: goto L_0x0080;
                case 54: goto L_0x0080;
                case 55: goto L_0x0080;
                case 56: goto L_0x0080;
                case 57: goto L_0x0080;
                default: goto L_0x0098;
            };
     */
    /* JADX WARNING: Missing block: B:36:0x0098, code:
            r6 = r5;
     */
    /* JADX WARNING: Missing block: B:38:0x009b, code:
            switch(r11.b) {
                case 69: goto L_0x00ab;
                case com.miui.gallery.assistant.jni.filter.BaiduSceneResult.SHOOTING :int: goto L_0x00ab;
                default: goto L_0x009e;
            };
     */
    /* JADX WARNING: Missing block: B:39:0x009e, code:
            if (r2 != 0) goto L_0x00a1;
     */
    /* JADX WARNING: Missing block: B:40:0x00a0, code:
            r1 = -r1;
     */
    /* JADX WARNING: Missing block: B:41:0x00a1, code:
            r1 = r1 + r3;
     */
    /* JADX WARNING: Missing block: B:42:0x00a2, code:
            if (r0 != 0) goto L_0x00a5;
     */
    /* JADX WARNING: Missing block: B:43:0x00a4, code:
            r6 = -r6;
     */
    /* JADX WARNING: Missing block: B:45:0x00ab, code:
            r11.b = f();
     */
    /* JADX WARNING: Missing block: B:46:0x00b3, code:
            switch(r11.b) {
                case 43: goto L_0x00bf;
                case 44: goto L_0x00b6;
                case 45: goto L_0x00be;
                case 46: goto L_0x00b6;
                case 47: goto L_0x00b6;
                case 48: goto L_0x00d2;
                case 49: goto L_0x00d2;
                case 50: goto L_0x00d2;
                case 51: goto L_0x00d2;
                case 52: goto L_0x00d2;
                case 53: goto L_0x00d2;
                case 54: goto L_0x00d2;
                case 55: goto L_0x00d2;
                case 56: goto L_0x00d2;
                case 57: goto L_0x00d2;
                default: goto L_0x00b6;
            };
     */
    /* JADX WARNING: Missing block: B:47:0x00b6, code:
            a(r11.b);
     */
    /* JADX WARNING: Missing block: B:48:0x00be, code:
            r2 = 0;
     */
    /* JADX WARNING: Missing block: B:49:0x00bf, code:
            r11.b = f();
     */
    /* JADX WARNING: Missing block: B:50:0x00c7, code:
            switch(r11.b) {
                case 48: goto L_0x00d2;
                case 49: goto L_0x00d2;
                case 50: goto L_0x00d2;
                case 51: goto L_0x00d2;
                case 52: goto L_0x00d2;
                case 53: goto L_0x00d2;
                case 54: goto L_0x00d2;
                case 55: goto L_0x00d2;
                case 56: goto L_0x00d2;
                case 57: goto L_0x00d2;
                default: goto L_0x00ca;
            };
     */
    /* JADX WARNING: Missing block: B:51:0x00ca, code:
            a(r11.b);
     */
    /* JADX WARNING: Missing block: B:53:0x00d4, code:
            switch(r11.b) {
                case 48: goto L_0x00d8;
                case 49: goto L_0x00fe;
                case 50: goto L_0x00fe;
                case 51: goto L_0x00fe;
                case 52: goto L_0x00fe;
                case 53: goto L_0x00fe;
                case 54: goto L_0x00fe;
                case 55: goto L_0x00fe;
                case 56: goto L_0x00fe;
                case 57: goto L_0x00fe;
                default: goto L_0x00d7;
            };
     */
    /* JADX WARNING: Missing block: B:54:0x00d8, code:
            r11.b = f();
     */
    /* JADX WARNING: Missing block: B:55:0x00e0, code:
            switch(r11.b) {
                case 48: goto L_0x00d8;
                case 49: goto L_0x00e4;
                case 50: goto L_0x00e4;
                case 51: goto L_0x00e4;
                case 52: goto L_0x00e4;
                case 53: goto L_0x00e4;
                case 54: goto L_0x00e4;
                case 55: goto L_0x00e4;
                case 56: goto L_0x00e4;
                case 57: goto L_0x00e4;
                default: goto L_0x00e3;
            };
     */
    /* JADX WARNING: Missing block: B:56:0x00e4, code:
            r4 = 0;
     */
    /* JADX WARNING: Missing block: B:58:0x00e6, code:
            if (r1 >= 3) goto L_0x00f1;
     */
    /* JADX WARNING: Missing block: B:59:0x00e8, code:
            r1 = r1 + 1;
            r4 = (r4 * 10) + (r11.b - 48);
     */
    /* JADX WARNING: Missing block: B:60:0x00f1, code:
            r11.b = f();
     */
    /* JADX WARNING: Missing block: B:61:0x00f9, code:
            switch(r11.b) {
                case 48: goto L_0x00e5;
                case 49: goto L_0x00e5;
                case 50: goto L_0x00e5;
                case 51: goto L_0x00e5;
                case 52: goto L_0x00e5;
                case 53: goto L_0x00e5;
                case 54: goto L_0x00e5;
                case 55: goto L_0x00e5;
                case 56: goto L_0x00e5;
                case 57: goto L_0x00e5;
                default: goto L_0x00fc;
            };
     */
    /* JADX WARNING: Missing block: B:62:0x00fc, code:
            r1 = r4;
     */
    /* JADX WARNING: Missing block: B:63:0x00fe, code:
            r4 = 0;
     */
    /* JADX WARNING: Missing block: B:64:0x0100, code:
            r4 = r5;
            r5 = r6;
     */
    /* JADX WARNING: Missing block: B:77:?, code:
            return 0.0f;
     */
    /* JADX WARNING: Missing block: B:78:?, code:
            return 0.0f;
     */
    /* JADX WARNING: Missing block: B:79:?, code:
            return 0.0f;
     */
    /* JADX WARNING: Missing block: B:80:?, code:
            return a(r6, r1);
     */
    /* JADX WARNING: Missing block: B:81:?, code:
            return 0.0f;
     */
    /* JADX WARNING: Missing block: B:82:?, code:
            return 0.0f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public float d() {
        int i = 1;
        int i2 = 0;
        int i3;
        switch (this.b) {
            case '+':
                i3 = 1;
                break;
            case '-':
                i3 = 0;
                break;
            default:
                i3 = 1;
                break;
        }
        this.b = f();
        switch (this.b) {
            case '.':
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                break;
            case '0':
                break;
            case '1':
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
            case '8':
            case '9':
                break;
            default:
                return Float.NaN;
        }
    }

    private void a(char c) {
        throw new RuntimeException("Unexpected char '" + c + "'.");
    }

    public static float a(int i, int i2) {
        if (i2 < -125 || i == 0) {
            return 0.0f;
        }
        if (i2 >= 128) {
            return i > 0 ? Float.POSITIVE_INFINITY : Float.NEGATIVE_INFINITY;
        } else {
            if (i2 == 0) {
                return (float) i;
            }
            if (i >= 67108864) {
                i++;
            }
            return (float) (i2 > 0 ? ((double) i) * e[i2] : ((double) i) / e[-i2]);
        }
    }

    static {
        for (int i = 0; i < e.length; i++) {
            e[i] = Math.pow(10.0d, (double) i);
        }
    }

    public float e() {
        a();
        float d = d();
        b();
        return d;
    }
}
