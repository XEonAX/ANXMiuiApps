package com.ali.auth.third.core.cookies;

import android.text.format.Time;
import com.alibaba.wireless.security.SecExceptionCode;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class b {
    private static final Pattern a = Pattern.compile("([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])");
    private static final Pattern b = Pattern.compile("[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})");

    private static class a {
        int a;
        int b;
        int c;

        a(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }
    }

    public static long a(String str) throws IllegalArgumentException {
        int c;
        int d;
        a e;
        int i;
        int i2 = 1;
        Matcher matcher = a.matcher(str);
        int b;
        if (matcher.find()) {
            b = b(matcher.group(1));
            c = c(matcher.group(2));
            d = d(matcher.group(3));
            e = e(matcher.group(4));
            i = b;
        } else {
            Matcher matcher2 = b.matcher(str);
            if (matcher2.find()) {
                c = c(matcher2.group(1));
                b = b(matcher2.group(2));
                a e2 = e(matcher2.group(3));
                d = d(matcher2.group(4));
                e = e2;
                i = b;
            } else {
                throw new IllegalArgumentException();
            }
        }
        if (d >= 2038) {
            d = 2038;
            c = 0;
        } else {
            i2 = i;
        }
        Time time = new Time("UTC");
        time.set(e.c, e.b, e.a, i2, c, d);
        return time.toMillis(false);
    }

    private static int b(String str) {
        return str.length() == 2 ? ((str.charAt(0) - 48) * 10) + (str.charAt(1) - 48) : str.charAt(0) - 48;
    }

    private static int c(String str) {
        switch (((Character.toLowerCase(str.charAt(0)) + Character.toLowerCase(str.charAt(1))) + Character.toLowerCase(str.charAt(2))) - 291) {
            case 9:
                return 11;
            case 10:
                return 1;
            case 22:
                return 0;
            case 26:
                return 7;
            case 29:
                return 2;
            case 32:
                return 3;
            case 35:
                return 9;
            case 36:
                return 4;
            case 37:
                return 8;
            case 40:
                return 6;
            case 42:
                return 5;
            case 48:
                return 10;
            default:
                throw new IllegalArgumentException();
        }
    }

    private static int d(String str) {
        if (str.length() != 2) {
            return str.length() == 3 ? ((((str.charAt(0) - 48) * 100) + ((str.charAt(1) - 48) * 10)) + (str.charAt(2) - 48)) + SecExceptionCode.SEC_ERROR_AVMP : str.length() == 4 ? ((((str.charAt(0) - 48) * 1000) + ((str.charAt(1) - 48) * 100)) + ((str.charAt(2) - 48) * 10)) + (str.charAt(3) - 48) : 1970;
        } else {
            int charAt = ((str.charAt(0) - 48) * 10) + (str.charAt(1) - 48);
            return charAt >= 70 ? charAt + SecExceptionCode.SEC_ERROR_AVMP : charAt + SecExceptionCode.SEC_ERROR_PAGETRACK;
        }
    }

    private static a e(String str) {
        int i;
        int charAt = str.charAt(0) - 48;
        if (str.charAt(1) != ':') {
            i = 2;
            charAt = (charAt * 10) + (str.charAt(1) - 48);
        } else {
            i = 1;
        }
        i++;
        int i2 = i + 1;
        i = ((str.charAt(i) - 48) * 10) + (str.charAt(i2) - 48);
        i2 = (i2 + 1) + 1;
        int i3 = i2 + 1;
        int i4 = i3 + 1;
        return new a(charAt, i, ((str.charAt(i2) - 48) * 10) + (str.charAt(i3) - 48));
    }
}
