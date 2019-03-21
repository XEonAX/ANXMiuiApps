package com.miui.gallery.editor.photo.widgets.imageview;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import com.miui.gallery.editor.photo.widgets.imageview.MatrixTransition.MatrixUpdateListener;

public class BitmapGestureParamsHolder {
    private Matrix mAnimTargetMatrix = new Matrix();
    public RectF mBitmapDisplayInitRect = new RectF();
    public RectF mBitmapDisplayInsideRect = new RectF();
    public RectF mBitmapDisplayRect = new RectF();
    public RectF mBitmapRect = new RectF();
    public Matrix mBitmapToDisplayMatrix = new Matrix();
    public Matrix mCanvasMatrix = new Matrix();
    public Matrix mCanvasMatrixInvert = new Matrix();
    public RectF mDisplayInitRect = new RectF();
    public RectF mDisplayInsideRect = new RectF();
    public RectF mDisplayRect = new RectF();
    public Matrix mDisplayToBitmapMatrix = new Matrix();
    private MatrixTransition mMatrixTransition;
    private MatrixUpdateListener mMatrixUpdateListener = new MatrixUpdateListener() {
        public void onMatrixUpdate() {
            BitmapGestureParamsHolder.this.performCanvasMatrixChange();
        }

        public void onAnimationStart() {
        }

        public void onAnimationEnd() {
        }
    };
    private float[] mMatrixValues = new float[9];
    private float mMaxWidth;
    public float mMaxWidthScale;
    private ParamsChangeListener mParamsChangeListener;
    private RectF mRectFTemp = new RectF();
    private float mScaleFocusX = 0.0f;
    private float mScaleFocusY = 0.0f;
    private View mTarget;

    public interface ParamsChangeListener {
        void onBitmapMatrixChanged();

        void onCanvasMatrixChange();
    }

    public BitmapGestureParamsHolder(View view, ParamsChangeListener paramsChangeListener) {
        this.mTarget = view;
        this.mMatrixTransition = new MatrixTransition();
        this.mMatrixTransition.setMatrixUpdateListener(this.mMatrixUpdateListener);
        this.mParamsChangeListener = paramsChangeListener;
    }

