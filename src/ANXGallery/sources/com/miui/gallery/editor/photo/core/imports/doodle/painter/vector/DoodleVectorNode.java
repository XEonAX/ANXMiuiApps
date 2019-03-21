package com.miui.gallery.editor.photo.core.imports.doodle.painter.vector;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Parcel;
import com.miui.gallery.editor.photo.core.imports.doodle.painter.DoodleNode;
import com.miui.gallery.editor.photo.core.imports.doodle.painter.DoodleNode.DoodleDrawableType;

public abstract class DoodleVectorNode extends DoodleNode {
    private static final DoodleDrawableType DOODLE_TYPE = DoodleDrawableType.VECTOR;
    private float[] mCurrentPoint;
    private float[] mEnd;
    private boolean mInverse;
    private Matrix mMatrix;
    private float[] mStart;

    protected abstract void drawSafely(Canvas canvas);

    public DoodleVectorNode(Resources resources) {
        super(resources);
        this.mStart = new float[2];
        this.mEnd = new float[2];
        this.mMatrix = new Matrix();
        this.mCurrentPoint = new float[2];
        this.mInverse = false;
    }

    public DoodleVectorNode(Resources resources, boolean inverse) {
        super(resources);
        this.mStart = new float[2];
        this.mEnd = new float[2];
        this.mMatrix = new Matrix();
        this.mCurrentPoint = new float[2];
        this.mInverse = inverse;
    }

    public void processScaleEvent(float x1, float y1, float x2, float y2, float distanceX, float distanceY, float scaleIconX, float scaleIconY) {
        this.mCurrentPoint[0] = x2;
        this.mCurrentPoint[1] = y2;
        float rotateX = this.mRotateX + this.mUserLocationX;
        float rotateY = this.mRotateY + this.mUserLocationY;
        appendDegrees((float) Math.toDegrees(Math.atan2((double) (this.mCurrentPoint[1] - rotateY), (double) (this.mCurrentPoint[0] - rotateX)) - Math.atan2((double) (scaleIconY - rotateY), (double) (scaleIconX - rotateX))));
        this.mMatrix.reset();
        this.mMatrix.postRotate(-getRotateDegrees(), rotateX, rotateY);
        this.mMatrix.mapPoints(this.mCurrentPoint);
        float heightHalf = this.mOutLineRectF.height() / 2.0f;
        float[] fArr = this.mCurrentPoint;
        fArr[1] = fArr[1] - heightHalf;
        if (this.mInverse) {
            fArr = this.mCurrentPoint;
            fArr[0] = fArr[0] + this.mOutLineOffsetX;
        } else {
            fArr = this.mCurrentPoint;
            fArr[0] = fArr[0] - this.mOutLineOffsetX;
        }
        this.mMatrix.reset();
        this.mMatrix.postRotate(getRotateDegrees(), rotateX, rotateY);
        this.mMatrix.mapPoints(this.mCurrentPoint);
        if (this.mInverse) {
            this.mStartPoint.x = this.mCurrentPoint[0] - this.mUserLocationX;
            this.mStartPoint.y = this.mCurrentPoint[1] - this.mUserLocationY;
        } else {
            this.mEndPoint.x = this.mCurrentPoint[0] - this.mUserLocationX;
            this.mEndPoint.y = this.mCurrentPoint[1] - this.mUserLocationY;
        }
        refreshRectByPoint();
        countDecoration();
    }

    public void processRotateEvent(float x1, float y1, float x2, float y2, float distanceX, float distanceY, float scaleIconX, float scaleIconY) {
    }

    protected void refreshRectByPoint() {
        float width = this.mPaint.getStrokeWidth() / 2.0f;
        setDegrees((float) Math.toDegrees(Math.atan2((double) (this.mEndPoint.y - this.mStartPoint.y), (double) (this.mEndPoint.x - this.mStartPoint.x))));
        this.mStart[0] = this.mStartPoint.x;
        this.mStart[1] = this.mStartPoint.y;
        this.mEnd[0] = this.mEndPoint.x;
        this.mEnd[1] = this.mEndPoint.y;
        this.mRotateX = countRotateX();
        this.mRotateY = countRotateY();
        this.mMatrix.reset();
        this.mMatrix.postRotate(-getRotateDegrees(), this.mRotateX, this.mRotateY);
        this.mMatrix.mapPoints(this.mStart);
        this.mMatrix.mapPoints(this.mEnd);
        this.mRectF.left = this.mStart[0];
        this.mRectF.right = this.mEnd[0];
        this.mRectF.top = this.mStart[1] - width;
        this.mRectF.bottom = this.mStart[1] + width;
        this.mRotateX = countRotateX();
        this.mRotateY = countRotateY();
    }

    public DoodleDrawableType getDoodleType() {
        return DOODLE_TYPE;
    }

    protected void onReceivePosition(float x, float y, boolean isFirst) {
        if (!isFirst) {
            refreshRectByPoint();
        }
    }

    public void draw(Canvas canvas) {
        if (!this.mRectF.isEmpty()) {
            drawSafely(canvas);
        }
    }

    public void appendScale(float scale) {
        float width = this.mRectF.width();
        float widthOffset = ((width * scale) - width) / 2.0f;
        this.mMatrix.reset();
        this.mMatrix.postRotate(-this.mDegrees, this.mRectF.centerX(), this.mRectF.centerY());
        this.mStart[0] = this.mStartPoint.x;
        this.mStart[1] = this.mStartPoint.y;
        this.mEnd[0] = this.mEndPoint.x;
        this.mEnd[1] = this.mEndPoint.y;
        this.mMatrix.mapPoints(this.mStart);
        this.mMatrix.mapPoints(this.mEnd);
        float[] fArr = this.mStart;
        fArr[0] = fArr[0] - widthOffset;
        fArr = this.mEnd;
        fArr[0] = fArr[0] + widthOffset;
        this.mMatrix.reset();
        this.mMatrix.postRotate(this.mDegrees, this.mRectF.centerX(), this.mRectF.centerY());
        this.mMatrix.mapPoints(this.mStart);
        this.mMatrix.mapPoints(this.mEnd);
        this.mStartPoint.x = this.mStart[0];
        this.mStartPoint.y = this.mStart[1];
        this.mEndPoint.x = this.mEnd[0];
        this.mEndPoint.y = this.mEnd[1];
        refreshRectByPoint();
        countDecoration();
    }

    public void processOnDownEvent(float x, float y) {
    }

    public float countRotateX() {
        return this.mInverse ? this.mEndPoint.x : this.mStartPoint.x;
    }

    public float countRotateY() {
        return this.mInverse ? this.mEndPoint.y : this.mStartPoint.y;
    }

    protected void count() {
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeParcelable(this.mRectF, flags);
    }

    protected DoodleVectorNode(Parcel in) {
        super(in);
        this.mStart = new float[2];
        this.mEnd = new float[2];
        this.mMatrix = new Matrix();
        this.mCurrentPoint = new float[2];
        this.mRectF = (RectF) in.readParcelable(RectF.class.getClassLoader());
    }
}
