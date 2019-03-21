package com.miui.gallery.editor.photo.core.common.model;

import android.os.Parcel;
import com.miui.gallery.editor.photo.core.Metadata;

public abstract class BeautifyData extends Metadata {
    public final int icon;

    public BeautifyData(short priority, String name, int icon) {
        super(priority, name);
        this.icon = icon;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.icon);
    }

    protected BeautifyData(Parcel in) {
        super(in);
        this.icon = in.readInt();
    }
}
