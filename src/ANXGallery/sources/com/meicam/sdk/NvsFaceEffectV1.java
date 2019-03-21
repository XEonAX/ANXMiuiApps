package com.meicam.sdk;

public class NvsFaceEffectV1 {
    private static native void nativeDone();

    private static native void nativeSetMaxFaces(int i);

    private static native void nativeSetup(String str, byte[] bArr);

    public static void setup(String str, byte[] bArr) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetup(str, bArr);
    }

    public static void setMaxFaces(int i) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetMaxFaces(i);
    }

    public static void done() {
        NvsUtils.checkFunctionInMainThread();
        nativeDone();
    }
}
