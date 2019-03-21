package com.miui.gallery.assistant.manager.request;

import android.graphics.Bitmap;
import com.miui.gallery.assistant.algorithm.Algorithm;
import com.miui.gallery.assistant.manager.AlgorithmRequest.Priority;
import com.miui.gallery.assistant.manager.result.BatchAlgorithmResult;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.assistant.FlagUtil;
import com.miui.gallery.util.assistant.ImageUtil;

public class BatchImageAlgorithmRequest extends ImageFeatureRequest<BatchAlgorithmResult> {
    private final int mAlgorithmFlags;
    private final Bitmap mBitmap;
    private final int mHeight = this.mBitmap.getHeight();
    private byte[] mPixs;
    private final int mWidth = this.mBitmap.getWidth();

    public BatchImageAlgorithmRequest(Priority priority, long imageId, String sha1, long imageDateTime, Bitmap bitmap, int algorithmFlags) {
        super(priority, imageId, sha1, imageDateTime);
        this.mAlgorithmFlags = algorithmFlags;
        this.mBitmap = bitmap;
    }

    protected BatchAlgorithmResult process() {
        int i = 0;
        this.mPixs = ImageUtil.getPixelsBGR(this.mBitmap);
        BatchAlgorithmResult batchAlgorithmResult = new BatchAlgorithmResult(0, this.mImageId);
        int[] iArr = Algorithm.FLAG_ALL_ARRAY;
        int length = iArr.length;
        while (i < length) {
            int flag = iArr[i];
            if (FlagUtil.hasFlag(this.mAlgorithmFlags, flag)) {
                ImageFeatureRequest algorithmRequest = getAlgorithmRequestByFlag(flag);
                if (algorithmRequest != null) {
                    long start = System.currentTimeMillis();
                    batchAlgorithmResult.add(flag, algorithmRequest.process());
                    Log.d(this.TAG, "%s AlgorithmRequest process using time %d ms", algorithmRequest.getClass().getSimpleName(), Long.valueOf(System.currentTimeMillis() - start));
                }
            }
            i++;
        }
        return batchAlgorithmResult;
    }

    private ImageFeatureRequest getAlgorithmRequestByFlag(int flag) {
        if (FlagUtil.hasFlag(flag, 1)) {
            return new QualityFeatureRequest(getPriority(), this.mImageId, this.mSha1, this.mImageDateTime, this.mPixs, this.mWidth, this.mHeight);
        }
        if (FlagUtil.hasFlag(flag, 2)) {
            return new SceneFeatureRequest(getPriority(), this.mImageId, this.mSha1, this.mImageDateTime, this.mPixs, this.mWidth, this.mHeight);
        }
        if (FlagUtil.hasFlag(flag, 4)) {
            return new ClusterFeatureRequest(getPriority(), this.mImageId, this.mSha1, this.mImageDateTime, this.mPixs, this.mWidth, this.mHeight);
        }
        if (FlagUtil.hasFlag(flag, 16)) {
            return new BaiduSceneFeatureRequest(getPriority(), this.mImageId, this.mSha1, this.mImageDateTime, this.mBitmap);
        }
        return null;
    }
}
