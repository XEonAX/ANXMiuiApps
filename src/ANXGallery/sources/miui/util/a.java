package miui.util;

class a {
    static final int[] Hx = new int[0];
    static final long[] Hy = new long[0];
    static final Object[] Hz = new Object[0];

    protected a() throws InstantiationException {
        throw new InstantiationException("Cannot instantiate utility class");
    }

    public static int U(int i) {
        return W(i * 4) / 4;
    }

    public static int V(int i) {
        return W(i * 8) / 8;
    }

    public static int W(int i) {
        for (int i2 = 4; i2 < 32; i2++) {
            int i3 = (1 << i2) - 12;
            if (i <= i3) {
                return i3;
            }
        }
        return i;
    }

    public static boolean c(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    static int a(int[] iArr, int i, int i2) {
        i--;
        int i3 = 0;
        while (i3 <= i) {
            int i4 = (i3 + i) >>> 1;
            int i5 = iArr[i4];
            if (i5 < i2) {
                i3 = i4 + 1;
            } else if (i5 <= i2) {
                return i4;
            } else {
                i = i4 - 1;
            }
        }
        return ~i3;
    }

    static int a(long[] jArr, int i, long j) {
        i--;
        int i2 = 0;
        while (i2 <= i) {
            int i3 = (i2 + i) >>> 1;
            int i4 = (jArr[i3] > j ? 1 : (jArr[i3] == j ? 0 : -1));
            if (i4 < 0) {
                i2 = i3 + 1;
            } else if (i4 <= 0) {
                return i3;
            } else {
                i = i3 - 1;
            }
        }
        return ~i2;
    }
}
