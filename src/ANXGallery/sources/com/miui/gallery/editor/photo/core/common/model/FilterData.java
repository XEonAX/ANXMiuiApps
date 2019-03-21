package com.miui.gallery.editor.photo.core.common.model;

import android.os.Parcel;
import com.miui.gallery.editor.photo.core.Metadata;

public abstract class FilterData extends Metadata {
    public final int icon;
    public int progress;

    public abstract boolean isNone();

    public FilterData(short priority, String name, int icon) {
        super(priority, name);
        this.icon = icon;
    }

    public boolean equals(Object o) {
        if (o == null) {
            return false;
        }
        FilterData filterData = (FilterData) o;
        if (this.name.equals(filterData.name) && this.priority == filterData.priority) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.name.hashCode() + this.priority;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.icon);
        dest.writeInt(this.progress);
    }

    protected FilterData(Parcel in) {
        super(in);
        this.icon = in.readInt();
        this.progress = in.readInt();
    }
}
