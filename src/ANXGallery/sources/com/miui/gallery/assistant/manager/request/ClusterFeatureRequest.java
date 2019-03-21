package com.miui.gallery.assistant.manager.request;

import com.miui.gallery.assistant.algorithm.AlgorithmFactroy;
import com.miui.gallery.assistant.algorithm.ClusterAlgorithm;
import com.miui.gallery.assistant.library.LibraryManager;
import com.miui.gallery.assistant.manager.AlgorithmRequest.Priority;
import com.miui.gallery.assistant.manager.result.ClusterFeatureResult;
import com.miui.gallery.util.Log;

public class ClusterFeatureRequest extends PixelImageFeatureRequest<ClusterFeatureResult> {
    public ClusterFeatureRequest(Priority priority, long imageId, String sha1, long imageDateTime, byte[] pixs, int width, int height) {
        super(priority, imageId, sha1, imageDateTime, pixs, width, height);
    }

    protected ClusterFeatureResult process() {
        if (LibraryManager.getInstance().loadLibrary(1004001)) {
            float[] clusterFeature = ((ClusterAlgorithm) AlgorithmFactroy.getAlgorithmByFlag(4)).extractFeature(this.mPixs, this.mWidth, this.mHeight);
            if (clusterFeature == null) {
                return new ClusterFeatureResult(1, this.mImageId);
            }
            Log.d(this.TAG, "ClusterAlgorithm execute success!");
            return new ClusterFeatureResult(clusterFeature, this.mImageId);
        }
        Log.d(this.TAG, "Load library %s failed", (Object) "ClusterAlgorithm");
        return new ClusterFeatureResult(2, this.mImageId);
    }
}
