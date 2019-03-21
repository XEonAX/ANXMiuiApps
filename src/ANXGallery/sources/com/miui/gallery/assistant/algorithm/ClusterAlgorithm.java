package com.miui.gallery.assistant.algorithm;

import com.miui.gallery.assistant.jni.cluster.Cluster;
import com.miui.gallery.assistant.jni.cluster.ImageClusterJNI;
import com.miui.gallery.util.Log;
import java.util.ArrayList;

public class ClusterAlgorithm extends Algorithm {
    ImageClusterJNI mImageClusterJNI;
    long mNativePtr;

    ClusterAlgorithm() {
        super(1004001);
    }

    protected boolean onInitAlgorithm() {
        this.mImageClusterJNI = new ImageClusterJNI();
        try {
            this.mNativePtr = this.mImageClusterJNI.nativeCreate(0.741f, 3600000);
            return true;
        } catch (Throwable e) {
            Log.e(this.TAG, e);
            return false;
        }
    }

    protected void onDestroyAlgorithm() {
        try {
            this.mImageClusterJNI.nativeDestroy(this.mNativePtr);
        } catch (Throwable e) {
            Log.e(this.TAG, e);
        }
        this.mNativePtr = 0;
    }

    public synchronized float[] extractFeature(byte[] pix, int width, int height) {
        float[] extractFeature;
        if (this.mIsNativeInitiated) {
            extractFeature = this.mImageClusterJNI.extractFeature(this.mNativePtr, pix, width, height);
        } else {
            extractFeature = null;
        }
        return extractFeature;
    }

    public synchronized ArrayList<Cluster> getClusterResult(float[] features, long[] time, long[] key, int imageCount) {
        ArrayList<Cluster> clusterResult;
        if (this.mIsNativeInitiated) {
            clusterResult = this.mImageClusterJNI.getClusterResult(this.mNativePtr, features, time, key, imageCount, 1024);
        } else {
            clusterResult = null;
        }
        return clusterResult;
    }
}
