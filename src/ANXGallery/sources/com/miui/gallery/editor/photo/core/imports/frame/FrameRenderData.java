package com.miui.gallery.editor.photo.core.imports.frame;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.imports.frame.FrameEditorView.FrameEntry;

class FrameRenderData extends RenderData {
    public static final Creator<FrameRenderData> CREATOR = new Creator<FrameRenderData>() {
        public FrameRenderData createFromParcel(Parcel source) {
            return new FrameRenderData(source);
        }

        public FrameRenderData[] newArray(int size) {
            return new FrameRenderData[size];
        }
    };
    FrameEntry mFrameEntry;

    FrameRenderData(FrameEntry frameEntry) {
        this.mFrameEntry = frameEntry;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeParcelable(this.mFrameEntry, flags);
    }

    protected FrameRenderData(Parcel in) {
        super(in);
        this.mFrameEntry = (FrameEntry) in.readParcelable(FrameEntry.class.getClassLoader());
    }
}
