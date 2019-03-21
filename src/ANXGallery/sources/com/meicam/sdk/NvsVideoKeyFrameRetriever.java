package com.meicam.sdk;

import android.graphics.Bitmap;

public class NvsVideoKeyFrameRetriever {
    long m_internalObject = 0;
    int m_videoFrameHeight;

    public static class KeyFrame {
        public Bitmap bitmap;
        public long timestamp;
    }

    private native void nativeCleanup(long j);

    private native void nativeCreateVideoRetrieverReader(String str, boolean z);

    private native KeyFrame nativeGetNextKeyFrame(long j, int i);

    private native void nativeStartGettingKeyFrame(long j, long j2);

    NvsVideoKeyFrameRetriever(String str, int i, boolean z) {
        nativeCreateVideoRetrieverReader(str, z);
        this.m_videoFrameHeight = i;
    }

    public void release() {
        if (this.m_internalObject != 0) {
            nativeCleanup(this.m_internalObject);
            this.m_internalObject = 0;
        }
    }

    public void startGettingKeyFrame(long j) {
        nativeStartGettingKeyFrame(this.m_internalObject, j);
    }

    public KeyFrame getNextKeyFrame() {
        if (this.m_internalObject == 0) {
            return null;
        }
        return nativeGetNextKeyFrame(this.m_internalObject, this.m_videoFrameHeight);
    }

    protected void finalize() throws Throwable {
        if (this.m_internalObject != 0) {
            nativeCleanup(this.m_internalObject);
            this.m_internalObject = 0;
        }
        super.finalize();
    }
}
