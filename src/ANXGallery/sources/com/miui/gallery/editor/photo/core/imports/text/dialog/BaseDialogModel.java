package com.miui.gallery.editor.photo.core.imports.text.dialog;

import android.content.res.Resources;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

public abstract class BaseDialogModel implements Parcelable {
    public final int backgroundColor;
    public final float bottomOffsetPercent;
    public final int cornerPosition;
    public String dialogPath;
    public String dialogSmallIconPath;
    public final boolean isCorner;
    public final float leftOffsetPercent;
    public final String name;
    public final float rightOffsetPercent;
    public final float topOffsetPercent;

    public abstract Drawable readDialogDrawable(Resources resources);

    public BaseDialogModel(int backgroundColor, String dialogSmallIconPath, String dialogPath, float leftOffsetPercent, float topOffsetPercent, float rightOffsetPercent, float bottomOffsetPercent, boolean isCorner, int cornerPosition, String name) {
        this.dialogSmallIconPath = dialogSmallIconPath;
        this.dialogPath = dialogPath;
        this.leftOffsetPercent = leftOffsetPercent;
        this.topOffsetPercent = topOffsetPercent;
        this.rightOffsetPercent = rightOffsetPercent;
        this.bottomOffsetPercent = bottomOffsetPercent;
        this.backgroundColor = backgroundColor;
        this.isCorner = isCorner;
        this.cornerPosition = cornerPosition;
        this.name = name;
    }

    public void configRect(RectF rectF, boolean isMirror) {
        float width = rectF.width();
        float height = rectF.height();
        rectF.left = (isMirror ? this.rightOffsetPercent * width : this.leftOffsetPercent * width) + rectF.left;
        rectF.right -= isMirror ? this.leftOffsetPercent * width : this.rightOffsetPercent * width;
        rectF.top += this.topOffsetPercent * height;
        rectF.bottom -= this.bottomOffsetPercent * height;
    }

    public boolean hasDialog() {
        return !TextUtils.isEmpty(this.dialogPath);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.backgroundColor);
        dest.writeFloat(this.leftOffsetPercent);
        dest.writeFloat(this.topOffsetPercent);
        dest.writeFloat(this.rightOffsetPercent);
        dest.writeFloat(this.bottomOffsetPercent);
        dest.writeByte(this.isCorner ? (byte) 1 : (byte) 0);
        dest.writeInt(this.cornerPosition);
        dest.writeString(this.name);
    }

    protected BaseDialogModel(Parcel in) {
        this.backgroundColor = in.readInt();
        this.leftOffsetPercent = in.readFloat();
        this.topOffsetPercent = in.readFloat();
        this.rightOffsetPercent = in.readFloat();
        this.bottomOffsetPercent = in.readFloat();
        this.isCorner = in.readByte() != (byte) 0;
        this.cornerPosition = in.readInt();
        this.name = in.readString();
    }
}
