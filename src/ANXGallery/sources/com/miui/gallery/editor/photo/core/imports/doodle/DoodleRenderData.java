package com.miui.gallery.editor.photo.core.imports.doodle;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.imports.doodle.DoodleEditorView.DoodleEntry;

class DoodleRenderData extends RenderData {
    public static final Creator<DoodleRenderData> CREATOR = new Creator<DoodleRenderData>() {
        public DoodleRenderData createFromParcel(Parcel source) {
            return new DoodleRenderData(source);
        }

        public DoodleRenderData[] newArray(int size) {
            return new DoodleRenderData[size];
        }
    };
    DoodleEntry mDoodleEntry;

    DoodleRenderData(DoodleEntry doodleEntry) {
        this.mDoodleEntry = doodleEntry;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeParcelable(this.mDoodleEntry, flags);
    }

    protected DoodleRenderData(Parcel in) {
        super(in);
        this.mDoodleEntry = (DoodleEntry) in.readParcelable(DoodleEntry.class.getClassLoader());
    }
}
