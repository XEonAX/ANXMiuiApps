package com.miui.gallery.editor.photo.core.imports.doodle.painter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.util.Log;

public abstract class DoodleNode implements Parcelable {
    private int mColor;
    private float mCorrectionDegrees;
    protected float mDegrees;
    protected PointF mEndPoint;
    private boolean mIsInit;
    private Matrix mMatrix;
    protected final float mOutLineOffsetX;
    protected final float mOutLineOffsetY;
    protected RectF mOutLineRectF;
    protected Paint mPaint;
    protected RectF mRectF;
    protected RectF mRectFTemp;
    protected Rect mRectTemp;
    protected float mRotateX;
    protected float mRotateY;
    protected float mScale;
    protected PointF mStartPoint;
    private RectF mStrokeRect;
    private float mStrokeWidth;
    protected float mUserLocationX;
    protected float mUserLocationY;

    public enum DoodleDrawableType {
        PATH,
        SHAPE,
        VECTOR
    }

    public abstract void appendScale(float f);

    protected abstract void count();

    public abstract float countRotateX();

    public abstract float countRotateY();

    public abstract void draw(Canvas canvas);

    public abstract String getDoodleName();

    public abstract DoodleDrawableType getDoodleType();

    protected abstract void init(Resources resources);

    protected abstract void onReceivePosition(float f, float f2, boolean z);

    public abstract void processOnDownEvent(float f, float f2);

    public abstract void processScaleEvent(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8);

    public DoodleNode(Resources resources) {
        this.mRectF = new RectF();
        this.mOutLineRectF = new RectF();
        this.mStrokeRect = new RectF();
        this.mRectTemp = new Rect();
        this.mRectFTemp = new RectF();
        this.mUserLocationX = 0.0f;
        this.mUserLocationY = 0.0f;
        this.mScale = 1.0f;
        this.mDegrees = 0.0f;
        this.mMatrix = new Matrix();
        this.mRotateX = 0.0f;
        this.mRotateY = 0.0f;
        this.mStartPoint = new PointF();
        this.mEndPoint = new PointF();
        this.mIsInit = false;
        this.mCorrectionDegrees = 5.0f;
        initPaint();
        this.mOutLineOffsetX = resources.getDimension(R.dimen.doodle_outline_offset_x);
        this.mOutLineOffsetY = resources.getDimension(R.dimen.doodle_outline_offset_y);
        init(resources);
    }

    private void initPaint() {
        this.mPaint = new Paint(1);
        this.mPaint.setStyle(Style.STROKE);
    }

    public void countSize() {
        count();
        countDecoration();
        this.mRotateX = countRotateX();
        this.mRotateY = countRotateY();
    }

    public void countDecoration() {
        this.mOutLineRectF.set(this.mRectF);
        this.mOutLineRectF.inset(-(((this.mOutLineRectF.width() * this.mScale) - this.mOutLineRectF.width()) / 2.0f), -(((this.mOutLineRectF.height() * this.mScale) - this.mOutLineRectF.height()) / 2.0f));
        this.mOutLineRectF.inset(-this.mOutLineOffsetX, -this.mOutLineOffsetY);
        this.mStrokeRect.set(this.mOutLineRectF);
    }

    public void getStrokeRectF(RectF dst) {
        dst.set(this.mOutLineRectF);
    }

    public void getRectF(RectF dst) {
        dst.set(this.mRectF);
    }

    public boolean contains(float x, float y) {
        getStrokeRectF(this.mRectFTemp);
        offsetRect(this.mRectFTemp);
        this.mMatrix.reset();
        this.mMatrix.postRotate(-getRotateDegrees(), this.mRotateX + this.mUserLocationX, this.mRotateY + this.mUserLocationY);
        float[] tem = new float[]{x, y};
        this.mMatrix.mapPoints(tem);
        return this.mRectFTemp.contains(tem[0], tem[1]);
    }

    public float getRotateDegrees() {
        return this.mDegrees;
    }

    public void setPaintSize(float size) {
        this.mStrokeWidth = size;
        this.mPaint.setStrokeWidth(size);
    }

    public void setPaintColor(int color) {
        this.mColor = color;
        this.mPaint.setColor(color);
    }

    public void appendUserLocationX(float distanceX) {
        this.mUserLocationX += distanceX;
    }

    public void appendUserLocationY(float distanceY) {
        this.mUserLocationY += distanceY;
    }

    protected void configCanvas(Canvas canvas, boolean rotate) {
        canvas.translate(this.mUserLocationX, this.mUserLocationY);
        if (rotate) {
            canvas.rotate(getRotateDegrees(), this.mRotateX, this.mRotateY);
        }
    }

    private void offsetRect(RectF rectF) {
        rectF.offset(this.mUserLocationX, this.mUserLocationY);
    }

    public void appendDegrees(float degrees) {
        this.mDegrees += degrees;
        if (this.mDegrees < 0.0f) {
            this.mDegrees += 360.0f;
        }
        if (this.mDegrees >= 360.0f) {
            this.mDegrees %= 360.0f;
        }
    }

    public void setDegrees(float degrees) {
        this.mDegrees = degrees;
        if (this.mDegrees < 0.0f) {
            this.mDegrees += 360.0f;
        }
        if (this.mDegrees >= 360.0f) {
            this.mDegrees %= 360.0f;
        }
    }

