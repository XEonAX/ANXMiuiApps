package com.miui.gallery.movie.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ImageEntity implements Parcelable {
    public static final Creator<ImageEntity> CREATOR = new Creator<ImageEntity>() {
        public ImageEntity createFromParcel(Parcel source) {
            return new ImageEntity(source);
        }

        public ImageEntity[] newArray(int size) {
            return new ImageEntity[size];
        }
    };
    public String image;
    public String sha1;

    public ImageEntity(String image, String sha1) {
        this.image = image;
        this.sha1 = sha1;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.image);
        dest.writeString(this.sha1);
    }

    protected ImageEntity(Parcel in) {
        this.image = in.readString();
        this.sha1 = in.readString();
    }
}
