package com.miui.gallery.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class BaseAlbumCover implements Parcelable {
    public static final Creator<BaseAlbumCover> CREATOR = new Creator<BaseAlbumCover>() {
        public BaseAlbumCover createFromParcel(Parcel source) {
            return new BaseAlbumCover(source);
        }

        public BaseAlbumCover[] newArray(int size) {
            return new BaseAlbumCover[size];
        }
    };
    public long coverId;
    public String coverPath;
    public String coverSha1;
    public long coverSize;
    public int coverSyncState;

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeLong(this.coverId);
        dest.writeString(this.coverPath);
        dest.writeString(this.coverSha1);
        dest.writeInt(this.coverSyncState);
        dest.writeLong(this.coverSize);
    }

    protected BaseAlbumCover(Parcel in) {
        this.coverId = in.readLong();
        this.coverPath = in.readString();
        this.coverSha1 = in.readString();
        this.coverSyncState = in.readInt();
        this.coverSize = in.readLong();
    }
}
