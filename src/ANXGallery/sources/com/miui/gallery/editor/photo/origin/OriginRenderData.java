package com.miui.gallery.editor.photo.origin;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.utils.parcelable.ParcelableGenericUtils;
import java.util.List;

public class OriginRenderData implements Parcelable {
    public static final Creator<OriginRenderData> CREATOR = new Creator<OriginRenderData>() {
        public OriginRenderData createFromParcel(Parcel source) {
            return new OriginRenderData(source);
        }

        public OriginRenderData[] newArray(int size) {
            return new OriginRenderData[size];
        }
    };
    Bundle mBundle;
    Uri mOut;
    List<RenderData> mRenderDataList;
    Uri mSource;

    public OriginRenderData(List<RenderData> renderDataList, Uri source, Uri out, Bundle bundle) {
        this.mRenderDataList = renderDataList;
        this.mSource = source;
        this.mOut = out;
        this.mBundle = bundle;
    }

    public void writeToParcel(Parcel dest, int flags) {
        ParcelableGenericUtils.writeList(dest, flags, this.mRenderDataList);
        dest.writeParcelable(this.mSource, flags);
        dest.writeParcelable(this.mOut, flags);
        dest.writeParcelable(this.mBundle, flags);
    }

    protected OriginRenderData(Parcel in) {
        this.mRenderDataList = ParcelableGenericUtils.readList(in);
        this.mSource = (Uri) in.readParcelable(Uri.class.getClassLoader());
        this.mOut = (Uri) in.readParcelable(Uri.class.getClassLoader());
        this.mBundle = (Bundle) in.readParcelable(Bundle.class.getClassLoader());
    }

    public int describeContents() {
        return 0;
    }
}
