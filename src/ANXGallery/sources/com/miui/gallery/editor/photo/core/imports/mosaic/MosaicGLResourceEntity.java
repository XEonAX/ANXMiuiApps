package com.miui.gallery.editor.photo.core.imports.mosaic;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class MosaicGLResourceEntity extends MosaicGLEntity {
    public static final Creator<MosaicGLResourceEntity> CREATOR = new Creator<MosaicGLResourceEntity>() {
        public MosaicGLResourceEntity createFromParcel(Parcel source) {
            return new MosaicGLResourceEntity(source);
        }

        public MosaicGLResourceEntity[] newArray(int size) {
            return new MosaicGLResourceEntity[size];
        }
    };
    public final String mResourcePath;
    public final String mTileMode;

    MosaicGLResourceEntity(short priority, String name, String iconPath, String resourcePath, String tileMode) {
        super(priority, name, iconPath, TYPE.RESOURCE);
        this.mResourcePath = resourcePath;
        this.mTileMode = tileMode;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeString(this.mResourcePath);
        dest.writeString(this.mTileMode);
    }

    protected MosaicGLResourceEntity(Parcel in) {
        super(in);
        this.mResourcePath = in.readString();
        this.mTileMode = in.readString();
    }
}
