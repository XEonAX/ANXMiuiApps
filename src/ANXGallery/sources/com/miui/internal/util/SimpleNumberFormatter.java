package com.miui.internal.util;

import java.text.DecimalFormatSymbols;
import java.util.Locale;
import miui.util.C0014Pools;

public class SimpleNumberFormatter {
    private static Locale jA = Locale.getDefault();
    private static char jB = new DecimalFormatSymbols(jA).getZeroDigit();

    public static String format(int i) {
        return format(-1, i);
    }

    public static String format(int i, int i2) {
        char a = a(Locale.getDefault());
        String a2 = a(i, i2);
        if (a != '0') {
            return a(a, a2);
        }
        return a2;
    }

    private static String a(int i, int i2) {
        StringBuilder stringBuilder = (StringBuilder) C0014Pools.getStringBuilderPool().acquire();
        if (i2 < 0) {
            i2 = -i2;
            i--;
            stringBuilder.append('-');
        }
        int length;
        if (i2 >= 10000) {
            String num = Integer.toString(i2);
            for (length = num.length(); length < i; length++) {
                stringBuilder.append('0');
            }
            stringBuilder.append(num);
        } else {
            length = i2 >= 1000 ? 4 : i2 >= 100 ? 3 : i2 >= 10 ? 2 : 1;
            while (length < i) {
                stringBuilder.append('0');
                length++;
            }
            stringBuilder.append(i2);
        }
        String stringBuilder2 = stringBuilder.toString();
        C0014Pools.getStringBuilderPool().release(stringBuilder);
        return stringBuilder2;
    }

    private static String a(char c, String str) {
        int length = str.length();
        int i = c - 48;
        StringBuilder stringBuilder = (StringBuilder) C0014Pools.getStringBuilderPool().acquire();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt >= '0' && charAt <= '9') {
                charAt = (char) (charAt + i);
            }
            stringBuilder.append(charAt);
        }
        String stringBuilder2 = stringBuilder.toString();
        C0014Pools.getStringBuilderPool().release(stringBuilder);
        return stringBuilder2;
    }

    private static char a(Locale locale) {
        if (locale != null) {
            if (!locale.equals(jA)) {
                jB = new DecimalFormatSymbols(locale).getZeroDigit();
                jA = locale;
            }
            return jB;
        }
        throw new NullPointerException("locale == null");
    }
}
