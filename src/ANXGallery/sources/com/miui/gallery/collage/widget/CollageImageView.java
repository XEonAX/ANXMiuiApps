package com.miui.gallery.collage.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import com.miui.gallery.R;
import com.miui.gallery.collage.render.CollageRender;
import com.miui.gallery.collage.render.CollageRender.BitmapRenderData;
import com.miui.gallery.editor.photo.widgets.imageview.MatrixTransition;
import com.miui.gallery.editor.photo.widgets.imageview.MatrixTransition.MatrixUpdateListener;

public class CollageImageView extends View {
    private final float MAX_SCALE = 4.0f;
    private final float MAX_SCALE_TOUCH = 6.0f;
    private boolean mActivating = false;
    private Matrix mAnimTargetMatrix = new Matrix();
    private int mBackgroundColor;
    private Paint mBackgroundPaint = new Paint();
    private RectF mBitmapDisplayInitRect = new RectF();
    private RectF mBitmapDisplayRect = new RectF();
    private Matrix mBitmapMatrix = new Matrix();
    private Paint mBitmapPaint = new Paint(3);
    private RectF mBitmapRect = new RectF();
    private Matrix mCanvasMatrix = new Matrix();
    private RectF mDisplayInitRect = new RectF();
    private RectF mDisplayRect = new RectF();
    private boolean mDrawBitmap = true;
    private Matrix mDrawingMatrix = new Matrix();
    private GradientDrawable mGradientDrawable = new GradientDrawable();
    private Drawable mMask;
    private MatrixListener mMatrixListener = new MatrixListener();
    private MatrixTransition mMatrixTransition;
    private float[] mMatrixValues = new float[9];
    private float mMaxWidth;
    private float mMaxWidthScale;
    private boolean mMirror = false;
    private Bitmap mOriginBitmap;
    private float mRadius = 0.0f;
    private RectF mRectFTemp = new RectF();
    private int mRotateDegree = 0;
    private PorterDuffXfermode mXfermodeSrcIn = new PorterDuffXfermode(Mode.SRC_IN);
    private PorterDuffXfermode mXfermodeSrcOut = new PorterDuffXfermode(Mode.SRC_OUT);

    private class MatrixListener implements MatrixUpdateListener {
        private MatrixListener() {
        }

        public void onMatrixUpdate() {
            CollageImageView.this.invalidate();
            CollageImageView.this.refreshBitmapDisplayRect();
        }

        public void onAnimationStart() {
        }

        public void onAnimationEnd() {
            CollageImageView.this.mActivating = false;
        }
    }

    public CollageImageView(Context context) {
        super(context);
        init();
    }

