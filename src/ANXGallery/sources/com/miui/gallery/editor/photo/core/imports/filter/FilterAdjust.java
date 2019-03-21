package com.miui.gallery.editor.photo.core.imports.filter;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.miui.filtersdk.filter.base.BaseOriginalFilter;
import com.miui.gallery.editor.photo.core.common.model.AdjustData;
import com.miui.gallery.editor.photo.core.imports.filter.adjust.GPUBrightnessFilter;
import com.miui.gallery.editor.photo.core.imports.filter.adjust.GPUContrastFilter;
import com.miui.gallery.editor.photo.core.imports.filter.adjust.GPUImageSaturationFilter;
import com.miui.gallery.editor.photo.core.imports.filter.adjust.GPUImageSharpenFilter;
import com.miui.gallery.editor.photo.core.imports.filter.adjust.GPUImageVignetteFilter;

public class FilterAdjust extends AdjustData implements Renderable {
    public static final Creator<FilterAdjust> CREATOR = new Creator<FilterAdjust>() {
        public FilterAdjust createFromParcel(Parcel source) {
            return new FilterAdjust(source);
        }

        public FilterAdjust[] newArray(int size) {
            return new FilterAdjust[size];
        }
    };
    private int mId;
    private boolean mIsMid;

    public FilterAdjust(int id, short priority, String name, int icon, boolean isMid) {
        super(priority, name, icon);
        this.mId = id;
        this.mIsMid = isMid;
    }

    public int getMax() {
        return 100;
    }

    public int getMin() {
        return this.mIsMid ? -100 : 0;
    }

    public boolean isMid() {
        return this.mIsMid;
    }

    public BaseOriginalFilter instantiate() {
        int percent = ((this.progress - getMin()) * getMax()) / (getMax() - getMin());
        switch (this.mId) {
            case 0:
                return new GPUBrightnessFilter(percent);
            case 1:
                return new GPUContrastFilter(percent);
            case 2:
                return new GPUImageSaturationFilter(percent);
            case 3:
                return new GPUImageSharpenFilter(percent);
            case 4:
                return new GPUImageVignetteFilter(percent);
            default:
                throw new IllegalArgumentException("not support adjust id: " + this.mId);
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.mId);
        dest.writeByte(this.mIsMid ? (byte) 1 : (byte) 0);
    }

    protected FilterAdjust(Parcel in) {
        super(in);
        this.mId = in.readInt();
        this.mIsMid = in.readByte() != (byte) 0;
    }
}
