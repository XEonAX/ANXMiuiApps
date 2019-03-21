package com.miui.gallery.editor.photo.core.imports.doodle.painter.vector;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.imports.doodle.painter.DoodleItem;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public class DoodleArrowNode extends DoodleVectorNode {
    public static final Creator<DoodleArrowNode> CREATOR = new Creator<DoodleArrowNode>() {
        public DoodleArrowNode createFromParcel(Parcel source) {
            return new DoodleArrowNode(source);
        }

        public DoodleArrowNode[] newArray(int size) {
            return new DoodleArrowNode[size];
        }
    };
    private static final DoodleItem DOODLE_ITEM = DoodleItem.ARROW;
    private static Reference<Drawable> sBackground;
    private float mArrowWidth;
    private Drawable mBackground;
    private ColorFilter mColorFilter;
    private float[] mPoint_1;
    private float[] mPoint_2;
    private Matrix mRotateMatrix;

    public DoodleArrowNode(Resources resources) {
        super(resources, true);
        this.mRotateMatrix = new Matrix();
        this.mPoint_1 = new float[2];
        this.mPoint_2 = new float[2];
    }

    protected void init(Resources resources) {
        if (sBackground == null || sBackground.get() == null) {
            sBackground = new WeakReference(resources.getDrawable(R.drawable.doodle_arrow));
        }
        this.mBackground = (Drawable) sBackground.get();
        this.mPaint.setStrokeJoin(Join.ROUND);
        this.mPaint.setStrokeCap(Cap.ROUND);
        this.mColorFilter = new PorterDuffColorFilter(0, Mode.SRC_IN);
    }

    protected void drawSafely(Canvas canvas) {
        canvas.save();
        configCanvas(canvas, false);
        float y = this.mEndPoint.y - this.mStartPoint.y;
        float x = this.mEndPoint.x - this.mStartPoint.x;
        this.mPoint_1[0] = this.mStartPoint.x;
        this.mPoint_1[1] = this.mStartPoint.y;
        this.mPoint_2[0] = this.mEndPoint.x;
        this.mPoint_2[1] = this.mEndPoint.y;
        double toHorizontal = Math.toDegrees(Math.atan2((double) y, (double) x));
        this.mRotateMatrix.setRotate((float) (-toHorizontal), this.mPoint_1[0], this.mPoint_1[1]);
        this.mRotateMatrix.mapPoints(this.mPoint_2);
        float width = this.mPoint_2[0] - this.mPoint_1[0];
        this.mArrowWidth = width;
        width = (float) (((double) width) / Math.sqrt(2.0d));
        canvas.translate(this.mStartPoint.x, this.mStartPoint.y);
        canvas.rotate(45.0f);
        canvas.rotate((float) toHorizontal);
        this.mBackground.setBounds(0, -((int) width), (int) width, 0);
        this.mBackground.setColorFilter(this.mColorFilter);
        this.mBackground.draw(canvas);
        canvas.restore();
    }

    protected void refreshRectByPoint() {
        super.refreshRectByPoint();
        this.mRectF.inset(0.0f, -((this.mArrowWidth * 0.18f) / 2.0f));
    }

    public void setPaintColor(int color) {
        super.setPaintColor(color);
        this.mColorFilter = new PorterDuffColorFilter(color, Mode.SRC_IN);
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

    protected DoodleArrowNode(Parcel in) {
        super(in);
        this.mRotateMatrix = new Matrix();
        this.mPoint_1 = new float[2];
        this.mPoint_2 = new float[2];
    }
}
