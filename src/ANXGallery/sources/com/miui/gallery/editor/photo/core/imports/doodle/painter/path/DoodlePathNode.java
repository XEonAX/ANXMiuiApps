package com.miui.gallery.editor.photo.core.imports.doodle.painter.path;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.miui.gallery.editor.photo.core.imports.doodle.painter.DoodleItem;
import com.miui.gallery.editor.photo.core.imports.doodle.painter.DoodleNode;
import com.miui.gallery.editor.photo.core.imports.doodle.painter.DoodleNode.DoodleDrawableType;
import com.miui.gallery.editor.photo.utils.parcelable.ParcelableMatrix;
import com.miui.gallery.editor.photo.utils.parcelable.ParcelablePathUtils;
import java.util.ArrayList;
import java.util.List;

public class DoodlePathNode extends DoodleNode implements Parcelable {
    public static final Creator<DoodlePathNode> CREATOR = new Creator<DoodlePathNode>() {
        public DoodlePathNode createFromParcel(Parcel source) {
            return new DoodlePathNode(source);
        }

        public DoodlePathNode[] newArray(int size) {
            return new DoodlePathNode[size];
        }
    };
    private static final DoodleItem DOODLE_ITEM = DoodleItem.PATH;
    private static final DoodleDrawableType DOODLE_TYPE = DoodleDrawableType.PATH;
    private Matrix mMatrix = new Matrix();
    private ParcelableMatrix mParcelableMatrix = new ParcelableMatrix();
    private Path mPath = new Path();
    private List<PointF> mPointFList = new ArrayList();

    public DoodlePathNode(Resources resources) {
        super(resources);
    }

    protected void init(Resources resources) {
        this.mPaint.setStrokeJoin(Join.ROUND);
        this.mPaint.setStrokeCap(Cap.ROUND);
    }

    public void initForParcelable(Context context) {
        super.initForParcelable(context);
        this.mPaint.setStrokeJoin(Join.ROUND);
        this.mPaint.setStrokeCap(Cap.ROUND);
        this.mPath = ParcelablePathUtils.getPathFromPointList(this.mPointFList);
        this.mPath.transform(this.mParcelableMatrix);
    }

    public void draw(Canvas canvas) {
        canvas.save();
        configCanvas(canvas, true);
        canvas.drawPath(this.mPath, this.mPaint);
        canvas.restore();
    }

    public DoodleDrawableType getDoodleType() {
        return DOODLE_TYPE;
    }

    public String getDoodleName() {
        return DOODLE_ITEM.name();
    }

    protected void onReceivePosition(float x, float y, boolean isFirst) {
        append(x, y);
    }

    public void count() {
        this.mPath.computeBounds(this.mRectF, true);
    }

    public void append(float x, float y) {
        if (this.mPath.isEmpty()) {
            this.mPath.moveTo(x, y);
        } else {
            PointF prePoint = (PointF) this.mPointFList.get(this.mPointFList.size() - 1);
            this.mPath.quadTo(prePoint.x, prePoint.y, (prePoint.x + x) / 2.0f, (prePoint.y + y) / 2.0f);
        }
        this.mPointFList.add(new PointF(x, y));
    }

    public void appendScale(float scale) {
        if (scale >= 1.0f || ((double) this.mScale) >= 0.2d) {
            this.mScale *= scale;
            this.mMatrix.reset();
            this.mMatrix.postScale(scale, scale, this.mRectF.centerX(), this.mRectF.centerY());
            this.mParcelableMatrix.postConcat(this.mMatrix);
            this.mPath.transform(this.mMatrix);
            countDecoration();
        }
    }

    public void processOnDownEvent(float x, float y) {
    }

    public void processScaleEvent(float x1, float y1, float x2, float y2, float distanceX, float distanceY, float scaleIconX, float scaleIconY) {
        float currentX = x2;
        float currentY = y2;
        getRectF(this.mRectFTemp);
        this.mRectFTemp.offset(this.mUserLocationX, this.mUserLocationY);
        float centerX = this.mRectFTemp.centerX();
        float centerY = this.mRectFTemp.centerY();
        appendScale((float) (Math.hypot((double) (currentX - centerX), (double) (currentY - centerY)) / Math.hypot((double) (scaleIconX - centerX), (double) (scaleIconY - centerY))));
    }

    public float countRotateX() {
        return this.mRectF.centerX();
    }

    public float countRotateY() {
        return this.mRectF.centerY();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeTypedList(this.mPointFList);
        dest.writeParcelable(this.mParcelableMatrix, flags);
    }

    protected DoodlePathNode(Parcel in) {
        super(in);
        this.mPointFList = in.createTypedArrayList(PointF.CREATOR);
        this.mParcelableMatrix = (ParcelableMatrix) in.readParcelable(ParcelableMatrix.class.getClassLoader());
    }
}
