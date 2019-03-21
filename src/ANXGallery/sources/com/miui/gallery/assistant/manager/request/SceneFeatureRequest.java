package com.miui.gallery.assistant.manager.request;

import com.miui.gallery.assistant.algorithm.AlgorithmFactroy;
import com.miui.gallery.assistant.algorithm.SceneFilterAlgorithm;
import com.miui.gallery.assistant.jni.filter.SceneResult;
import com.miui.gallery.assistant.library.LibraryManager;
import com.miui.gallery.assistant.manager.AlgorithmRequest.Priority;
import com.miui.gallery.assistant.manager.result.SceneFeatureResult;
import com.miui.gallery.util.Log;

public class SceneFeatureRequest extends PixelImageFeatureRequest<SceneFeatureResult> {
    public SceneFeatureRequest(Priority priority, long imageId, String sha1, long imageDateTime, byte[] pixs, int width, int height) {
        super(priority, imageId, sha1, imageDateTime, pixs, width, height);
    }

    protected SceneFeatureResult process() {
        if (LibraryManager.getInstance().loadLibrary(1003)) {
            SceneResult sceneResult = ((SceneFilterAlgorithm) AlgorithmFactroy.getAlgorithmByFlag(2)).getSceneResult(this.mPixs, this.mWidth, this.mHeight);
            if (sceneResult == null) {
                return new SceneFeatureResult(1, this.mImageId);
            }
            Log.d(this.TAG, "SceneFilterAlgorithm execute success,result: %s", (Object) sceneResult);
            return new SceneFeatureResult(sceneResult, this.mImageId);
        }
        Log.d(this.TAG, "Load library %s failed", (Object) "SceneFilterAlgorithm");
        return new SceneFeatureResult(2, this.mImageId);
    }
}
