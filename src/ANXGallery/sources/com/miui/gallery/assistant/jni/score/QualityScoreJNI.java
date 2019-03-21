package com.miui.gallery.assistant.jni.score;

public class QualityScoreJNI {
    public native long nativeCreate();

    public native void nativeDestroy(long j);

    public native QualityScore nativeGetImageIqa(long j, byte[] bArr, int i, int i2);
}
