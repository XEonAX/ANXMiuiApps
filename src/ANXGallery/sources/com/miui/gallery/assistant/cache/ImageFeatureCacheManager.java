package com.miui.gallery.assistant.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.assistant.model.ImageFeature;
import com.miui.gallery.assistant.model.TinyImageFeature;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.preference.GalleryPreferences.Assistant;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;

public class ImageFeatureCacheManager {
    private Map<Long, GroupBestImage> mGroupBestMap;
    private Map<Long, TinyImageFeature> mImageTinyFeatureMap;
    private volatile boolean mInitialized;
    private volatile boolean mIsFirstShowImageSelection;

    public static class GroupBestImage {
        TinyImageFeature mBestImage;
        volatile int mImageCount;

        public GroupBestImage(int imageCount, TinyImageFeature bestImage) {
            this.mImageCount = imageCount;
            if (bestImage != null && !bestImage.isPoorImage()) {
                this.mBestImage = bestImage;
            }
        }

        public void increase() {
            this.mImageCount++;
        }

        public void tryReplcae(TinyImageFeature imageFeature) {
            if (imageFeature != null && !imageFeature.isPoorImage()) {
                if (this.mBestImage == null || this.mBestImage.getScore() < imageFeature.getScore() || this.mBestImage.getImageId() == imageFeature.getImageId()) {
                    this.mBestImage = imageFeature;
                }
            }
        }

        public void clear() {
            this.mImageCount = 0;
            this.mBestImage = null;
        }
    }

    private static final class ImageFeatureManagerHolder {
        private static final ImageFeatureCacheManager S_IMAGE_FEATURE_CACHE_MANAGER = new ImageFeatureCacheManager();
    }

    private ImageFeatureCacheManager() {
        this.mInitialized = false;
        this.mIsFirstShowImageSelection = false;
    }

    public static ImageFeatureCacheManager getInstance() {
        return ImageFeatureManagerHolder.S_IMAGE_FEATURE_CACHE_MANAGER;
    }

    public synchronized void init() {
        int i = 16;
        synchronized (this) {
            if (!this.mInitialized) {
                int size;
                long start = System.currentTimeMillis();
                List<TinyImageFeature> imageFeatures = getAllImageFeatures();
                if (imageFeatures != null) {
                    size = imageFeatures.size();
                } else {
                    size = 16;
                }
                this.mImageTinyFeatureMap = new ConcurrentHashMap(size);
                if (imageFeatures != null) {
                    i = imageFeatures.size() / 2;
                }
                this.mGroupBestMap = new ConcurrentHashMap(i);
                if (BaseMiscUtil.isValid(imageFeatures)) {
                    for (TinyImageFeature imageFeature : imageFeatures) {
                        this.mImageTinyFeatureMap.put(Long.valueOf(imageFeature.getImageId()), imageFeature);
                    }
                    imageFeatures.clear();
                }
                initGroupBestMap();
                this.mIsFirstShowImageSelection = Assistant.isFirstShowImageSelection();
                this.mInitialized = true;
                Log.d("ImageFeatureCacheManager", "Initialize use time: " + (System.currentTimeMillis() - start) + "ms.");
                Log.d("ImageFeatureCacheManager", "ImageFeature count: %d ; Cluster group count: %d ", Integer.valueOf(this.mImageTinyFeatureMap.size()), Integer.valueOf(this.mGroupBestMap.size()));
            }
        }
    }

    public boolean isInitialized() {
        return this.mInitialized;
    }

    public boolean shouldShowImageSelectionTip() {
        return this.mInitialized && this.mIsFirstShowImageSelection && this.mImageTinyFeatureMap.size() > 0;
    }

    public void setFirstShowImageSelection(boolean firstShowImageSelection) {
        this.mIsFirstShowImageSelection = firstShowImageSelection;
    }

    public TinyImageFeature getImageFeature(long imageId) {
        if (this.mInitialized) {
            return (TinyImageFeature) this.mImageTinyFeatureMap.get(Long.valueOf(imageId));
        }
        return null;
    }

    public void onImageFeaturesChanged(List<Long> imageIds) {
        List<TinyImageFeature> tinyFeatures = getImageFeaturesById(imageIds);
        if (BaseMiscUtil.isValid(tinyFeatures)) {
            for (TinyImageFeature tinyFeature : tinyFeatures) {
                addImageFeature(tinyFeature);
            }
        }
    }

    public synchronized boolean onImageDelete(long imageId) {
        boolean z;
        TinyImageFeature tinyFeature = getImageFeature(imageId);
        if (!this.mInitialized || tinyFeature == null || tinyFeature.getClusterGroupId() <= 0) {
            z = false;
        } else {
            ContentValues values = new ContentValues();
            values.put("imageType", Integer.valueOf(2));
            GalleryEntityManager.getInstance().update(ImageFeature.class, values, String.format("%s = %s", new Object[]{"imageId", Long.valueOf(imageId)}), null);
            long clusterGroupId = tinyFeature.getClusterGroupId();
            GroupBestImage groupBestImage = (GroupBestImage) this.mGroupBestMap.get(Long.valueOf(clusterGroupId));
            if (groupBestImage != null) {
                if (groupBestImage.mImageCount == 1) {
                    this.mGroupBestMap.remove(Long.valueOf(clusterGroupId));
                } else {
                    groupBestImage.clear();
                    List<Long> groupImages = getImagesByGroup(clusterGroupId);
                    if (BaseMiscUtil.isValid(groupImages)) {
                        for (Long image : groupImages) {
                            refreshGroupBestMap(getImageFeature(image.longValue()), true);
                        }
                    }
                }
            }
            z = true;
        }
        return z;
    }

