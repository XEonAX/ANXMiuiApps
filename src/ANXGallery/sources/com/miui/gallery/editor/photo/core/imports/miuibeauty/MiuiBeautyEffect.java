package com.miui.gallery.editor.photo.core.imports.miuibeauty;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.miui.filtersdk.beauty.BeautyParameterType;

public class MiuiBeautyEffect implements Parcelable {
    public static final Creator<MiuiBeautyEffect> CREATOR = new Creator<MiuiBeautyEffect>() {
        public MiuiBeautyEffect createFromParcel(Parcel in) {
            return new MiuiBeautyEffect(in);
        }

        public MiuiBeautyEffect[] newArray(int size) {
            return new MiuiBeautyEffect[size];
        }
    };
    public BeautyParameterType mBeautyType;
    public String mName;
    public int mOrdinal;

    public boolean needFace() {
        if (this.mBeautyType == null) {
            return false;
        }
        switch (this.mBeautyType) {
            case WHITEN_STRENGTH:
            case SMOOTH_STRENGTH:
                return false;
            default:
                return true;
        }
    }

    protected MiuiBeautyEffect(Parcel in) {
        this.mOrdinal = in.readInt();
        this.mName = in.readString();
        this.mBeautyType = BeautyParameterType.valueOf(in.readString());
    }

    public MiuiBeautyEffect(String name, int ordinal, BeautyParameterType type) {
        this.mOrdinal = ordinal;
        this.mName = name;
        this.mBeautyType = type;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.mOrdinal);
        dest.writeString(this.mName);
        dest.writeString(this.mBeautyType.name());
    }
}
