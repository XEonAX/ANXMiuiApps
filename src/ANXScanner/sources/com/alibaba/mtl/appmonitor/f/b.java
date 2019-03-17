package com.alibaba.mtl.appmonitor.f;

/* compiled from: StringUtils */
public class b {
    public static boolean c(String str) {
        return !d(str);
    }

    public static boolean d(String str) {
        if (str != null) {
            int length = str.length();
            if (length != 0) {
                for (int i = 0; i < length; i++) {
                    if (!Character.isWhitespace(str.charAt(i))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return true;
    }
}
