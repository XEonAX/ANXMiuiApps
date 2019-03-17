package com.alibaba.mtl.log.d;

/* compiled from: RC4 */
public class n {

    /* compiled from: RC4 */
    private static class a {
        public int[] d;
        public int x;
        public int y;

        private a() {
            this.d = new int[256];
        }
    }

    public static byte[] a(byte[] bArr, String str) {
        if (!(bArr == null || str == null)) {
            a a = a(str);
            if (a != null) {
                return a(bArr, a);
            }
        }
        return null;
    }

    private static a a(String str) {
        int i = 0;
        if (str == null) {
            return null;
        }
        int i2;
        a aVar = new a();
        for (i2 = 0; i2 < 256; i2++) {
            aVar.d[i2] = i2;
        }
        aVar.x = 0;
        aVar.y = 0;
        i2 = 0;
        int i3 = 0;
        while (i < 256) {
            try {
                i2 = (i2 + (str.charAt(i3) + aVar.d[i])) % 256;
                int i4 = aVar.d[i];
                aVar.d[i] = aVar.d[i2];
                aVar.d[i2] = i4;
                i3 = (i3 + 1) % str.length();
                i++;
            } catch (Exception e) {
                return null;
            }
        }
        return aVar;
    }

    private static byte[] a(byte[] bArr, a aVar) {
        if (bArr == null || aVar == null) {
            return null;
        }
        int i = aVar.x;
        int i2 = aVar.y;
        for (int i3 = 0; i3 < bArr.length; i3++) {
            i = (i + 1) % 256;
            i2 = (i2 + aVar.d[i]) % 256;
            int i4 = aVar.d[i];
            aVar.d[i] = aVar.d[i2];
            aVar.d[i2] = i4;
            i4 = (aVar.d[i] + aVar.d[i2]) % 256;
            bArr[i3] = (byte) (aVar.d[i4] ^ bArr[i3]);
        }
        aVar.x = i;
        aVar.y = i2;
        return bArr;
    }
}
