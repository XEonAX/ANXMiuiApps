package com.miui.gallery.util.gifdecoder;

import android.graphics.Bitmap;

public class NSGif {
    private final int mFrameCount;
    private final int mHeight;
    private long mInstance;
    private final int mWidth;

    private static native long nativeCreate(String str);

    private static native long nativeCreate(byte[] bArr, int i, int i2);

    private static native boolean nativeDecodeFrame(long j, int i);

    private static native int nativeDestroy(long j);

    private static native int nativeGetFrameCount(long j);

    private static native int nativeGetFrameDelay(long j, int i);

    private static native int nativeGetHeight(long j);

    private static native int nativeGetWidth(long j);

    private static native boolean nativeWriteTo(long j, Bitmap bitmap);

    private NSGif(long instance) {
        this.mInstance = instance;
        this.mWidth = nativeGetWidth(instance);
        this.mHeight = nativeGetHeight(instance);
        this.mFrameCount = nativeGetFrameCount(instance);
    }

    public static NSGif create(String path) {
        long inst = nativeCreate(path);
        if (inst != 0) {
            return new NSGif(inst);
        }
        return null;
    }

    public static NSGif create(byte[] data, int offset, int length) {
        long inst = nativeCreate(data, offset, length);
        if (inst != 0) {
            return new NSGif(inst);
        }
        return null;
    }

    public void close() {
        this.mInstance = (long) nativeDestroy(this.mInstance);
    }

    protected void finalize() throws Throwable {
        close();
        super.finalize();
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getFrameCount() {
        return this.mFrameCount;
    }

    public int getFrameDelay(int frameIndex) {
        int delay = nativeGetFrameDelay(this.mInstance, frameIndex);
        if (delay <= 0) {
            return 100;
        }
        return delay * 10;
    }

    public boolean decodeFrame(int frameIndex) {
        return nativeDecodeFrame(this.mInstance, frameIndex);
    }

    public boolean writeTo(Bitmap bitmap) {
        return nativeWriteTo(this.mInstance, bitmap);
    }
}
