package com.miui.gallery.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class FaceAlbumCover extends BaseAlbumCover implements Parcelable {
    public static final Creator<FaceAlbumCover> CREATOR = new Creator<FaceAlbumCover>() {
        public FaceAlbumCover createFromParcel(Parcel source) {
            return new FaceAlbumCover(source);
        }

        public FaceAlbumCover[] newArray(int size) {
            return new FaceAlbumCover[size];
        }
    };
    public String faceRect;

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeString(this.faceRect);
    }

    protected FaceAlbumCover(Parcel in) {
        super(in);
        this.faceRect = in.readString();
    }
}
