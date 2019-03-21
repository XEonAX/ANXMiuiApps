package com.miui.gallery.editor.photo.core.imports.filter;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.miui.gallery.editor.photo.core.common.model.FilterCategory;
import java.util.List;

class FilterCategoryData extends FilterCategory {
    public static final Creator<FilterCategoryData> CREATOR = new Creator<FilterCategoryData>() {
        public FilterCategoryData createFromParcel(Parcel source) {
            return new FilterCategoryData(source);
        }

        public FilterCategoryData[] newArray(int size) {
            return new FilterCategoryData[size];
        }
    };
    private int mCategory;

    public FilterCategoryData(int category, String name, int highlightColor) {
        super((short) 4, name, highlightColor);
        this.mCategory = category;
    }

    public FilterCategoryData(int category, String name, int highlightColor, int subHighlighColor, int subItemSize) {
        this(category, name, highlightColor);
        this.subHighlighColor = subHighlighColor;
        this.subItemSize = subItemSize;
    }

    public List<FilterItem> getFilterDatas() {
        return FilterManager.getFiltersByCategory(this.mCategory);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.mCategory);
    }

    protected FilterCategoryData(Parcel in) {
        super(in);
        this.mCategory = in.readInt();
    }
}