    public void receivePosition(float x, float y) {
        if (this.mIsInit) {
            this.mEndPoint.set(x, y);
            onReceivePosition(x, y, false);
            return;
        }
        this.mStartPoint.set(x, y);
        this.mIsInit = true;
        onReceivePosition(x, y, true);
    }

    public void processOnUp() {
        refreshRotateCenter();
    }

    public void processRotateEvent(float x1, float y1, float x2, float y2, float distanceX, float distanceY, float rotateIconX, float rotateIconY) {
        float currentX = x2;
        float currentY = y2;
        float rotateX = this.mRotateX + this.mUserLocationX;
        float rotateY = this.mRotateY + this.mUserLocationY;
        appendDegrees((float) Math.toDegrees(Math.atan2((double) (currentY - rotateY), (double) (currentX - rotateX)) - Math.atan2((double) (rotateIconY - rotateY), (double) (rotateIconX - rotateX))));
        setDegrees(resolveRotateDegree(this.mDegrees, this.mCorrectionDegrees));
        countDecoration();
    }

    protected void refreshRectByPoint() {
        refreshRectByPoint(this.mStartPoint, this.mEndPoint);
    }

    protected void refreshRectByPoint(PointF start, PointF end) {
        boolean left;
        boolean top;
        if (start.x <= end.x) {
            left = true;
        } else {
            left = false;
        }
        if (start.y <= end.y) {
            top = true;
        } else {
            top = false;
        }
        this.mRectF.left = left ? start.x : end.x;
        this.mRectF.right = !left ? start.x : end.x;
        this.mRectF.top = top ? start.y : end.y;
        this.mRectF.bottom = !top ? start.y : end.y;
    }

    protected void refreshPointByRect(PointF start, PointF end) {
        start.set(this.mRectF.left, this.mRectF.top);
        end.set(this.mRectF.right, this.mRectF.bottom);
    }

    private void refreshRotateCenter() {
        Log.d("DoodleNode", "--- refreshRotateCenter ---");
        float preRotateX = this.mRotateX;
        float preRotateY = this.mRotateY;
        this.mRotateX = countRotateX();
        this.mRotateY = countRotateY();
        if (preRotateX != this.mRotateX || preRotateY != this.mRotateY) {
            Log.d("DoodleNode", "--- refreshRotateCenter real ---");
            float[] except = new float[]{this.mRotateX, this.mRotateY};
            this.mMatrix.reset();
            this.mMatrix.postRotate(this.mDegrees, preRotateX, preRotateY);
            this.mMatrix.mapPoints(except);
            this.mUserLocationX += except[0] - this.mRotateX;
            this.mUserLocationY += except[1] - this.mRotateY;
            countDecoration();
        }
    }

    private static float resolveRotateDegree(float currentDegree, float correctionDegree) {
        float degrees = currentDegree;
        if (degrees < 0.0f) {
            degrees += 360.0f;
        }
        degrees %= 360.0f;
        if (degrees > 0.0f && degrees < correctionDegree) {
            degrees = 0.0f;
        }
        if (degrees > 360.0f - correctionDegree) {
            degrees = 0.0f;
        }
        if (degrees != 90.0f && degrees > 90.0f - correctionDegree && degrees < 90.0f + correctionDegree) {
            degrees = 90.0f;
        }
        if (degrees != 180.0f && degrees > 180.0f - correctionDegree && degrees < 180.0f + correctionDegree) {
            degrees = 180.0f;
        }
        if (degrees == 270.0f || degrees <= 270.0f - correctionDegree || degrees >= 270.0f + correctionDegree) {
            return degrees;
        }
        return 270.0f;
    }

    public float getRotateX() {
        return this.mRotateX;
    }

    public float getRotateY() {
        return this.mRotateY;
    }

    public float getUserLocationX() {
        return this.mUserLocationX;
    }

    public float getUserLocationY() {
        return this.mUserLocationY;
    }

    public void initForParcelable(Context context) {
        setPaintSize(this.mStrokeWidth);
        setPaintColor(this.mColor);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeFloat(this.mStrokeWidth);
        dest.writeInt(this.mColor);
        dest.writeFloat(this.mUserLocationX);
        dest.writeFloat(this.mUserLocationY);
        dest.writeFloat(getRotateDegrees());
        dest.writeFloat(this.mRotateX);
        dest.writeFloat(this.mRotateY);
        dest.writeParcelable(this.mStartPoint, flags);
        dest.writeParcelable(this.mEndPoint, flags);
    }

    protected DoodleNode(Parcel in) {
        this(GalleryApp.sGetAndroidContext().getResources());
        this.mStrokeWidth = in.readFloat();
        this.mColor = in.readInt();
        this.mUserLocationX = in.readFloat();
        this.mUserLocationY = in.readFloat();
        this.mDegrees = in.readFloat();
        this.mRotateX = in.readFloat();
        this.mRotateY = in.readFloat();
        this.mStartPoint = (PointF) in.readParcelable(PointF.class.getClassLoader());
        this.mEndPoint = (PointF) in.readParcelable(PointF.class.getClassLoader());
    }
}
