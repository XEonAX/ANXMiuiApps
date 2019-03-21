package com.miui.gallery.editor.photo.core.imports.filter;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.miui.filtersdk.filter.base.BaseOriginalFilter;
import com.miui.filtersdk.filter.base.ColorLookupFilter;
import com.miui.gallery.editor.photo.core.common.model.BeautifyData;
import com.miui.gallery.editor.photo.core.imports.filter.render.EmptyGPUImageFilter;

public class FilterBeautify extends BeautifyData implements Renderable {
    private static short BEAUTIFY_ITEM_PRIORITY = (short) 10;
    public static final Creator<FilterBeautify> CREATOR = new Creator<FilterBeautify>() {
        public FilterBeautify createFromParcel(Parcel source) {
            return new FilterBeautify(source);
        }

        public FilterBeautify[] newArray(int size) {
            return new FilterBeautify[size];
        }
    };
    private int mId;

    public FilterBeautify(int id, String name, int icon) {
        super(BEAUTIFY_ITEM_PRIORITY, name, icon);
        this.mId = id;
    }

    private String getTablePath() {
        switch (this.mId) {
            case 1:
                return "filter/onekey/auto.png";
            case 2:
                return "filter/onekey/portrait.png";
            case 3:
                return "filter/onekey/food.png";
            case 4:
                return "filter/onekey/scene.png";
            default:
                throw new IllegalArgumentException("not table for this id: " + this.mId);
        }
    }

    public BaseOriginalFilter instantiate() {
        if (this.mId == 0) {
            return new EmptyGPUImageFilter();
        }
        BaseOriginalFilter filter = new ColorLookupFilter(getTablePath());
        if (!filter.isDegreeAdjustSupported()) {
            return filter;
        }
        filter.setDegree(100);
        return filter;
    }

    public boolean isPortraitBeauty() {
        return this.mId == 2;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.mId);
    }

    protected FilterBeautify(Parcel in) {
        super(in);
        this.mId = in.readInt();
    }
}
