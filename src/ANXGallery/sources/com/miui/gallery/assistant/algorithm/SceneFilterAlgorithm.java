package com.miui.gallery.assistant.algorithm;

import com.miui.gallery.assistant.jni.filter.SceneClassifyJNI;
import com.miui.gallery.assistant.jni.filter.SceneResult;
import com.miui.gallery.util.Log;

public class SceneFilterAlgorithm extends Algorithm {
    private long mNativePtr;
    private SceneClassifyJNI mSceneClassifyJNI;

    SceneFilterAlgorithm() {
        super(1003);
    }

    protected boolean onInitAlgorithm() {
        this.mSceneClassifyJNI = new SceneClassifyJNI();
        try {
            this.mNativePtr = this.mSceneClassifyJNI.nativeCreate();
            return true;
        } catch (Throwable e) {
            Log.e(this.TAG, e);
            return false;
        }
    }

    protected void onDestroyAlgorithm() {
        try {
            this.mSceneClassifyJNI.nativeDestroy(this.mNativePtr);
        } catch (Throwable e) {
            Log.e(this.TAG, e);
        }
        this.mNativePtr = 0;
    }

    public synchronized SceneResult getSceneResult(byte[] pix, int width, int height) {
        SceneResult nativeGetImageSceneCls;
        if (this.mIsNativeInitiated) {
            try {
                nativeGetImageSceneCls = this.mSceneClassifyJNI.nativeGetImageSceneCls(this.mNativePtr, pix, width, height);
            } catch (Throwable e) {
                Log.e(this.TAG, e);
            }
        }
        nativeGetImageSceneCls = null;
        return nativeGetImageSceneCls;
    }
}
