package com.miui.gallery.share;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import java.util.WeakHashMap;

public class Path implements Parcelable {
    public static final Creator<Path> CREATOR = new Creator<Path>() {
        public Path createFromParcel(Parcel in) {
            return new Path(in);
        }

        public Path[] newArray(int size) {
            return new Path[size];
        }
    };
    static WeakHashMap<Path, CloudSharerMediaSet> sSetCache = new WeakHashMap();
    private long mId;
    private boolean mIsBabyAlbum;
    private boolean mIsOtherShared;

    public Path(long id, boolean isOtherShare) {
        this.mId = id;
        this.mIsOtherShared = isOtherShare;
    }

    public Path(long id, boolean isOtherShare, boolean isBabyAlbum) {
        this.mId = id;
        this.mIsOtherShared = isOtherShare;
        this.mIsBabyAlbum = isBabyAlbum;
    }

    protected Path(Parcel in) {
        boolean z;
        boolean z2 = true;
        if (in.readByte() != (byte) 0) {
            z = true;
        } else {
            z = false;
        }
        this.mIsOtherShared = z;
        if (in.readByte() == (byte) 0) {
            z2 = false;
        }
        this.mIsBabyAlbum = z2;
        this.mId = in.readLong();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        int i;
        int i2 = 1;
        if (this.mIsOtherShared) {
            i = 1;
        } else {
            i = 0;
        }
        dest.writeByte((byte) i);
        if (!this.mIsBabyAlbum) {
            i2 = 0;
        }
        dest.writeByte((byte) i2);
        dest.writeLong(this.mId);
    }

    public String toString() {
        return (this.mIsOtherShared ? "other" : "owner") + "/" + String.valueOf(this.mId);
    }

    public static Path fromString(String pathStr) {
        if (TextUtils.isEmpty(pathStr) || pathStr.indexOf("/") == -1) {
            return null;
        }
        Path aPath = new Path();
        int index = pathStr.indexOf("/");
        aPath.mIsOtherShared = pathStr.indexOf("other") != -1;
        aPath.mId = Long.parseLong(pathStr.substring(index + 1));
        return aPath;
    }

    public boolean isBabyAlbum() {
        return this.mIsBabyAlbum;
    }

    public boolean isOtherShared() {
        return this.mIsOtherShared;
    }

    public long getId() {
        return this.mId;
    }

    public CloudSharerMediaSet getMediaSet() {
        if (sSetCache.containsKey(this)) {
            return (CloudSharerMediaSet) sSetCache.get(this);
        }
        CloudSharerMediaSet set = new CloudSharerMediaSet(this);
        sSetCache.put(this, set);
        return set;
    }
}
