package com.miui.gallery.push;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;

public class GalleryPushMessage implements Parcelable {
    public static final Creator<GalleryPushMessage> CREATOR = new Creator<GalleryPushMessage>() {
        public GalleryPushMessage createFromParcel(Parcel source) {
            return new GalleryPushMessage(source);
        }

        public GalleryPushMessage[] newArray(int size) {
            return new GalleryPushMessage[size];
        }
    };
    @SerializedName("businessModule")
    private String mBusinessModule;
    @SerializedName("data")
    private String mData;
    @SerializedName("messageScope")
    private String mMessageScope;
    @SerializedName("tag")
    private long mTag;
    @SerializedName("type")
    private String mType;

    public static GalleryPushMessage fromJson(String json) {
        try {
            return (GalleryPushMessage) new Gson().fromJson(json, GalleryPushMessage.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public String getData() {
        return this.mData;
    }

    public long getTag() {
        return this.mTag;
    }

    public String getType() {
        return this.mType;
    }

    public String getBusinessModule() {
        return this.mBusinessModule;
    }

    public String getMessageScope() {
        return this.mMessageScope;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.mType);
        dest.writeString(this.mBusinessModule);
        dest.writeString(this.mData);
        dest.writeLong(this.mTag);
        dest.writeString(this.mMessageScope);
    }

    protected GalleryPushMessage(Parcel in) {
        this.mType = in.readString();
        this.mBusinessModule = in.readString();
        this.mData = in.readString();
        this.mTag = in.readLong();
        this.mMessageScope = in.readString();
    }
}
