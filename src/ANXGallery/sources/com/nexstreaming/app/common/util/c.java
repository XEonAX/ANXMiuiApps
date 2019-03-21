package com.nexstreaming.app.common.util;

/* compiled from: ColorUtil */
public class c {
    public static String a(int i) {
        return String.format("#%08X", new Object[]{Integer.valueOf((i >>> 24) | (i << 8))});
    }

    public static int a(String str) {
        String trim = str.trim();
        if (trim.startsWith("#")) {
            trim = trim.substring(1).trim();
            long parseLong;
            if (trim.length() == 3) {
                parseLong = Long.parseLong(trim, 16);
                return ((int) (((parseLong & 3840) << 12) | (((15 & parseLong) << 4) | ((240 & parseLong) << 8)))) | -16777216;
            } else if (trim.length() == 6) {
                return ((int) Long.parseLong(trim, 16)) | -16777216;
            } else {
                if (trim.length() < 8) {
                    return 0;
                }
                parseLong = Long.parseLong(trim, 16);
                return (int) (((parseLong & 255) << 24) | (parseLong >> 8));
            }
        }
        String[] split = trim.trim().split(" ");
        int i = 2;
        int i2 = 0;
        for (String trim2 : split) {
            String trim22 = trim22.trim();
            if (trim22.length() >= 1) {
                int parseFloat = (int) (Float.parseFloat(trim22) * 255.0f);
                if (parseFloat > 255) {
                    parseFloat = 255;
                }
                if (parseFloat < 0) {
                    parseFloat = 0;
                }
                if (i < 0) {
                    i2 |= parseFloat << 24;
                    break;
                }
                i2 |= parseFloat << (i * 8);
                i--;
            }
        }
        return i2;
    }
}
