package com.miui.gallery.people.model;

import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.miui.gallery.sdk.download.DownloadType;

public class People implements Parcelable {
    public static final Creator<People> CREATOR = new Creator<People>() {
        public People createFromParcel(Parcel source) {
            People people = new People();
            people.readFromParcel(source);
            return people;
        }

        public People[] newArray(int size) {
            return new People[size];
        }
    };
    private RectF mCoverFaceRect;
    private long mCoverImageId;
    private String mCoverPath;
    private DownloadType mCoverType;
    private int mFaceCount;
    private long mId;
    private String mName;
    private String mRelationText;
    private int mRelationType;
    private String mServerId;
    private int mVisibilityType;

    public long getId() {
        return this.mId;
    }

    public void setId(long id) {
        this.mId = id;
    }

    public void setServerId(String serverId) {
        this.mServerId = serverId;
    }

    public String getName() {
        return this.mName;
    }

    public void setName(String name) {
        this.mName = name;
    }

    public int getRelationType() {
        return this.mRelationType;
    }

    public void setRelationType(int relationType) {
        this.mRelationType = relationType;
    }

    public void setRelationText(String relationText) {
        this.mRelationText = relationText;
    }

    public long getCoverImageId() {
        return this.mCoverImageId;
    }

    public void setCoverImageId(long coverImageId) {
        this.mCoverImageId = coverImageId;
    }

    public RectF getCoverFaceRect() {
        return this.mCoverFaceRect;
    }

    public void setCoverFaceRect(RectF coverFaceRect) {
        this.mCoverFaceRect = coverFaceRect;
    }

    public int getFaceCount() {
        return this.mFaceCount;
    }

    public void setFaceCount(int faceCount) {
        this.mFaceCount = faceCount;
    }

    public String getCoverPath() {
        return this.mCoverPath;
    }

    public void setCoverPath(String coverPath) {
        this.mCoverPath = coverPath;
    }

    public DownloadType getCoverType() {
        return this.mCoverType;
    }

    public void setCoverType(DownloadType coverType) {
        this.mCoverType = coverType;
    }

    public void setVisibilityType(int visibilityType) {
        this.mVisibilityType = visibilityType;
    }

    public int describeContents() {
        return 0;
    }

    public void readFromParcel(Parcel in) {
        this.mId = in.readLong();
        this.mServerId = in.readString();
        this.mName = in.readString();
        this.mRelationType = in.readInt();
        this.mRelationText = in.readString();
        this.mCoverImageId = in.readLong();
        this.mCoverPath = in.readString();
        this.mCoverType = (DownloadType) in.readParcelable(DownloadType.class.getClassLoader());
        this.mCoverFaceRect = (RectF) in.readParcelable(RectF.class.getClassLoader());
        this.mFaceCount = in.readInt();
        this.mVisibilityType = in.readInt();
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeLong(this.mId);
        dest.writeString(this.mServerId);
        dest.writeString(this.mName);
        dest.writeInt(this.mRelationType);
        dest.writeString(this.mRelationText);
        dest.writeLong(this.mCoverImageId);
        dest.writeString(this.mCoverPath);
        dest.writeParcelable(this.mCoverType, flags);
        dest.writeParcelable(this.mCoverFaceRect, flags);
        dest.writeInt(this.mFaceCount);
        dest.writeInt(this.mVisibilityType);
    }
}
