package com.miui.gallery.editor.photo.core.common.model;

import android.os.Parcel;
import com.miui.gallery.editor.photo.core.Metadata;

public abstract class AdjustData extends Metadata {
    public final int icon;
    public int progress;

    public abstract int getMax();

    public abstract int getMin();

    public abstract boolean isMid();

    public AdjustData(short priority, String name, int icon) {
        super(priority, name);
        this.icon = icon;
        this.progress = getMin();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.icon);
        dest.writeInt(this.progress);
    }

    protected AdjustData(Parcel in) {
        super(in);
        this.icon = in.readInt();
        this.progress = in.readInt();
    }
}
