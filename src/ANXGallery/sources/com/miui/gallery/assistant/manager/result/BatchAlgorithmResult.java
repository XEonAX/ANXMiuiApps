package com.miui.gallery.assistant.manager.result;

import android.util.SparseArray;
import com.miui.gallery.assistant.model.ImageFeature;

public class BatchAlgorithmResult extends ImageFeatureResult {
    private final SparseArray<ImageFeatureResult> mAlgorithmResults = new SparseArray();

    public BatchAlgorithmResult(int resultCode, long imageId) {
        super(resultCode, imageId);
    }

    public void add(int algFlag, ImageFeatureResult result) {
        this.mAlgorithmResults.put(algFlag, result);
    }

    public void updateImageFeature(ImageFeature feature) {
        if (feature != null) {
            for (int i = 0; i < this.mAlgorithmResults.size(); i++) {
                ImageFeatureResult algorithmResult = (ImageFeatureResult) this.mAlgorithmResults.valueAt(i);
                if (algorithmResult != null) {
                    algorithmResult.updateImageFeature(feature);
                }
            }
        }
    }
}
