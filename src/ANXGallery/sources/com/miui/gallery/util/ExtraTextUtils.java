package com.miui.gallery.util;

public class ExtraTextUtils {
    public static boolean startsWithIgnoreCase(String src, String prefix) {
        if (src == null || prefix == null) {
            return false;
        }
        return src.toLowerCase().startsWith(prefix.toLowerCase());
    }
}
