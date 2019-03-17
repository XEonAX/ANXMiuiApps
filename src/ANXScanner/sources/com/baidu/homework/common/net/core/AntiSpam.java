package com.baidu.homework.common.net.core;

import android.content.Context;

public class AntiSpam {
    public static native String nativeGetKey(String str);

    public static native String nativeGetSign(String str);

    public static native String nativeInitAntispam(Context context, String str);

    public static native boolean nativeSetToken(Context context, String str, String str2, String str3);
}
