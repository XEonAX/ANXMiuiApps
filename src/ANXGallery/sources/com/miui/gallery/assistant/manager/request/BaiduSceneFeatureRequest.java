package com.miui.gallery.assistant.manager.request;

import android.graphics.Bitmap;
import com.baidu.vis.ClassIfication.Response;
import com.miui.gallery.assistant.algorithm.AlgorithmFactroy;
import com.miui.gallery.assistant.algorithm.BaiduSceneFilterAlgorithm;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.assistant.library.LibraryManager;
import com.miui.gallery.assistant.manager.AlgorithmRequest.Priority;
import com.miui.gallery.assistant.manager.result.BaiduSceneFeatureResult;
import com.miui.gallery.util.Log;

public class BaiduSceneFeatureRequest extends ImageFeatureRequest<BaiduSceneFeatureResult> {
    private final Bitmap mBitmap;

    public BaiduSceneFeatureRequest(Priority priority, long imageId, String sha1, long imageDateTime, Bitmap bitmap) {
        super(priority, imageId, sha1, imageDateTime);
        this.mBitmap = bitmap;
    }

    protected BaiduSceneFeatureResult process() {
        if (LibraryManager.getInstance().loadLibrary(1005)) {
            Response response = ((BaiduSceneFilterAlgorithm) AlgorithmFactroy.getAlgorithmByFlag(16)).predict(this.mBitmap);
            if (response != null) {
                return new BaiduSceneFeatureResult(new BaiduSceneResult(response.classNum, response.classProb), this.mImageId);
            }
            return new BaiduSceneFeatureResult(1, this.mImageId);
        }
        Log.d(this.TAG, "Load library %s failed", (Object) "BaiduSceneFilterAlgorithm");
        return new BaiduSceneFeatureResult(2, this.mImageId);
    }
}
