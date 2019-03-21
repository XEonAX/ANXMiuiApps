package com.miui.gallery.editor.photo.core.imports.doodle.painter.shape;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.miui.gallery.editor.photo.core.imports.doodle.painter.DoodleItem;

public class DoodleCircularNode extends DoodleShapeNode {
    public static final Creator<DoodleCircularNode> CREATOR = new Creator<DoodleCircularNode>() {
        public DoodleCircularNode createFromParcel(Parcel source) {
            return new DoodleCircularNode(source);
        }

        public DoodleCircularNode[] newArray(int size) {
            return new DoodleCircularNode[size];
        }
    };
    private static final DoodleItem DOODLE_ITEM = DoodleItem.CIRCULAR;

    public DoodleCircularNode(Resources resources) {
        super(resources);
    }

    protected void init(Resources resources) {
        this.mPaint.setStrokeJoin(Join.ROUND);
        this.mPaint.setStrokeCap(Cap.ROUND);
    }

    public void draw(Canvas canvas) {
        canvas.save();
        configCanvas(canvas, true);
        canvas.drawOval(this.mRectF, this.mPaint);
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

    protected DoodleCircularNode(Parcel in) {
        super(in);
        this.mRectF = (RectF) in.readParcelable(RectF.class.getClassLoader());
    }
}
