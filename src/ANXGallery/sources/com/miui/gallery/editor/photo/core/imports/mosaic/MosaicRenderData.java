package com.miui.gallery.editor.photo.core.imports.mosaic;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.miui.gallery.editor.photo.core.RenderData;

class MosaicRenderData extends RenderData {
    public static final Creator<MosaicRenderData> CREATOR = new Creator<MosaicRenderData>() {
        public MosaicRenderData createFromParcel(Parcel source) {
            return new MosaicRenderData(source);
        }

        public MosaicRenderData[] newArray(int size) {
            return new MosaicRenderData[size];
        }
    };
    MosaicEntry mMosaicEntry;

    MosaicRenderData(MosaicEntry mosaicEntry) {
        this.mMosaicEntry = mosaicEntry;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeParcelable(this.mMosaicEntry, flags);
    }

    protected MosaicRenderData(Parcel in) {
        super(in);
        this.mMosaicEntry = (MosaicEntry) in.readParcelable(MosaicEntry.class.getClassLoader());
    }
}
