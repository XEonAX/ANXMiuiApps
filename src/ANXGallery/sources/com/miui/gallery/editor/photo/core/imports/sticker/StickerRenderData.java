package com.miui.gallery.editor.photo.core.imports.sticker;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.imports.sticker.StickerEditorView.StickerEntry;

class StickerRenderData extends RenderData {
    public static final Creator<StickerRenderData> CREATOR = new Creator<StickerRenderData>() {
        public StickerRenderData createFromParcel(Parcel source) {
            return new StickerRenderData(source);
        }

        public StickerRenderData[] newArray(int size) {
            return new StickerRenderData[size];
        }
    };
    StickerEntry mEntry;

    public StickerRenderData(StickerEntry entry) {
        this.mEntry = entry;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeParcelable(this.mEntry, flags);
    }

    protected StickerRenderData(Parcel in) {
        super(in);
        this.mEntry = (StickerEntry) in.readParcelable(StickerEntry.class.getClassLoader());
    }
}
