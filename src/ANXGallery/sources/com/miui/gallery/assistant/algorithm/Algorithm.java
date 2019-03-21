package com.miui.gallery.assistant.algorithm;

import com.miui.gallery.assistant.manager.ImageFeatureManger;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.Log;
import java.util.Map;

public abstract class Algorithm {
    public static final int FLAG_ALL = (ImageFeatureManger.isStoryFunctionEnable() ? 21 : 5);
    public static final int[] FLAG_ALL_ARRAY = (ImageFeatureManger.isStoryFunctionEnable() ? new int[]{1, 4, 16} : new int[]{1, 4});
    protected final String TAG = getClass().getSimpleName();
    private final long mAlgorithmId;
    protected volatile boolean mIsNativeInitiated = false;

    protected abstract void onDestroyAlgorithm();

    protected abstract boolean onInitAlgorithm();

    Algorithm(long algorithmId) {
        this.mAlgorithmId = algorithmId;
    }

    synchronized boolean init() {
        if (!this.mIsNativeInitiated) {
            try {
                if (onInitAlgorithm()) {
                    this.mIsNativeInitiated = true;
                }
            } catch (Error e) {
                reportAlgorithmError(e);
            }
        }
        return this.mIsNativeInitiated;
    }

    private synchronized void destroy() {
        if (this.mIsNativeInitiated) {
            try {
                onDestroyAlgorithm();
            } catch (Error e) {
                reportAlgorithmError(e);
            }
            this.mIsNativeInitiated = false;
        }
        return;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        destroy();
    }

    void reportAlgorithmError(Throwable throwable) {
        Log.e(this.TAG, throwable);
        Map<String, String> params = BaseSamplingStatHelper.generatorCommonParams();
        params.put("algorithm", getClass().getSimpleName());
        params.put("error", throwable != null ? throwable.toString() : "");
        BaseSamplingStatHelper.recordCountEvent("assistant", "assistant_algorithm_error", params);
    }
}
