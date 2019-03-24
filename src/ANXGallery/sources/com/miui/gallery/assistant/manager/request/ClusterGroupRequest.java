package com.miui.gallery.assistant.manager.request;

import android.content.ContentValues;
import android.text.TextUtils;
import android.util.LongSparseArray;
import com.miui.gallery.assistant.algorithm.AlgorithmFactroy;
import com.miui.gallery.assistant.algorithm.ClusterAlgorithm;
import com.miui.gallery.assistant.cache.ImageFeatureCacheManager;
import com.miui.gallery.assistant.jni.cluster.Cluster;
import com.miui.gallery.assistant.library.LibraryManager;
import com.miui.gallery.assistant.manager.AlgorithmRequest;
import com.miui.gallery.assistant.manager.AlgorithmRequest.Priority;
import com.miui.gallery.assistant.manager.result.ClusteGroupResult;
import com.miui.gallery.assistant.model.ImageFeature;
import com.miui.gallery.assistant.model.ImageFeatureItem;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import java.util.ArrayList;
import java.util.List;
import miui.text.ExtraTextUtils;

public class ClusterGroupRequest<E extends ImageFeatureItem> extends AlgorithmRequest<ClusteGroupResult> {
    private final List<E> mImageFeatureItems;
    private ImageFeature[] mImageFeatures;
    private final boolean mSaveResult;

    public ClusterGroupRequest(Priority priority, List<E> imageFeatureItems, boolean saveRuslt) {
        super(priority);
        this.mImageFeatureItems = imageFeatureItems;
        this.mSaveResult = saveRuslt;
    }

    protected ClusteGroupResult process() {
        if (!BaseMiscUtil.isValid(this.mImageFeatureItems)) {
            return new ClusteGroupResult(3);
        }
        int i;
        ImageFeature imageFeature;
        Log.d(this.TAG, "Process %d images", Integer.valueOf(this.mImageFeatureItems.size()));
        int inputCount = 0;
        for (i = 0; i < this.mImageFeatureItems.size(); i++) {
            imageFeature = ((ImageFeatureItem) this.mImageFeatureItems.get(i)).getImageFeature();
            if (!(imageFeature == null || imageFeature.getClusterFeature() == null)) {
                inputCount++;
            }
        }
        Log.d(this.TAG, "Valid image count:%d", Integer.valueOf(inputCount));
        float[] featureArray = new float[(inputCount * 1024)];
        long[] timeArray = new long[inputCount];
        long[] keyArray = new long[inputCount];
        this.mImageFeatures = new ImageFeature[inputCount];
        int j = 0;
        for (i = 0; i < this.mImageFeatureItems.size() && j < inputCount; i++) {
            imageFeature = ((ImageFeatureItem) this.mImageFeatureItems.get(i)).getImageFeature();
            if (!(imageFeature == null || imageFeature.getClusterFeature() == null)) {
                this.mImageFeatures[j] = imageFeature;
                System.arraycopy(imageFeature.getClusterFeature(), 0, featureArray, j * 1024, 1024);
                timeArray[j] = ((ImageFeatureItem) this.mImageFeatureItems.get(i)).getDateTime();
                keyArray[j] = imageFeature.getImageId();
                j++;
            }
        }
        if (LibraryManager.getInstance().loadLibrary(1004001)) {
            ArrayList clusters = ((ClusterAlgorithm) AlgorithmFactroy.getAlgorithmByFlag(8)).getClusterResult(featureArray, timeArray, keyArray, keyArray.length);
            if (!BaseMiscUtil.isValid(clusters)) {
                return new ClusteGroupResult(1);
            }
            Log.d(this.TAG, "ClusterAlgorithm execute success!");
            return new ClusteGroupResult(clusters);
        }
        Log.d(this.TAG, "Load library %s failed", (Object) "ClusterAlgorithm");
        return new ClusteGroupResult(2);
    }

    protected void onSaveResult(ClusteGroupResult algorithmResult) {
        if (this.mSaveResult && algorithmResult != null && algorithmResult.getResultCode() == 0 && BaseMiscUtil.isValid(algorithmResult.getClusters())) {
            LongSparseArray<E> featureSparseArray = new LongSparseArray(this.mImageFeatureItems.size());
            for (ImageFeatureItem featureItem : this.mImageFeatureItems) {
                if (featureItem.getMediaSha1() != null) {
                    featureSparseArray.put(featureItem.getMediaId(), featureItem);
                }
            }
            long start = System.nanoTime();
            for (Cluster cluster : algorithmResult.getClusters()) {
                long[] imageIdArray = cluster.getImageIds();
                if (!(imageIdArray == null || imageIdArray.length == 0)) {
                    long targetGroupId = -1;
                    for (long id : imageIdArray) {
                        ImageFeatureItem feature = (ImageFeatureItem) featureSparseArray.get(id);
                        if (feature != null && feature.getImageFeature() != null && feature.getImageFeature().getClusterGroupId() > 0) {
                            targetGroupId = feature.getImageFeature().getClusterGroupId();
                            break;
                        }
                    }
                    if (targetGroupId < 0) {
                        targetGroupId = generateGroupId(start);
                    }
                    GalleryEntityManager em = GalleryEntityManager.getInstance();
                    ContentValues values = new ContentValues();
                    values.put("clusterGroupId", Long.valueOf(targetGroupId));
                    em.update(ImageFeature.class, values, String.format("%s IN (%s)", new Object[]{"imageId", TextUtils.join(",", MiscUtil.arrayToList(imageIdArray))}), null);
                    ImageFeatureCacheManager.getInstance().onImageFeaturesChanged(imageIds);
                }
            }
        }
    }

    private long generateGroupId(long startNano) {
        return (System.currentTimeMillis() * ExtraTextUtils.MB) + ((System.nanoTime() - startNano) % ExtraTextUtils.MB);
    }
}
