package com.miui.gallery.editor.photo.core.imports.filter;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.miui.filtersdk.filter.base.BaseOriginalFilter;
import com.miui.gallery.editor.photo.core.Metadata;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.imports.filter.render.BaseOriginalFilterGroup;
import com.miui.gallery.editor.photo.core.imports.filter.render.EmptyGPUImageFilter;
import java.util.ArrayList;
import java.util.List;

public class FilterRenderData extends RenderData {
    public static final Creator<FilterRenderData> CREATOR = new Creator<FilterRenderData>() {
        public FilterRenderData createFromParcel(Parcel source) {
            return new FilterRenderData(source);
        }

        public FilterRenderData[] newArray(int size) {
            return new FilterRenderData[size];
        }
    };
    private final List<Metadata> mEffects;

    public FilterRenderData(List<Metadata> effects) {
        this.mEffects = new ArrayList(effects);
    }

    protected RenderData onMerge(RenderData other) {
        if (!(other instanceof FilterRenderData)) {
            return null;
        }
        List effects = new ArrayList(this.mEffects);
        effects.addAll(((FilterRenderData) other).mEffects);
        return new FilterRenderData(effects);
    }

    public boolean isEmpty() {
        return this.mEffects.isEmpty();
    }

    public BaseOriginalFilter instantiate() {
        if (this.mEffects.size() == 0) {
            return new EmptyGPUImageFilter();
        }
        if (this.mEffects.size() == 1) {
            return ((Renderable) this.mEffects.get(0)).instantiate();
        }
        List<BaseOriginalFilter> filters = new ArrayList(this.mEffects.size());
        for (int i = 0; i < this.mEffects.size(); i++) {
            filters.add(((Renderable) this.mEffects.get(i)).instantiate());
        }
        return new BaseOriginalFilterGroup(filters);
    }

    public boolean isPortraitBeauty() {
        if (this.mEffects.size() == 1 && (this.mEffects.get(0) instanceof FilterBeautify)) {
            return ((FilterBeautify) this.mEffects.get(0)).isPortraitBeauty();
        }
        return false;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeList(this.mEffects);
    }

    protected FilterRenderData(Parcel in) {
        super(in);
        this.mEffects = new ArrayList();
        in.readList(this.mEffects, FilterItem.class.getClassLoader());
    }
}
