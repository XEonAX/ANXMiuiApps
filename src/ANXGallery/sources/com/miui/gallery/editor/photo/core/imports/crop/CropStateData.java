package com.miui.gallery.editor.photo.core.imports.crop;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.imports.obsoletes.Crop.CropEntry;

class CropStateData extends RenderData {
    public static final Creator<CropStateData> CREATOR = new Creator<CropStateData>() {
        public CropStateData createFromParcel(Parcel source) {
            return new CropStateData(source);
        }

        public CropStateData[] newArray(int size) {
            return new CropStateData[size];
        }
    };
    final CropEntry mEntry;

    CropStateData(CropEntry entry) {
        this.mEntry = entry;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeParcelable(this.mEntry, flags);
    }

    protected CropStateData(Parcel in) {
        super(in);
        this.mEntry = (CropEntry) in.readParcelable(CropEntry.class.getClassLoader());
    }
}
