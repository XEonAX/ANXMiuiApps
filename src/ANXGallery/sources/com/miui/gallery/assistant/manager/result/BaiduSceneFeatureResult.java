package com.miui.gallery.assistant.manager.result;

import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.assistant.model.ImageFeature;

public class BaiduSceneFeatureResult extends ImageFeatureResult {
    private BaiduSceneResult mBaiduSceneResult;

    public BaiduSceneFeatureResult(BaiduSceneResult sceneResult, long imageId) {
        super(0, imageId);
        this.mBaiduSceneResult = sceneResult;
    }

    public BaiduSceneFeatureResult(int resultCode, long imageId) {
        super(resultCode, imageId);
    }

    public void updateImageFeature(ImageFeature feature) {
        if (feature != null) {
            feature.setSceneResult(getBaiduSceneResult());
        }
    }

    public BaiduSceneResult getBaiduSceneResult() {
        return this.mBaiduSceneResult;
    }
}
