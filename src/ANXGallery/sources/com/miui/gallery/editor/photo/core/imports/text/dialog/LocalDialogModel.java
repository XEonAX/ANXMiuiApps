package com.miui.gallery.editor.photo.core.imports.text.dialog;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;

public class LocalDialogModel extends BaseDialogModel {
    public static final Creator<LocalDialogModel> CREATOR = new Creator<LocalDialogModel>() {
        public LocalDialogModel createFromParcel(Parcel source) {
            return new LocalDialogModel(source);
        }

        public LocalDialogModel[] newArray(int size) {
            return new LocalDialogModel[size];
        }
    };
    private int mDialogRes;

    public LocalDialogModel(int backgroundColor, int dialogSmallIconRes, int dialogRes, float leftOffsetPercent, float topOffsetPercent, float rightOffsetPercent, float bottomOffsetPercent, boolean isCorner, int cornerPosition, String name) {
        super(backgroundColor, Scheme.DRAWABLE.wrap(Integer.toString(dialogSmallIconRes)), Scheme.DRAWABLE.wrap(Integer.toString(dialogRes)), leftOffsetPercent, topOffsetPercent, rightOffsetPercent, bottomOffsetPercent, isCorner, cornerPosition, name);
        this.mDialogRes = dialogRes;
    }

    public boolean hasDialog() {
        return this.mDialogRes != 0;
    }

    public Drawable readDialogDrawable(Resources resources) {
        if (hasDialog()) {
            return resources.getDrawable(this.mDialogRes);
        }
        return null;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.mDialogRes);
    }

    protected LocalDialogModel(Parcel in) {
        super(in);
        this.mDialogRes = in.readInt();
    }
}
