package com.miui.gallery.assistant.manager.result;

import com.miui.gallery.assistant.model.ImageFeature;

public class ClusterFeatureResult extends ImageFeatureResult {
    private float[] mClusterFeature;

    public ClusterFeatureResult(float[] clusterFeature, long imageId) {
        super(0, imageId);
        this.mClusterFeature = clusterFeature;
    }

    public ClusterFeatureResult(int resultCode, long imageId) {
        super(resultCode, imageId);
    }

    public void updateImageFeature(ImageFeature feature) {
        if (feature != null) {
            feature.setClusterFeature(getClusterFeature());
        }
    }

    public float[] getClusterFeature() {
        return this.mClusterFeature;
    }
}