    private void init() {
        this.mMatrixTransition = new MatrixTransition();
        this.mMatrixTransition.setMatrixUpdateListener(this.mMatrixListener);
        this.mBackgroundColor = getResources().getColor(R.color.collage_item_background);
        this.mBackgroundPaint.setStyle(Style.FILL);
        this.mBackgroundPaint.setColor(this.mBackgroundColor);
        this.mGradientDrawable.setColor(-1);
    }

    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.mDisplayRect.set(0.0f, 0.0f, (float) w, (float) h);
        this.mDisplayInitRect.set(this.mDisplayRect);
        resolvePadding(this.mDisplayInitRect);
        resetBitmapMatrix();
    }

    public void setBitmap(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        this.mOriginBitmap = bitmap;
        this.mBitmapRect.set(0.0f, 0.0f, (float) width, (float) height);
        resetBitmapMatrix();
    }

    protected void onDraw(Canvas canvas) {
        if (this.mOriginBitmap != null) {
            this.mDrawingMatrix.reset();
            this.mDrawingMatrix.postConcat(this.mBitmapMatrix);
            this.mDrawingMatrix.postConcat(this.mCanvasMatrix);
            canvas.save();
            canvas.clipRect(this.mDisplayRect);
            if (this.mMask != null) {
                drawBitmapWithMask(canvas);
            } else if (this.mRadius > 0.0f) {
                drawBitmapWithRadius(canvas);
            } else {
                drawBitmap(canvas);
            }
            canvas.restore();
        }
    }

    private void drawBitmap(Canvas canvas) {
        canvas.drawRect(this.mDisplayRect, this.mBackgroundPaint);
        if (this.mDrawBitmap) {
            canvas.drawBitmap(this.mOriginBitmap, this.mDrawingMatrix, this.mBitmapPaint);
        }
    }

    private void drawBitmapWithMaskDrawable(Canvas canvas, Drawable mask, boolean reverse) {
        canvas.saveLayer(this.mDisplayRect, null, 31);
        mask.draw(canvas);
        this.mBackgroundPaint.setXfermode(reverse ? this.mXfermodeSrcOut : this.mXfermodeSrcIn);
        this.mBitmapPaint.setXfermode(this.mXfermodeSrcIn);
        drawBitmap(canvas);
        this.mBitmapPaint.setXfermode(null);
        this.mBackgroundPaint.setXfermode(null);
        canvas.restore();
    }

    private void drawBitmapWithRadius(Canvas canvas) {
        this.mGradientDrawable.setBounds(0, 0, getWidth(), getHeight());
        this.mGradientDrawable.setCornerRadius(this.mRadius);
        drawBitmapWithMaskDrawable(canvas, this.mGradientDrawable, false);
    }

    private void drawBitmapWithMask(Canvas canvas) {
        this.mMask.setBounds(0, 0, getWidth(), getHeight());
        drawBitmapWithMaskDrawable(canvas, this.mMask, true);
    }

    private void resetBitmapMatrix() {
        if (!this.mBitmapRect.isEmpty() && !this.mDisplayInitRect.isEmpty()) {
            CollageRender.initBitmapMatrix(this.mBitmapRect, this.mBitmapMatrix, this.mDisplayInitRect, this.mMirror, this.mRotateDegree, this.mBitmapDisplayInitRect);
            resetInitParams();
            this.mCanvasMatrix.reset();
            invalidate();
        }
    }

    private void resetBitmapMatrixWithAnim() {
        if (!this.mBitmapRect.isEmpty() && !this.mDisplayInitRect.isEmpty()) {
            CollageRender.initBitmapMatrix(this.mBitmapRect, this.mAnimTargetMatrix, this.mDisplayInitRect, this.mMirror, this.mRotateDegree, this.mBitmapDisplayInitRect);
            resetInitParams();
            this.mMatrixTransition.animMatrix(this.mBitmapMatrix, this.mAnimTargetMatrix, this.mCanvasMatrix, new Matrix());
        }
    }

    private void resetInitParams() {
        this.mBitmapDisplayRect.set(this.mBitmapDisplayInitRect);
        this.mMaxWidth = this.mBitmapDisplayInitRect.width() * 4.0f;
        this.mMaxWidthScale = this.mBitmapDisplayInitRect.width() * 6.0f;
    }

    private void resetMatrixWithAnim() {
        this.mActivating = true;
        this.mCanvasMatrix.getValues(this.mMatrixValues);
        if (this.mMatrixValues[0] <= 1.0f) {
            countAnimMatrixWhenZoomOut(this.mAnimTargetMatrix);
        } else {
            countAnimMatrixWhenZoomIn(this.mAnimTargetMatrix);
        }
        this.mMatrixTransition.animMatrix(this.mCanvasMatrix, this.mAnimTargetMatrix);
    }

    protected void countAnimMatrixWhenZoomOut(Matrix animTargetMatrix) {
        animTargetMatrix.set(this.mCanvasMatrix);
        animTargetMatrix.getValues(this.mMatrixValues);
        RectF bitmapRect = this.mRectFTemp;
        bitmapRect.set(this.mBitmapDisplayRect);
        float scale = 1.0f / this.mMatrixValues[0];
        animTargetMatrix.postScale(scale, scale, this.mDisplayInitRect.centerX(), this.mDisplayInitRect.centerY());
        animTargetMatrix.mapRect(bitmapRect, this.mBitmapDisplayInitRect);
        float offsetX = 0.0f;
        float offsetY = 0.0f;
        if (bitmapRect.left > this.mDisplayInitRect.left) {
            offsetX = this.mDisplayInitRect.left - bitmapRect.left;
        } else if (bitmapRect.right < this.mDisplayInitRect.right) {
            offsetX = this.mDisplayInitRect.right - bitmapRect.right;
        }
        if (bitmapRect.top > this.mDisplayInitRect.top) {
            offsetY = this.mDisplayInitRect.top - bitmapRect.top;
        } else if (bitmapRect.bottom < this.mDisplayInitRect.bottom) {
            offsetY = this.mDisplayInitRect.bottom - bitmapRect.bottom;
        }
        animTargetMatrix.postTranslate(offsetX, offsetY);
    }

    protected void countAnimMatrixWhenZoomIn(Matrix animTargetMatrix) {
        animTargetMatrix.set(this.mCanvasMatrix);
        this.mRectFTemp.set(this.mBitmapDisplayRect);
        RectF currentBitmapRect = this.mRectFTemp;
        if (currentBitmapRect.width() > this.mMaxWidth) {
            float scale = this.mMaxWidth / currentBitmapRect.width();
            animTargetMatrix.postScale(scale, scale, this.mDisplayInitRect.centerX(), this.mDisplayInitRect.centerY());
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
                offsetX = (-(bitmapLeft - displayLeft)) + ((displayWidth - bitmapWidth) * 0.5f);
            }
        } else if (bitmapRight < displayRight) {
            if (bitmapWidth > displayWidth) {
                offsetX = displayRight - bitmapRight;
            } else {
                offsetX = (displayRight - bitmapRight) - ((displayWidth - bitmapWidth) * 0.5f);
            }
        }
        if (bitmapTop > displayTop) {
            if (bitmapHeight > displayHeight) {
                offsetY = -(bitmapTop - displayTop);
            } else {
                offsetY = (-(bitmapTop - displayTop)) + ((displayHeight - bitmapHeight) * 0.5f);
            }
        } else if (bitmapBottom < displayBottom) {
            if (bitmapHeight > displayHeight) {
                offsetY = displayBottom - bitmapBottom;
            } else {
                offsetY = (displayBottom - bitmapBottom) - ((displayHeight - bitmapHeight) * 0.5f);
            }
        }
        animTargetMatrix.postTranslate(offsetX, offsetY);
    }

    private void resolvePadding(RectF dst) {
        float paddingRight = (float) getPaddingRight();
        float paddingTop = (float) getPaddingTop();
        float paddingBottom = (float) getPaddingBottom();
        dst.left += (float) getPaddingLeft();
        dst.right -= paddingRight;
        dst.top += paddingTop;
        dst.bottom -= paddingBottom;
    }

    public Bitmap getBitmap() {
        return this.mOriginBitmap;
    }

    public void setDrawBitmap(boolean drawBitmap) {
        this.mDrawBitmap = drawBitmap;
        invalidate();
    }

    public void rotate() {
        this.mRotateDegree -= 90;
        this.mRotateDegree %= 360;
        resetBitmapMatrixWithAnim();
    }

    public void mirror() {
        this.mMirror = !this.mMirror;
        resetBitmapMatrix();
    }

    public void resetDrawData(Bitmap bitmap, int rotateDegree, boolean mirror) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        this.mOriginBitmap = bitmap;
        this.mBitmapRect.set(0.0f, 0.0f, (float) width, (float) height);
        this.mRotateDegree = rotateDegree;
        this.mMirror = mirror;
        this.mDrawBitmap = true;
        resetBitmapMatrix();
    }

    public void transition(float x, float y) {
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
        refreshBitmapDisplayRect();
        invalidate();
    }

    public void appendScale(float scale, float x, float y) {
        if (scale <= 1.0f || this.mBitmapDisplayRect.width() <= this.mMaxWidthScale) {
            this.mCanvasMatrix.postScale(scale, scale, x - ((float) getLeft()), y - ((float) getTop()));
            refreshBitmapDisplayRect();
            invalidate();
        }
    }

    public void resetBitmapLocation() {
        resetMatrixWithAnim();
    }

    private void refreshBitmapDisplayRect() {
        this.mCanvasMatrix.mapRect(this.mBitmapDisplayRect, this.mBitmapDisplayInitRect);
    }

    public BitmapRenderData generateBitmapRenderData() {
        Matrix invert = new Matrix();
        RectF insideRect = new RectF();
        this.mCanvasMatrix.invert(invert);
        invert.mapRect(insideRect, this.mBitmapDisplayInitRect);
        insideRect.left = (insideRect.left - this.mBitmapDisplayInitRect.left) / this.mBitmapDisplayInitRect.width();
        insideRect.right = (insideRect.right - this.mBitmapDisplayInitRect.left) / this.mBitmapDisplayInitRect.width();
        insideRect.top = (insideRect.top - this.mBitmapDisplayInitRect.top) / this.mBitmapDisplayInitRect.height();
        insideRect.bottom = (insideRect.bottom - this.mBitmapDisplayInitRect.top) / this.mBitmapDisplayInitRect.height();
        BitmapRenderData bitmapRenderData = new BitmapRenderData();
        bitmapRenderData.bitmap = this.mOriginBitmap;
        bitmapRenderData.rotate = this.mRotateDegree;
        bitmapRenderData.mirror = this.mMirror;
        bitmapRenderData.bitmapInsideRect.set(insideRect);
        bitmapRenderData.transition = true;
        bitmapRenderData.maskDrawable = this.mMask;
        bitmapRenderData.radius = this.mRadius;
        return bitmapRenderData;
    }

    public void setMask(Drawable mask) {
        this.mMask = mask;
        invalidate();
    }

    public void setRadius(float radius) {
        this.mRadius = radius;
        invalidate();
    }

    public void getCanvasMatrix(Matrix dst) {
        dst.set(this.mCanvasMatrix);
    }

    public void getDisplayRect(RectF dst) {
        dst.set(this.mDisplayRect);
    }

    public boolean isMirror() {
        return this.mMirror;
    }

    public int getRotateDegree() {
        return this.mRotateDegree;
    }

    public boolean isActivating() {
        return this.mActivating;
    }

    public void setBackgroundColor(int backgroundColor) {
        this.mBackgroundColor = backgroundColor;
    }
}
