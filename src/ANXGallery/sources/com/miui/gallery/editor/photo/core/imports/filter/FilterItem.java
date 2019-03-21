package com.miui.gallery.editor.photo.core.imports.filter;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.miui.filtersdk.filter.base.BaseOriginalFilter;
import com.miui.filtersdk.filter.base.ColorLookupFilter;
import com.miui.gallery.editor.photo.core.common.model.FilterData;
import com.miui.gallery.editor.photo.core.imports.filter.render.EmptyGPUImageFilter;
import com.miui.gallery.editor.photo.core.imports.filter.render.PathLUTFilter;

public class FilterItem extends FilterData implements Renderable {
    public static final Creator<FilterItem> CREATOR = new Creator<FilterItem>() {
        public FilterItem createFromParcel(Parcel source) {
            return new FilterItem(source);
        }

        public FilterItem[] newArray(int size) {
            return new FilterItem[size];
        }
    };
    private static short FILTER_ITEM_PRIORITY = (short) 10;
    private int mDefault;
    private boolean mIsFilePath;
    private String mTablePath;

    public FilterItem(String name, int icon) {
        super(FILTER_ITEM_PRIORITY, name, icon);
    }

    public FilterItem(String filterPath, String name, int icon, int progress) {
        super(FILTER_ITEM_PRIORITY, name, icon);
        this.mTablePath = filterPath;
        this.mDefault = progress;
        this.progress = getDefault();
    }

    public int getDefault() {
        return this.mDefault;
    }

    public boolean isNone() {
        return TextUtils.isEmpty(this.mTablePath);
    }

    public BaseOriginalFilter instantiate() {
        if (TextUtils.isEmpty(this.mTablePath)) {
            return new EmptyGPUImageFilter();
        }
        BaseOriginalFilter filter;
        if (this.mIsFilePath) {
            filter = new PathLUTFilter(this.mTablePath);
        } else {
            filter = new ColorLookupFilter(this.mTablePath);
        }
        if (filter == null || !filter.isDegreeAdjustSupported()) {
            return filter;
        }
        filter.setDegree(this.progress);
        return filter;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeString(this.mTablePath);
        dest.writeInt(this.mDefault);
        dest.writeByte(this.mIsFilePath ? (byte) 1 : (byte) 0);
    }

    protected FilterItem(Parcel in) {
        super(in);
        this.mTablePath = in.readString();
        this.mDefault = in.readInt();
        this.mIsFilePath = in.readByte() != (byte) 0;
    }
}
