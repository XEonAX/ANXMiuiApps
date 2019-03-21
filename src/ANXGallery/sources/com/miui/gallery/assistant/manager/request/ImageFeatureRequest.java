package com.miui.gallery.assistant.manager.request;

import android.text.TextUtils;
import com.miui.gallery.assistant.manager.AlgorithmRequest;
import com.miui.gallery.assistant.manager.AlgorithmRequest.Priority;
import com.miui.gallery.assistant.manager.result.ImageFeatureResult;
import com.miui.gallery.assistant.model.ImageFeature;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.dao.base.Entity;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.util.List;

public abstract class ImageFeatureRequest<T extends ImageFeatureResult> extends AlgorithmRequest<T> {
    protected final long mImageDateTime;
    protected final long mImageId;
    protected final String mSha1;

    public ImageFeatureRequest(Priority priority, long imageId, String sha1, long imageDateTime) {
        super(priority);
        this.mImageId = imageId;
        this.mSha1 = sha1;
        this.mImageDateTime = imageDateTime;
    }

    public boolean updateFeatureToDb(T algorithmResult) {
        GalleryEntityManager em = GalleryEntityManager.getInstance();
        List<ImageFeature> list = em.query(ImageFeature.class, String.format("%s=%s", new Object[]{"imageId", Long.valueOf(this.mImageId)}), null);
        ImageFeature imageFeature;
        if (BaseMiscUtil.isValid(list)) {
            imageFeature = (ImageFeature) list.get(0);
            updateImageFeature(imageFeature, algorithmResult);
            Log.d(this.TAG, "update image %d feature,flag:%d", Long.valueOf(imageFeature.getImageId()), Integer.valueOf(imageFeature.getFeatureFlag()));
            return em.update(imageFeature);
        }
        imageFeature = new ImageFeature(this.mImageId, this.mSha1, this.mImageDateTime);
        updateImageFeature(imageFeature, algorithmResult);
        Log.d(this.TAG, "insert image %d feature,flag:%d", Long.valueOf(imageFeature.getImageId()), Integer.valueOf(imageFeature.getFeatureFlag()));
        return em.insert((Entity) imageFeature);
    }

    protected T process() {
        return null;
    }

    protected void onSaveResult(T algorithmResult) {
        if (algorithmResult != null && this.mImageId > 0 && !TextUtils.isEmpty(this.mSha1)) {
            updateFeatureToDb(algorithmResult);
        }
    }

    protected void updateImageFeature(ImageFeature feature, T algorithmResult) {
        if (algorithmResult != null && feature != null) {
            feature.setVersion(2);
            algorithmResult.updateImageFeature(feature);
        }
    }
}
