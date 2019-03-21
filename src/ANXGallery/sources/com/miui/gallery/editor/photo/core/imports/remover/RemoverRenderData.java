package com.miui.gallery.editor.photo.core.imports.remover;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.miui.gallery.editor.photo.core.RenderData;
import java.util.ArrayList;
import java.util.List;

public class RemoverRenderData extends RenderData {
    public static final Creator<RemoverRenderData> CREATOR = new Creator<RemoverRenderData>() {
        public RemoverRenderData createFromParcel(Parcel source) {
            return new RemoverRenderData(source);
        }

        public RemoverRenderData[] newArray(int size) {
            return new RemoverRenderData[size];
        }
    };
    final List<RemoverPaintData> mPaintData;

    public RemoverRenderData(List<RemoverPaintData> paintData) {
        this.mPaintData = paintData;
    }

    protected void onRelease() {
        for (RemoverPaintData removerPaintData : this.mPaintData) {
            if (removerPaintData.mRemoverNNFData != null) {
                removerPaintData.mRemoverNNFData.releaseMemoryFile();
            }
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeList(this.mPaintData);
    }

    protected RemoverRenderData(Parcel in) {
        super(in);
        this.mPaintData = new ArrayList();
        in.readList(this.mPaintData, RemoverPaintData.class.getClassLoader());
    }
}
