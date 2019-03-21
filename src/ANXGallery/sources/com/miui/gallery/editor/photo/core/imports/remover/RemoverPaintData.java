package com.miui.gallery.editor.photo.core.imports.remover;

import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.miui.gallery.editor.photo.core.imports.remover.RemoverGestureView.Curve;
import com.miui.gallery.editor.photo.utils.parcelable.ParcelableGenericUtils;
import com.miui.gallery.editor.photo.utils.parcelable.ParcelableMatrix;
import java.util.ArrayList;
import java.util.List;

public class RemoverPaintData implements Parcelable {
    public static final Creator<RemoverPaintData> CREATOR = new Creator<RemoverPaintData>() {
        public RemoverPaintData createFromParcel(Parcel source) {
            return new RemoverPaintData(source);
        }

        public RemoverPaintData[] newArray(int size) {
            return new RemoverPaintData[size];
        }
    };
    ParcelableMatrix mApplyDoodleMatrix;
    RectF mBmpBounds;
    List<Curve> mCurves;
    ParcelableMatrix mDrawBitmapMatrix;
    RectF mDrawableBounds;
    RectF mExportBounds;
    ParcelableMatrix mExportMatrix;
    RemoverNNFData mRemoverNNFData;
    RectF mViewBounds;

    public RemoverPaintData() {
        this.mExportBounds = new RectF();
        this.mExportMatrix = new ParcelableMatrix();
        this.mBmpBounds = new RectF();
        this.mViewBounds = new RectF();
        this.mDrawableBounds = new RectF();
        this.mDrawBitmapMatrix = new ParcelableMatrix();
        this.mApplyDoodleMatrix = new ParcelableMatrix();
        this.mCurves = new ArrayList();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeParcelable(this.mExportBounds, flags);
        dest.writeParcelable(this.mExportMatrix, flags);
        dest.writeParcelable(this.mBmpBounds, flags);
        dest.writeParcelable(this.mViewBounds, flags);
        dest.writeParcelable(this.mDrawableBounds, flags);
        dest.writeParcelable(this.mDrawBitmapMatrix, flags);
        dest.writeParcelable(this.mApplyDoodleMatrix, flags);
        ParcelableGenericUtils.writeList(dest, flags, this.mCurves);
        dest.writeParcelable(this.mRemoverNNFData, flags);
    }

    protected RemoverPaintData(Parcel in) {
        this.mExportBounds = (RectF) in.readParcelable(RectF.class.getClassLoader());
        this.mExportMatrix = (ParcelableMatrix) in.readParcelable(ParcelableMatrix.class.getClassLoader());
        this.mBmpBounds = (RectF) in.readParcelable(RectF.class.getClassLoader());
        this.mViewBounds = (RectF) in.readParcelable(RectF.class.getClassLoader());
        this.mDrawableBounds = (RectF) in.readParcelable(RectF.class.getClassLoader());
        this.mDrawBitmapMatrix = (ParcelableMatrix) in.readParcelable(ParcelableMatrix.class.getClassLoader());
        this.mApplyDoodleMatrix = (ParcelableMatrix) in.readParcelable(ParcelableMatrix.class.getClassLoader());
        this.mCurves = ParcelableGenericUtils.readList(in);
        this.mRemoverNNFData = (RemoverNNFData) in.readParcelable(RemoverNNFData.class.getClassLoader());
    }
}