    public void setBitmap(Bitmap bitmap) {
        this.mBitmapRect.set(0.0f, 0.0f, (float) bitmap.getWidth(), (float) bitmap.getHeight());
        resetBitmapMatrix();
    }

    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        this.mDisplayRect.set(0.0f, 0.0f, (float) w, (float) h);
        this.mDisplayInitRect.set(this.mDisplayRect);
        resolvePadding(this.mDisplayInitRect);
        resetBitmapMatrix();
    }

    private void resetBitmapMatrix() {
        if (!this.mBitmapRect.isEmpty() && !this.mDisplayInitRect.isEmpty()) {
            refreshBitmapInitRect();
            this.mBitmapDisplayRect.set(this.mBitmapDisplayInitRect);
            this.mDisplayInsideRect.set(this.mDisplayRect);
            this.mBitmapDisplayInsideRect.set(this.mBitmapDisplayRect);
            this.mMaxWidth = this.mBitmapDisplayInitRect.width() * 4.0f;
            this.mMaxWidthScale = this.mBitmapDisplayInitRect.width() * 6.0f;
            onBitmapMatrixChanged();
        }
    }

    private void refreshBitmapInitRect() {
        this.mBitmapToDisplayMatrix.reset();
        this.mBitmapToDisplayMatrix.setRectToRect(this.mBitmapRect, this.mDisplayInitRect, ScaleToFit.CENTER);
        this.mBitmapDisplayInitRect.set(this.mBitmapRect);
        this.mBitmapToDisplayMatrix.mapRect(this.mBitmapDisplayInitRect);
        this.mDisplayToBitmapMatrix.reset();
        this.mDisplayToBitmapMatrix.setRectToRect(this.mBitmapDisplayInitRect, this.mBitmapRect, ScaleToFit.FILL);
    }

    private void resolvePadding(RectF dst) {
        float paddingRight = (float) this.mTarget.getPaddingRight();
        float paddingTop = (float) this.mTarget.getPaddingTop();
        float paddingBottom = (float) this.mTarget.getPaddingBottom();
        dst.left += (float) this.mTarget.getPaddingLeft();
        dst.right -= paddingRight;
        dst.top += paddingTop;
        dst.bottom -= paddingBottom;
    }

    public void performScale(float scaleFactor, float focusX, float focusY) {
        this.mCanvasMatrix.postScale(scaleFactor, scaleFactor, focusX, focusY);
        this.mScaleFocusX = focusX;
        this.mScaleFocusY = focusY;
        performCanvasMatrixChange();
    }

    public void performTransition(float x, float y) {
        float ratioX = 1.0f;
        float ratioY = 1.0f;
        float width = this.mDisplayRect.width() / 2.0f;
        float height = this.mDisplayRect.height() / 2.0f;
        float centerX = this.mDisplayRect.centerX();
        float centerY = this.mDisplayRect.centerY();
        if (x > 0.0f && this.mBitmapDisplayRect.left > this.mDisplayRect.left) {
            ratioX = (centerX - this.mBitmapDisplayRect.left) / width;
        } else if (x < 0.0f && this.mBitmapDisplayRect.right < this.mDisplayRect.right) {
            ratioX = (this.mBitmapDisplayRect.right - centerX) / width;
        }
        if (y > 0.0f && this.mBitmapDisplayRect.top > this.mDisplayRect.top) {
            ratioY = (centerY - this.mBitmapDisplayRect.top) / height;
        } else if (y < 0.0f && this.mBitmapDisplayRect.bottom < this.mDisplayRect.bottom) {
            ratioY = (this.mBitmapDisplayRect.bottom - centerY) / height;
        }
        this.mCanvasMatrix.postTranslate(x * ratioX, y * ratioY);
        performCanvasMatrixChange();
    }

    private void performCanvasMatrixChange() {
        refreshBitmapDisplayRect();
        onCanvasMatrixChange();
    }

    private void refreshBitmapDisplayRect() {
        this.mCanvasMatrix.mapRect(this.mBitmapDisplayRect, this.mBitmapDisplayInitRect);
        this.mCanvasMatrix.invert(this.mCanvasMatrixInvert);
        this.mCanvasMatrixInvert.mapRect(this.mDisplayInsideRect, this.mDisplayRect);
        this.mBitmapDisplayInsideRect.set(this.mBitmapDisplayRect);
        this.mBitmapDisplayInsideRect.intersect(this.mDisplayRect);
    }

    public void resetMatrixWithAnim() {
        this.mCanvasMatrix.getValues(this.mMatrixValues);
        if (this.mMatrixValues[0] <= 1.0f) {
            countAnimMatrixWhenZoomOut(this.mAnimTargetMatrix);
        } else {
            countAnimMatrixWhenZoomIn(this.mAnimTargetMatrix);
        }
        this.mMatrixTransition.animMatrix(this.mCanvasMatrix, this.mAnimTargetMatrix);
    }

    protected void countAnimMatrixWhenZoomOut(Matrix animTargetMatrix) {
        animTargetMatrix.reset();
    }

    protected void countAnimMatrixWhenZoomIn(Matrix animTargetMatrix) {
        animTargetMatrix.set(this.mCanvasMatrix);
        this.mRectFTemp.set(this.mBitmapDisplayRect);
        RectF currentBitmapRect = this.mRectFTemp;
        if (currentBitmapRect.width() > this.mMaxWidth) {
            float scale = this.mMaxWidth / currentBitmapRect.width();
            animTargetMatrix.postScale(scale, scale, this.mScaleFocusX, this.mScaleFocusY);
            animTargetMatrix.mapRect(currentBitmapRect, this.mBitmapDisplayInitRect);
        }
        float offsetX = 0.0f;
        float offsetY = 0.0f;
        float bitmapWidth = currentBitmapRect.width();
        float bitmapHeight = currentBitmapRect.height();
        float bitmapLeft = currentBitmapRect.left;
        float bitmapRight = currentBitmapRect.right;
        float bitmapTop = currentBitmapRect.top;
        float bitmapBottom = currentBitmapRect.bottom;
        float displayWidth = this.mDisplayRect.width();
        float displayHeight = this.mDisplayRect.height();
        float displayLeft = this.mDisplayRect.left;
        float displayRight = this.mDisplayRect.right;
        float displayTop = this.mDisplayRect.top;
        float displayBottom = this.mDisplayRect.bottom;
        if (bitmapLeft > displayLeft) {
            if (bitmapWidth > displayWidth) {
                offsetX = -(bitmapLeft - displayLeft);
            } else {
                offsetX = (-(bitmapLeft - displayLeft)) + ((displayWidth - bitmapWidth) * ((this.mBitmapDisplayInitRect.left - this.mDisplayRect.left) / (this.mDisplayRect.width() - this.mBitmapDisplayInitRect.width())));
            }
        } else if (bitmapRight < displayRight) {
            if (bitmapWidth > displayWidth) {
                offsetX = displayRight - bitmapRight;
            } else {
                offsetX = (displayRight - bitmapRight) - ((displayWidth - bitmapWidth) * (1.0f - ((this.mBitmapDisplayInitRect.left - this.mDisplayRect.left) / (this.mDisplayRect.width() - this.mBitmapDisplayInitRect.width()))));
            }
        }
        if (bitmapTop > displayTop) {
            if (bitmapHeight > displayHeight) {
                offsetY = -(bitmapTop - displayTop);
            } else {
                offsetY = (-(bitmapTop - displayTop)) + ((displayHeight - bitmapHeight) * ((this.mBitmapDisplayInitRect.top - this.mDisplayRect.top) / (this.mDisplayRect.height() - this.mBitmapDisplayInitRect.height())));
            }
        } else if (bitmapBottom < displayBottom) {
            if (bitmapHeight > displayHeight) {
                offsetY = displayBottom - bitmapBottom;
            } else {
                offsetY = (displayBottom - bitmapBottom) - ((displayHeight - bitmapHeight) * (1.0f - ((this.mBitmapDisplayInitRect.top - this.mDisplayRect.top) / (this.mDisplayRect.height() - this.mBitmapDisplayInitRect.height()))));
            }
        }
        animTargetMatrix.postTranslate(offsetX, offsetY);
    }

    public void convertPointToViewPortCoordinate(float[] points) {
        this.mCanvasMatrixInvert.mapPoints(points);
    }

    public void convertPointToBitmapCoordinate(float[] points) {
        convertPointToViewPortCoordinate(points);
        this.mDisplayToBitmapMatrix.mapPoints(points);
    }

    public void convertPointToBitmapCoordinate(MotionEvent e, float[] points) {
        points[0] = e.getX();
        points[1] = e.getY();
        convertPointToBitmapCoordinate(points);
    }

    public float convertDistanceX(float distanceX) {
        return (this.mDisplayInsideRect.width() / this.mDisplayRect.width()) * distanceX;
    }

    public float convertDistanceY(float distanceY) {
        return (this.mDisplayInsideRect.height() / this.mDisplayRect.height()) * distanceY;
    }

    private void onBitmapMatrixChanged() {
        if (this.mParamsChangeListener != null) {
            this.mParamsChangeListener.onBitmapMatrixChanged();
        }
    }

    private void onCanvasMatrixChange() {
        if (this.mParamsChangeListener != null) {
            this.mParamsChangeListener.onCanvasMatrixChange();
        }
    }
}
