package com.miui.gallery.assistant.manager.result;

import com.miui.gallery.assistant.jni.filter.SceneResult;
import com.miui.gallery.assistant.model.ImageFeature;

public class SceneFeatureResult extends ImageFeatureResult {
    private SceneResult mSceneResult;

    public SceneFeatureResult(SceneResult sceneResult, long imageId) {
        super(0, imageId);
        this.mSceneResult = sceneResult;
    }

    public SceneFeatureResult(int resultCode, long imageId) {
        super(resultCode, imageId);
    }

    public void updateImageFeature(ImageFeature feature) {
        if (feature != null) {
            feature.setSceneResult(getSceneResult());
        }
    }

    public SceneResult getSceneResult() {
        return this.mSceneResult;
    }
}
