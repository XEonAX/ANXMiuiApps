package com.miui.gallery.editor.photo.core.imports.doodle.painter.shape;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.miui.gallery.editor.photo.core.imports.doodle.painter.DoodleItem;

public class DoodleRectangleNode extends DoodleShapeNode {
    public static final Creator<DoodleRectangleNode> CREATOR = new Creator<DoodleRectangleNode>() {
        public DoodleRectangleNode createFromParcel(Parcel source) {
            return new DoodleRectangleNode(source);
        }

        public DoodleRectangleNode[] newArray(int size) {
            return new DoodleRectangleNode[size];
        }
    };
    private static final DoodleItem DOODLE_ITEM = DoodleItem.RECTANGLE;

    public DoodleRectangleNode(Resources resources) {
        super(resources);
    }

    protected void init(Resources resources) {
    }

    public void draw(Canvas canvas) {
        canvas.save();
        configCanvas(canvas, true);
        canvas.drawRect(this.mRectF, this.mPaint);
        canvas.restore();
    }

    public String getDoodleName() {
        return DOODLE_ITEM.name();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeParcelable(this.mRectF, flags);
    }

    protected DoodleRectangleNode(Parcel in) {
        super(in);
        this.mRectF = (RectF) in.readParcelable(RectF.class.getClassLoader());
    }
}
