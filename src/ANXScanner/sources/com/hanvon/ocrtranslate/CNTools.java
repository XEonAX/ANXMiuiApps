package com.hanvon.ocrtranslate;

public class CNTools {
    static {
        System.loadLibrary("hwocr_cntools_shared");
    }

    public static native String nativeGetLongestSubstr(String str, int i);
}
