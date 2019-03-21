package com.miui.gallery.assistant.jni.filter;

public class SceneClassifyJNI {
    public native long nativeCreate();

    public native void nativeDestroy(long j);

    public native SceneResult nativeGetImageSceneCls(long j, byte[] bArr, int i, int i2);
}
