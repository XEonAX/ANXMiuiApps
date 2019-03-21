package com.miui.gallery.assistant.manager.request;

import com.miui.gallery.assistant.algorithm.AlgorithmFactroy;
import com.miui.gallery.assistant.algorithm.QualityScoreAlgorithm;
import com.miui.gallery.assistant.jni.score.QualityScore;
import com.miui.gallery.assistant.library.LibraryManager;
import com.miui.gallery.assistant.manager.AlgorithmRequest.Priority;
import com.miui.gallery.assistant.manager.result.QualityFeatureResult;
import com.miui.gallery.util.Log;

public class QualityFeatureRequest extends PixelImageFeatureRequest<QualityFeatureResult> {
    public QualityFeatureRequest(Priority priority, long imageId, String sha1, long imageDateTime, byte[] pixs, int width, int height) {
        super(priority, imageId, sha1, imageDateTime, pixs, width, height);
    }

    protected QualityFeatureResult process() {
        if (LibraryManager.getInstance().loadLibrary(1002001)) {
            QualityScore qualityScore = ((QualityScoreAlgorithm) AlgorithmFactroy.getAlgorithmByFlag(1)).getBaseQualityScore(this.mPixs, this.mWidth, this.mHeight);
            if (qualityScore == null) {
                return new QualityFeatureResult(1, this.mImageId);
            }
            Log.d(this.TAG, "QualityScoreAlgorithm execute success,result: %s", (Object) qualityScore);
            return new QualityFeatureResult(qualityScore, this.mImageId);
        }
        Log.d(this.TAG, "Load library %s failed", (Object) "QualityScoreAlgorithm");
        return new QualityFeatureResult(2, this.mImageId);
    }
}
