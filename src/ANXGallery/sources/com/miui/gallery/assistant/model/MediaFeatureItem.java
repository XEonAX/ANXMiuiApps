package com.miui.gallery.assistant.model;

import android.database.Cursor;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

public class MediaFeatureItem implements ImageFeatureItem, Comparable<MediaFeatureItem> {
    public static final String[] MEDIA_PROJECTION = new String[]{"_id", "sha1", "microthumbfile", "thumbnailFile", "localFile", "alias_create_time", "localFlag", "serverId"};
    public static final String[] PROJECTION = new String[]{"_id", "sha1", "microthumbfile", "thumbnailFile", "localFile", "mixedDateTime", "localFlag", "serverId"};
    private long mDateTime;
    private long mId;
    private transient ImageFeature mImageFeature;
    private int mLocalFlag;
    private String mMicroThumbnailPath;
    private String mOriginPath;
    private long mServerId;
    private String mSha1;
    private String mThumbnailPath;

    public MediaFeatureItem(Cursor cursor) {
        if (cursor != null) {
            this.mId = cursor.getLong(0);
            this.mSha1 = cursor.getString(1);
            this.mMicroThumbnailPath = cursor.getString(2);
            this.mThumbnailPath = cursor.getString(3);
            this.mOriginPath = cursor.getString(4);
            this.mDateTime = cursor.getLong(5);
            this.mLocalFlag = cursor.getInt(6);
            this.mServerId = cursor.getLong(7);
        }
    }

    public long getId() {
        return this.mId;
    }

    public String getSha1() {
        return this.mSha1;
    }

    public String getMicroThumbnailPath() {
        return this.mMicroThumbnailPath;
    }

    public void setMicroThumbnailPath(String microThumbnailPath) {
        this.mMicroThumbnailPath = microThumbnailPath;
    }

    public String getThumbnailPath() {
        return this.mThumbnailPath;
    }

    public void setThumbnailPath(String thumbnailPath) {
        this.mThumbnailPath = thumbnailPath;
    }

    public String getOriginPath() {
        return this.mOriginPath;
    }

    public void setOriginPath(String originPath) {
        this.mOriginPath = originPath;
    }

    public long getDateTime() {
        return this.mDateTime;
    }

    public int getLocalFlag() {
        return this.mLocalFlag;
    }

    public void setImageFeature(ImageFeature imageFeature) {
        this.mImageFeature = imageFeature;
    }

    public ImageFeature getImageFeature() {
        return this.mImageFeature;
    }

    public boolean isSelectionFeatureDone() {
        return this.mImageFeature != null && this.mImageFeature.isSelectionFeatureDone();
    }

    public String getImagePath() {
        if (TextUtils.isEmpty(getOriginPath())) {
            return TextUtils.isEmpty(getThumbnailPath()) ? getMicroThumbnailPath() : getThumbnailPath();
        } else {
            return getOriginPath();
        }
    }

    public String getMediaSha1() {
        return this.mSha1;
    }

    public long getMediaId() {
        return this.mId;
    }

    public long getServerId() {
        return this.mServerId;
    }

    public int compareTo(MediaFeatureItem o) {
        if (this.mImageFeature == null || o.mImageFeature == null) {
            return 0;
        }
        return Double.compare(o.mImageFeature.getScore(), this.mImageFeature.getScore());
    }

    public static List<MediaFeatureItem> getMediaFeatureItemsFromCursor(Cursor cursor) {
        ArrayList<MediaFeatureItem> list = new ArrayList();
        if (cursor == null || !cursor.moveToFirst()) {
            return list;
        }
        do {
            list.add(new MediaFeatureItem(cursor));
        } while (cursor.moveToNext());
        return list;
    }
}
