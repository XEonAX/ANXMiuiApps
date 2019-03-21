package com.miui.gallery.assistant.model;

import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

public class ImageFeatureGroup<T extends ImageFeatureItem> {
    private T mBestImage;
    private final List<T> mImageFeatures = new LinkedList();

    ImageFeatureGroup(Collection<T> childrens) {
        this.mImageFeatures.addAll(childrens);
        for (T imageFeatureItem : childrens) {
            if (this.mBestImage == null) {
                this.mBestImage = imageFeatureItem;
            } else if (!(this.mBestImage.getImageFeature() == null || imageFeatureItem.getImageFeature() == null || this.mBestImage.getImageFeature().getScore() >= imageFeatureItem.getImageFeature().getScore())) {
                this.mBestImage = imageFeatureItem;
            }
        }
    }

    T getBestImage() {
        return this.mBestImage;
    }
}
