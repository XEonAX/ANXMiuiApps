package com.miui.gallery.editor.photo.core.common.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.miui.gallery.editor.photo.core.Metadata;

public class FrameData extends Metadata {
    public static final Creator<FrameData> CREATOR = new Creator<FrameData>() {
        public FrameData createFromParcel(Parcel source) {
            return new FrameData(source);
        }

        public FrameData[] newArray(int size) {
            return new FrameData[size];
        }
    };
    public final int height;
    public final float iconRatio;
    public final int width;

    public FrameData(short priority, String name, int width, int height, float iconRatio) {
        super(priority, name);
        this.width = width;
        this.height = height;
        this.iconRatio = iconRatio;
    }

    public String toString() {
        return String.format("%s:%s", new Object[]{Integer.valueOf(this.width), Integer.valueOf(this.height)});
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.width);
        dest.writeInt(this.height);
        dest.writeFloat(this.iconRatio);
    }

    protected FrameData(Parcel in) {
        super(in);
        this.width = in.readInt();
        this.height = in.readInt();
        this.iconRatio = in.readFloat();
    }
}