    private List<Long> getImagesByGroup(long clusterGroupId) {
        List<Long> images = new ArrayList();
        Cursor cursor = GalleryEntityManager.getInstance().rawQuery(ImageFeature.class, TinyImageFeature.PROJECTION_GROUP, ImageFeature.ALL_IQA_CLUSTER_SELECTION + " AND " + "clusterGroupId" + "=" + clusterGroupId, null, null, null, "imageId ASC", null);
        if (cursor != null) {
            while (cursor.moveToNext()) {
                try {
                    images.add(Long.valueOf(cursor.getLong(0)));
                } catch (Exception e) {
                    Log.e("ImageFeatureCacheManager", "init mGroupBestMap fail");
                } finally {
                    cursor.close();
                }
            }
        }
        return images;
    }

    private void addImageFeature(TinyImageFeature imageFeature) {
        if (this.mInitialized && imageFeature != null) {
            refreshGroupBestMap(imageFeature, !this.mImageTinyFeatureMap.containsKey(Long.valueOf(imageFeature.getImageId())));
            this.mImageTinyFeatureMap.put(Long.valueOf(imageFeature.getImageId()), imageFeature);
        }
    }

    public int getBestImageCount(boolean considerSingleImage) {
        int count = 0;
        if (this.mInitialized) {
            for (Entry<Long, GroupBestImage> entry : this.mGroupBestMap.entrySet()) {
                GroupBestImage groupBestImage = (GroupBestImage) entry.getValue();
                if (groupBestImage != null && ((considerSingleImage || groupBestImage.mImageCount > 1) && groupBestImage.mBestImage != null)) {
                    count++;
                }
            }
        }
        return count;
    }

    public boolean isBestImage(long imageId, boolean considerSingleImage) {
        TinyImageFeature imageFeature = getImageFeature(imageId);
        if (!this.mInitialized || imageFeature == null) {
            return false;
        }
        GroupBestImage groupBestImage = (GroupBestImage) this.mGroupBestMap.get(Long.valueOf(imageFeature.getClusterGroupId()));
        if (groupBestImage == null || ((!considerSingleImage && groupBestImage.mImageCount <= 1) || groupBestImage.mBestImage == null || groupBestImage.mBestImage.getImageId() != imageId)) {
            return false;
        }
        return true;
    }

    private synchronized List<TinyImageFeature> getAllImageFeatures() {
        List<TinyImageFeature> allFeatures;
        allFeatures = new ArrayList();
        fillTinyFeaturesFromCursor(allFeatures, GalleryEntityManager.getInstance().rawQuery(ImageFeature.class, TinyImageFeature.PROJECTION, ImageFeature.ALL_IQA_CLUSTER_SELECTION, null, null, null, "imageId ASC", null));
        return allFeatures;
    }

    private synchronized List<TinyImageFeature> getImageFeaturesById(List<Long> imageIds) {
        List<TinyImageFeature> features;
        features = new ArrayList();
        if (BaseMiscUtil.isValid(imageIds)) {
            fillTinyFeaturesFromCursor(features, GalleryEntityManager.getInstance().rawQuery(ImageFeature.class, TinyImageFeature.PROJECTION, ImageFeature.ALL_IQA_CLUSTER_SELECTION + " AND " + String.format("%s IN (%s)", new Object[]{"imageId", TextUtils.join(",", imageIds)}), null, null, null, "imageId ASC", null));
        }
        return features;
    }

    private void fillTinyFeaturesFromCursor(List<TinyImageFeature> features, Cursor cursor) {
        if (features != null && cursor != null) {
            while (cursor.moveToNext()) {
                try {
                    features.add(new TinyImageFeature(cursor));
                } finally {
                    cursor.close();
                }
            }
        }
    }

    private synchronized void initGroupBestMap() {
        Collection<TinyImageFeature> imageFeatures = this.mImageTinyFeatureMap.values();
        if (BaseMiscUtil.isValid(imageFeatures)) {
            for (TinyImageFeature imageFeature : imageFeatures) {
                refreshGroupBestMap(imageFeature, true);
            }
        }
    }

    private synchronized void refreshGroupBestMap(TinyImageFeature imageFeature, boolean isNewAdded) {
        if (imageFeature != null) {
            if (this.mGroupBestMap.containsKey(Long.valueOf(imageFeature.getClusterGroupId()))) {
                GroupBestImage groupBestImage = (GroupBestImage) this.mGroupBestMap.get(Long.valueOf(imageFeature.getClusterGroupId()));
                if (isNewAdded) {
                    groupBestImage.increase();
                }
                groupBestImage.tryReplcae(imageFeature);
            } else {
                this.mGroupBestMap.put(Long.valueOf(imageFeature.getClusterGroupId()), new GroupBestImage(1, imageFeature));
            }
        }
    }
}
