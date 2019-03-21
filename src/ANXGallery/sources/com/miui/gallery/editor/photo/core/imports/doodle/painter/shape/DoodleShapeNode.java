package com.miui.gallery.editor.photo.core.imports.doodle.painter.shape;

import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.os.Parcel;
import com.miui.gallery.editor.photo.core.imports.doodle.painter.DoodleNode;
import com.miui.gallery.editor.photo.core.imports.doodle.painter.DoodleNode.DoodleDrawableType;

public abstract class DoodleShapeNode extends DoodleNode {
    private static final DoodleDrawableType DOODLE_TYPE = DoodleDrawableType.SHAPE;
    private float[] mCurrentPoint;
    private float[] mEndPointValue;
    private Matrix mMatrix;
    private float[] mPrePoint;
    private PointF mRealEndPoint;
    private float[] mStartPointValue;

    public DoodleShapeNode(Resources resources) {
        super(resources);
        this.mMatrix = new Matrix();
        this.mPrePoint = new float[2];
        this.mCurrentPoint = new float[2];
        this.mStartPointValue = new float[2];
        this.mEndPointValue = new float[2];
        this.mRealEndPoint = new PointF();
        this.mRectF.setEmpty();
    }

    public DoodleDrawableType getDoodleType() {
        return DOODLE_TYPE;
    }

    protected void onReceivePosition(float x, float y, boolean isFirst) {
        if (!isFirst) {
            this.mRealEndPoint.set(this.mEndPoint);
            fixEnd(this.mRealEndPoint);
            refreshRectByPoint(this.mStartPoint, this.mRealEndPoint);
        }
    }

    public void processOnDownEvent(float x, float y) {
        refreshPointByRect(this.mStartPoint, this.mRealEndPoint);
    }

    public void processScaleEvent(float x1, float y1, float x2, float y2, float distanceX, float distanceY, float scaleIconX, float scaleIconY) {
        this.mCurrentPoint[0] = x2;
        this.mCurrentPoint[1] = y2;
        this.mPrePoint[0] = this.mCurrentPoint[0] - distanceX;
        this.mPrePoint[1] = this.mCurrentPoint[1] - distanceY;
        this.mMatrix.reset();
        this.mMatrix.postRotate(-this.mDegrees, this.mRotateX + this.mUserLocationX, this.mRotateY + this.mUserLocationY);
        this.mMatrix.mapPoints(this.mPrePoint);
        this.mMatrix.mapPoints(this.mCurrentPoint);
        distanceX = this.mCurrentPoint[0] - this.mPrePoint[0];
        distanceY = this.mCurrentPoint[1] - this.mPrePoint[1];
        PointF pointF = this.mEndPoint;
        pointF.x -= distanceX;
        pointF = this.mEndPoint;
        pointF.y -= distanceY;
        this.mRealEndPoint.set(this.mEndPoint);
        fixEnd(this.mRealEndPoint);
        refreshRectByPoint(this.mStartPoint, this.mRealEndPoint);
        countDecoration();
    }

    public void appendScale(float scale) {
        float width = this.mRectF.width();
        float height = this.mRectF.height();
        float widthOffset = ((width * scale) - width) / 2.0f;
        float heightOffset = ((height * scale) - height) / 2.0f;
        if (this.mStartPoint.x > this.mEndPoint.x) {
            widthOffset = -widthOffset;
        }
        if (this.mStartPoint.y > this.mEndPoint.y) {
            heightOffset = -heightOffset;
        }
        PointF pointF = this.mStartPoint;
        pointF.x -= widthOffset;
        pointF = this.mStartPoint;
        pointF.y -= heightOffset;
        pointF = this.mRealEndPoint;
        pointF.x += widthOffset;
        pointF = this.mRealEndPoint;
        pointF.y += heightOffset;
        refreshRectByPoint(this.mStartPoint, this.mRealEndPoint);
        countDecoration();
    }

    public float countRotateX() {
        return this.mRectF.centerX();
    }

    public float countRotateY() {
        return this.mRectF.centerY();
    }

    protected void count() {
        this.mEndPoint.x = this.mRectF.right;
        this.mEndPoint.y = this.mRectF.bottom;
    }

    public void processOnUp() {
        super.processOnUp();
        this.mEndPoint.x = this.mRectF.right;
        this.mEndPoint.y = this.mRectF.bottom;
    }

    private void fixEnd(PointF end) {
        this.mEndPointValue[0] = end.x;
        this.mEndPointValue[1] = end.y;
        this.mStartPointValue[0] = this.mStartPoint.x;
        this.mStartPointValue[1] = this.mStartPoint.y;
        double currentDegrees = Math.toDegrees(Math.atan2((double) (this.mEndPointValue[1] - this.mStartPointValue[1]), (double) (this.mEndPointValue[0] - this.mStartPointValue[0])));
        if (currentDegrees < 0.0d) {
            currentDegrees += 360.0d;
        }
        currentDegrees %= 360.0d;
        float degreeOffset = 0.0f;
        if (currentDegrees != 45.0d && currentDegrees > 39.0d && currentDegrees < 51.0d) {
            degreeOffset = (float) (45.0d - currentDegrees);
        }
        if (degreeOffset != 0.0f) {
            this.mMatrix.reset();
            this.mMatrix.postRotate(degreeOffset, this.mStartPointValue[0], this.mStartPointValue[1]);
            this.mMatrix.mapPoints(this.mEndPointValue);
        }
        end.x = this.mEndPointValue[0];
        end.y = this.mEndPointValue[1];
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
    }

    protected DoodleShapeNode(Parcel in) {
        super(in);
        this.mMatrix = new Matrix();
        this.mPrePoint = new float[2];
        this.mCurrentPoint = new float[2];
        this.mStartPointValue = new float[2];
        this.mEndPointValue = new float[2];
        this.mRealEndPoint = new PointF();
    }
}
