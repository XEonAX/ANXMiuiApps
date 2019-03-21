package com.miui.gallery.editor.photo.core.common.model;

import android.os.Parcel;
import com.miui.gallery.editor.photo.core.Metadata;
import java.io.Serializable;
import java.util.List;

public abstract class FilterCategory extends Metadata implements Serializable {
    public int highlighColor;
    public int subHighlighColor;
    public int subItemSize;

    public abstract List<? extends FilterData> getFilterDatas();

    public FilterCategory(short priority, String name, int highlighColor) {
        super(priority, name);
        this.highlighColor = highlighColor;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.highlighColor);
    }

    protected FilterCategory(Parcel in) {
        super(in);
        this.highlighColor = in.readInt();
    }
}
