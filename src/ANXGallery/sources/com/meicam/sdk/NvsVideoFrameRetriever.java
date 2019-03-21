package com.meicam.sdk;

import android.graphics.Bitmap;

public class NvsVideoFrameRetriever {
    public static final int VIDEO_FRAME_HEIGHT_GRADE_360 = 0;
    public static final int VIDEO_FRAME_HEIGHT_GRADE_480 = 1;
    public static final int VIDEO_FRAME_HEIGHT_GRADE_720 = 2;
    long m_internalObject = 0;

    private native void nativeCleanup(long j);

    private native void nativeCreateVideoRetrieverReader(String str);

    private native Bitmap nativeGetFrameAtTime(long j, long j2, int i, int i2);

    public Bitmap getFrameAtTime(long j, int i) {
        if (this.m_internalObject == 0) {
            return null;
        }
        return nativeGetFrameAtTime(this.m_internalObject, j, i, 0);
    }

    public void release() {
        if (this.m_internalObject != 0) {
            nativeCleanup(this.m_internalObject);
            this.m_internalObject = 0;
        }
    }

    public Bitmap getFrameAtTimeWithCustomVideoFrameHeight(long j, int i) {
        if (this.m_internalObject == 0 || i <= 0) {
            return null;
        }
        return nativeGetFrameAtTime(this.m_internalObject, j, 0, i);
    }

    NvsVideoFrameRetriever(String str) {
        nativeCreateVideoRetrieverReader(str);
    }

    protected void finalize() throws Throwable {
        if (this.m_internalObject != 0) {
            nativeCleanup(this.m_internalObject);
            this.m_internalObject = 0;
        }
        super.finalize();
    }
}
