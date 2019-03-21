package com.google.common.base;

public final class Strings {
    public static String nullToEmpty(String string) {
        return string == null ? "" : string;
    }
}
