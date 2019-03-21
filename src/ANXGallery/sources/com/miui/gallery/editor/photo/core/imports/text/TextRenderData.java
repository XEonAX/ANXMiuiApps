package com.miui.gallery.editor.photo.core.imports.text;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.imports.text.TextEditorView.TextEntry;

class TextRenderData extends RenderData {
    public static final Creator<TextRenderData> CREATOR = new Creator<TextRenderData>() {
        public TextRenderData createFromParcel(Parcel source) {
            return new TextRenderData(source);
        }

        public TextRenderData[] newArray(int size) {
            return new TextRenderData[size];
        }
    };
    TextEntry mTextEntry;

    TextRenderData(TextEntry textEntry) {
        this.mTextEntry = textEntry;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeParcelable(this.mTextEntry, flags);
    }

    protected TextRenderData(Parcel in) {
        super(in);
        this.mTextEntry = (TextEntry) in.readParcelable(TextEntry.class.getClassLoader());
    }
}
