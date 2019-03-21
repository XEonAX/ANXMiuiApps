package com.miui.gallery.assistant.manager.result;

import com.miui.gallery.assistant.model.ImageFeature;

public abstract class ImageFeatureResult extends AlgorithmResult {
    private final long mImageId;

    public abstract void updateImageFeature(ImageFeature imageFeature);

    public ImageFeatureResult(int resultCode, long imageId) {
        super(resultCode);
        this.mImageId = imageId;
    }
}
