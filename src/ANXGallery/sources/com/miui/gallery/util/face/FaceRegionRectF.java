package com.miui.gallery.util.face;

import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public class FaceRegionRectF extends RectF {
    public static final Creator<FaceRegionRectF> CREATOR = new Creator<FaceRegionRectF>() {
        public FaceRegionRectF createFromParcel(Parcel in) {
            FaceRegionRectF r = new FaceRegionRectF();
            r.readFromParcel(in);
            return r;
        }

        public FaceRegionRectF[] newArray(int size) {
            return new FaceRegionRectF[size];
        }
    };
    public int orientation;

    public FaceRegionRectF(float left, float top, float right, float bottom, int orientation) {
        super(left, top, right, bottom);
        this.orientation = orientation;
    }

    public void writeToParcel(Parcel out, int flags) {
        out.writeFloat(this.left);
        out.writeFloat(this.top);
        out.writeFloat(this.right);
        out.writeFloat(this.bottom);
        out.writeInt(this.orientation);
    }

    public void readFromParcel(Parcel in) {
        this.left = in.readFloat();
        this.top = in.readFloat();
        this.right = in.readFloat();
        this.bottom = in.readFloat();
        this.orientation = in.readInt();
    }
}
