package com.miui.gallery.editor.photo.core.common.model;

import android.os.Parcel;
import com.miui.gallery.editor.photo.core.Metadata;

public abstract class MosaicData extends Metadata {
    public final String iconPath;

    public MosaicData(short priority, String name, String iconPath) {
        super(priority, name);
        this.iconPath = iconPath;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeString(this.iconPath);
    }

    protected MosaicData(Parcel in) {
        super(in);
        this.iconPath = in.readString();
    }
}
