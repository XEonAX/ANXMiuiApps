package com.miui.gallery.card.model;

import android.database.Cursor;
import android.text.TextUtils;

public class MediaInfo extends BaseMedia {
    private long mCreateTime;
    private int mDuration;
    private String mFilePath;
    private int mHeight;
    private long mId;
    private String mLatitude;
    private String mLatitudeRef;
    private String mLocation;
    private String mLongitude;
    private String mLongitudeRef;
    private String mMicroPath;
    private String mMicroThumb;
    private String mMimeType;
    private int mOrientation;
    private double mScore;
    private String mSha1;
    private long mSize;
    private int mSyncState;
    private String mThumbPath;
    private int mWidth;

    public MediaInfo(Cursor cursor) {
        this.mId = cursor.getLong(0);
        this.mMicroPath = cursor.getString(1);
        this.mThumbPath = cursor.getString(2);
        this.mFilePath = cursor.getString(3);
        this.mMimeType = cursor.getString(4);
        this.mCreateTime = cursor.getLong(5);
        this.mLocation = cursor.getString(6);
        this.mSize = cursor.getLong(7);
        this.mWidth = cursor.getInt(8);
        this.mHeight = cursor.getInt(9);
        this.mDuration = cursor.getInt(10);
        this.mLatitude = cursor.getString(11);
        this.mLatitudeRef = cursor.getString(12);
        this.mLongitude = cursor.getString(13);
        this.mLongitudeRef = cursor.getString(14);
        this.mSha1 = cursor.getString(15);
        this.mSyncState = cursor.getInt(16);
        this.mMicroThumb = cursor.getString(17);
        this.mOrientation = cursor.getInt(19);
    }

    public long getId() {
        return this.mId;
    }

    public long getCreateTime() {
        return this.mCreateTime;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public String getSha1() {
        return this.mSha1;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public double getScore() {
        return this.mScore;
    }

    public void setScore(double score) {
        this.mScore = score;
    }

    public String getUri() {
        if (!TextUtils.isEmpty(this.mFilePath)) {
            return this.mFilePath;
        }
        if (!TextUtils.isEmpty(this.mThumbPath)) {
            return this.mThumbPath;
        }
        if (TextUtils.isEmpty(this.mMicroPath)) {
            return null;
        }
        return this.mMicroPath;
    }
}
