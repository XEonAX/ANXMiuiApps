package com.miui.gallery.editor.photo.core.imports.doodle.painter.vector;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.miui.gallery.editor.photo.core.imports.doodle.painter.DoodleItem;

public class DoodleLineNode extends DoodleVectorNode {
    public static final Creator<DoodleLineNode> CREATOR = new Creator<DoodleLineNode>() {
        public DoodleLineNode createFromParcel(Parcel source) {
            return new DoodleLineNode(source);
        }

        public DoodleLineNode[] newArray(int size) {
            return new DoodleLineNode[size];
        }
    };
    private static final DoodleItem DOODLE_ITEM = DoodleItem.LINE;

    public DoodleLineNode(Resources resources) {
        super(resources);
    }

    protected void init(Resources resources) {
    }

    public void drawSafely(Canvas canvas) {
        canvas.save();
        configCanvas(canvas, false);
        canvas.drawLine(this.mStartPoint.x, this.mStartPoint.y, this.mEndPoint.x, this.mEndPoint.y, this.mPaint);
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
    }

    protected DoodleLineNode(Parcel in) {
        super(in);
    }
}
