package com.miui.gallery.sdk.download;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public enum DownloadType implements Parcelable {
    ORIGIN(10, false),
    ORIGIN_FORCE(11, false),
    THUMBNAIL(12, false),
    MICRO(13, false),
    THUMBNAIL_BATCH(7, true),
    ORIGIN_BATCH(10, true);
    
    public static final Creator<DownloadType> CREATOR = null;
    private boolean mIsBackground;
    private int mPriority;

    static {
        CREATOR = new Creator<DownloadType>() {
            public DownloadType createFromParcel(Parcel source) {
                return DownloadType.values()[source.readInt()];
            }

            public DownloadType[] newArray(int size) {
                return new DownloadType[size];
            }
        };
    }

    private DownloadType(int priority, boolean isBackground) {
        this.mPriority = priority;
        this.mIsBackground = isBackground;
    }

    public int getPriority() {
        return this.mPriority;
    }

    public boolean isBackground() {
        return this.mIsBackground;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(ordinal());
    }
}
