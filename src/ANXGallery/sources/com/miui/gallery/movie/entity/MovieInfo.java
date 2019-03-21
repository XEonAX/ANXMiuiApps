package com.miui.gallery.movie.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public class MovieInfo implements Parcelable {
    public static final Creator<MovieInfo> CREATOR = new Creator<MovieInfo>() {
        public MovieInfo createFromParcel(Parcel source) {
            return new MovieInfo(source);
        }

        public MovieInfo[] newArray(int size) {
            return new MovieInfo[size];
        }
    };
    public String audio;
    private List<ImageEntity> extraList;
    public List<ImageEntity> imageList;
    public boolean isFromStory;
    public boolean isShortVideo;
    public String subTitle;
    public String template;
    public String title;

    public MovieInfo(List<ImageEntity> imageList) {
        this.audio = "default";
        this.imageList = imageList;
        this.isShortVideo = imageList.size() <= 5;
    }

    public boolean changeToShortVideo() {
        this.isShortVideo = true;
        if (this.imageList.size() > 5) {
            this.extraList = this.imageList.subList(5, this.imageList.size());
            List<ImageEntity> newImageList = new ArrayList();
            this.imageList = this.imageList.subList(0, 5);
            newImageList.addAll(this.imageList);
            this.imageList = newImageList;
            return true;
        }
        this.extraList = null;
        return false;
    }

    public boolean backToLongVideo() {
        this.isShortVideo = false;
        if (this.extraList == null) {
            return false;
        }
        this.imageList.addAll(this.extraList);
        this.extraList = null;
        return true;
    }

    public boolean discardToLongVideo() {
        this.isShortVideo = false;
        if (this.extraList == null) {
            return false;
        }
        this.extraList = null;
        return true;
    }

    public boolean discardToShortVideo() {
        this.isShortVideo = true;
        if (this.extraList == null) {
            return false;
        }
        this.extraList = null;
        return true;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        byte b = (byte) 1;
        dest.writeList(this.imageList);
        dest.writeString(this.template);
        dest.writeString(this.audio);
        dest.writeByte(this.isFromStory ? (byte) 1 : (byte) 0);
        if (!this.isShortVideo) {
            b = (byte) 0;
        }
        dest.writeByte(b);
        dest.writeString(this.title);
        dest.writeString(this.subTitle);
        dest.writeList(this.extraList);
    }

    protected MovieInfo(Parcel in) {
        boolean z = true;
        this.audio = "default";
        this.imageList = new ArrayList();
        in.readList(this.imageList, ImageEntity.class.getClassLoader());
        this.template = in.readString();
        this.audio = in.readString();
        this.isFromStory = in.readByte() != (byte) 0;
        if (in.readByte() == (byte) 0) {
            z = false;
        }
        this.isShortVideo = z;
        this.title = in.readString();
        this.subTitle = in.readString();
        this.extraList = new ArrayList();
        in.readList(this.extraList, ImageEntity.class.getClassLoader());
    }
}
