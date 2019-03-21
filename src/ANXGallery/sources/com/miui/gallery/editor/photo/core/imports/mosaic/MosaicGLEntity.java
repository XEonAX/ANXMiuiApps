package com.miui.gallery.editor.photo.core.imports.mosaic;

import android.os.Parcel;
import com.miui.gallery.editor.photo.core.common.model.MosaicData;

public abstract class MosaicGLEntity extends MosaicData {
    public final TYPE type;

    enum TYPE {
        ORIGIN,
        EFFECT,
        RESOURCE
    }

    public MosaicGLEntity(short priority, String name, String iconPath, TYPE type) {
        super(priority, name, iconPath);
        this.type = type;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.type == null ? -1 : this.type.ordinal());
    }

    protected MosaicGLEntity(Parcel in) {
        super(in);
        int tmpType = in.readInt();
        this.type = tmpType == -1 ? null : TYPE.values()[tmpType];
    }
}
