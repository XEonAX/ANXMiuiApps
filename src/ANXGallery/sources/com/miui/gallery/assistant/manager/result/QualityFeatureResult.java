package com.miui.gallery.assistant.manager.result;

import com.miui.gallery.assistant.jni.score.QualityScore;
import com.miui.gallery.assistant.model.ImageFeature;

public class QualityFeatureResult extends ImageFeatureResult {
    private QualityScore mQualityScore;

    public QualityFeatureResult(QualityScore qualityScore, long imageId) {
        super(0, imageId);
        this.mQualityScore = qualityScore;
    }

    public QualityFeatureResult(int resultCode, long imageId) {
        super(resultCode, imageId);
    }

    public void updateImageFeature(ImageFeature feature) {
        if (feature != null) {
            feature.setQualityScore(getQualityScore());
        }
    }

    public QualityScore getQualityScore() {
        return this.mQualityScore;
    }
}
