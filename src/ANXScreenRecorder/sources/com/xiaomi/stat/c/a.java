package com.xiaomi.stat.c;

import android.content.Context;
import com.xiaomi.stat.C0001b;
import com.xiaomi.stat.I;
import com.xiaomi.stat.d.k;
import java.util.HashMap;
import java.util.Map.Entry;

public class a {
    private static final String a = "ClientConfigMoniter";
    private static final int b = 1;
    private static final int c = 2;
    private static final int d = 3;
    private static final int e = 4;
    private static final int f = 5;
    private static Context g = I.a();
    private static HashMap<Integer, Integer> h = new HashMap();

    static {
        h.put(Integer.valueOf(1), Integer.valueOf(1));
        h.put(Integer.valueOf(2), Integer.valueOf(2));
        h.put(Integer.valueOf(3), Integer.valueOf(4));
        h.put(Integer.valueOf(4), Integer.valueOf(8));
        h.put(Integer.valueOf(5), Integer.valueOf(16));
    }

    public static int a(String str) {
        int i = 0;
        try {
            for (Entry entry : h.entrySet()) {
                int intValue = ((Integer) entry.getKey()).intValue();
                int intValue2 = ((Integer) entry.getValue()).intValue();
                if (a(intValue, str)) {
                    intValue2 |= i;
                } else {
                    intValue2 = i;
                }
                i = intValue2;
            }
        } catch (Throwable e) {
            k.e(a, "getClientConfiguration exception", e);
        }
        return i;
    }

    private static boolean a(int i, String str) {
        switch (i) {
            case 1:
                try {
                    return C0001b.u();
                } catch (Throwable e) {
                    k.e(a, "checkSetting exception", e);
                    return false;
                }
            case 2:
                return C0001b.d(str);
            case 3:
                return k.a();
            case 5:
                return C0001b.g();
            default:
                return false;
        }
    }
}
