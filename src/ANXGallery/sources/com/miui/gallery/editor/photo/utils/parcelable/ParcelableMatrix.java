package com.miui.gallery.editor.photo.utils.parcelable;

import android.graphics.Matrix;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ParcelableMatrix extends Matrix implements Parcelable {
    public static final Creator<ParcelableMatrix> CREATOR = new Creator<ParcelableMatrix>() {
        public ParcelableMatrix createFromParcel(Parcel source) {
            return new ParcelableMatrix(source);
        }

        public ParcelableMatrix[] newArray(int size) {
            return new ParcelableMatrix[size];
        }
    };

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        float[] f = new float[9];
        getValues(f);
        dest.writeFloatArray(f);
    }

    protected ParcelableMatrix(Parcel in) {
        float[] f = new float[9];
        in.readFloatArray(f);
        setValues(f);
    }
}
