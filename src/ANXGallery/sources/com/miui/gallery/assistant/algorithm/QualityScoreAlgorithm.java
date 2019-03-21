package com.miui.gallery.assistant.algorithm;

import com.miui.gallery.assistant.jni.score.QualityScore;
import com.miui.gallery.assistant.jni.score.QualityScoreJNI;
import com.miui.gallery.util.Log;

public class QualityScoreAlgorithm extends Algorithm {
    private long mNativePtr;
    private QualityScoreJNI mQualityScoreJNI;

    QualityScoreAlgorithm() {
        super(1002001);
    }

    protected boolean onInitAlgorithm() {
        this.mQualityScoreJNI = new QualityScoreJNI();
        try {
            this.mNativePtr = this.mQualityScoreJNI.nativeCreate();
            return true;
        } catch (Throwable e) {
            Log.e(this.TAG, e);
            return false;
        }
    }

    protected void onDestroyAlgorithm() {
        try {
            this.mQualityScoreJNI.nativeDestroy(this.mNativePtr);
        } catch (Throwable e) {
            Log.e(this.TAG, e);
        }
        this.mNativePtr = 0;
    }

    public synchronized QualityScore getBaseQualityScore(byte[] pix, int width, int height) {
        QualityScore nativeGetImageIqa;
        if (this.mIsNativeInitiated) {
            try {
                nativeGetImageIqa = this.mQualityScoreJNI.nativeGetImageIqa(this.mNativePtr, pix, width, height);
            } catch (Throwable e) {
                Log.e(this.TAG, e);
            }
        }
        nativeGetImageIqa = null;
        return nativeGetImageIqa;
    }
}
