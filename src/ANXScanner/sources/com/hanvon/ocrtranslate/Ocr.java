package com.hanvon.ocrtranslate;

public class Ocr {
    static {
        System.loadLibrary("hw_instanttrans");
    }

    public static native int instantTransArea(String str, String str2, int i, int i2, int i3, byte[] bArr, int[] iArr, int i4, int i5, int i6, int i7, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6);

    public static native int instantTransPoint(String str, String str2, int i, int i2, int i3, byte[] bArr, int[] iArr, int i4, int i5, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6);
}
