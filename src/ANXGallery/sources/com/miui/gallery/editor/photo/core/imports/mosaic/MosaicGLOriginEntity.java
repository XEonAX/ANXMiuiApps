package com.miui.gallery.editor.photo.core.imports.mosaic;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class MosaicGLOriginEntity extends MosaicGLEntity {
    public static final Creator<MosaicGLOriginEntity> CREATOR = new Creator<MosaicGLOriginEntity>() {
        public MosaicGLOriginEntity createFromParcel(Parcel source) {
            return new MosaicGLOriginEntity(source);
        }

        public MosaicGLOriginEntity[] newArray(int size) {
            return new MosaicGLOriginEntity[size];
        }
    };

    MosaicGLOriginEntity(short priority, String name, String iconPath) {
        super(priority, name, iconPath, TYPE.ORIGIN);
    }

    protected MosaicGLOriginEntity(Parcel in) {
        super(in);
    }
}
