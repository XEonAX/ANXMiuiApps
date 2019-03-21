package com.miui.gallery.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import com.miui.gallery.R;
import java.util.Random;

public class SlideShowView extends View {
    private AlphaAnimation mAlphaAnim;
    private SlideAnimation mCurrentAnim;
    private Bitmap mCurrentBitmap;
    private boolean mIsAnimEnable;
    private boolean mIsScaleOnlyMode;
    private Paint mPaint;
    private SlideAnimation mPreAnim;
    private Bitmap mPreBitmap;
    private OnRefreshedListener mRefreshedListener;
    private int mScaleMode;
    private int mSlideDuration;
    private Transformation mTransFormation;

    private class FloatAnimation extends AlphaAnimation {
        FloatAnimation(float from, float to, long duration) {
            super(from, to);
            setDuration(duration);
            setInterpolator(new LinearInterpolator());
        }
    }

    public interface OnRefreshedListener {
        void onRefreshed();
    }

    private class SlideAnimation extends Animation {
        private Matrix mBaseMatrix;
        private int mHeight;
        private PointF mMovingVector;
        private int mRotation;
        private PointF mScalePoint;
        private int mWidth;

        SlideAnimation(int width, int height, int rotation, long duration) {
            RectF mTempSrc;
            this.mWidth = width;
            this.mHeight = height;
            this.mRotation = rotation;
            Random random = new Random();
            this.mMovingVector = new PointF((0.2f * ((float) this.mWidth)) * (random.nextFloat() - 0.5f), (0.2f * ((float) this.mHeight)) * (random.nextFloat() - 0.5f));
            RectF mTempDst = new RectF(0.0f, 0.0f, (float) SlideShowView.this.getWidth(), (float) SlideShowView.this.getHeight());
            switch (SlideShowView.this.mScaleMode) {
                case 1:
                    if (this.mHeight != 0 && this.mWidth != 0 && SlideShowView.this.getWidth() != 0 && SlideShowView.this.getHeight() != 0) {
                        float viewRatio = ((float) SlideShowView.this.getHeight()) / ((float) SlideShowView.this.getWidth());
                        if (((float) this.mHeight) / ((float) this.mWidth) <= viewRatio) {
                            mTempSrc = new RectF(0.5f * (((float) this.mWidth) - (((float) this.mHeight) / viewRatio)), 0.0f, 0.5f * (((float) this.mWidth) + (((float) this.mHeight) / viewRatio)), (float) this.mHeight);
                            break;
                        } else {
                            mTempSrc = new RectF(0.0f, 0.5f * (((float) this.mHeight) - (((float) this.mWidth) * viewRatio)), (float) this.mWidth, 0.5f * (((float) this.mHeight) + (((float) this.mWidth) * viewRatio)));
                            break;
                        }
                    }
                    mTempSrc = new RectF(0.0f, 0.0f, (float) this.mWidth, (float) this.mHeight);
                    break;
                    break;
                default:
                    mTempSrc = new RectF(0.0f, 0.0f, (float) this.mWidth, (float) this.mHeight);
                    break;
            }
            this.mBaseMatrix = new Matrix();
            this.mBaseMatrix.setRectToRect(mTempSrc, mTempDst, ScaleToFit.CENTER);
            setDuration(duration);
            setInterpolator(new LinearInterpolator());
        }

        protected void applyTransformation(float interpolatedTime, Transformation t) {
            float px;
            float py;
            float scale;
            float translateX;
            float translateY;
            if (SlideShowView.this.mIsScaleOnlyMode) {
                if (this.mScalePoint == null) {
                    Random random = new Random();
                    this.mScalePoint = new PointF((float) (random.nextInt(2) * SlideShowView.this.getWidth()), (float) (random.nextInt(2) * SlideShowView.this.getHeight()));
                }
                px = this.mScalePoint.x;
                py = this.mScalePoint.y;
                scale = 1.0f + (0.2f * interpolatedTime);
                translateX = 0.0f;
                translateY = 0.0f;
            } else {
                px = (float) (SlideShowView.this.getWidth() / 2);
                py = (float) (SlideShowView.this.getHeight() / 2);
                scale = 1.0f + (0.2f * interpolatedTime);
                translateX = this.mMovingVector.x * interpolatedTime;
                translateY = this.mMovingVector.y * interpolatedTime;
            }
            if (this.mRotation > 0) {
                t.getMatrix().setRotate((float) this.mRotation, px, py);
            }
            t.getMatrix().postConcat(this.mBaseMatrix);
            t.getMatrix().postTranslate(translateX, translateY);
            t.getMatrix().postScale(scale, scale, px, py);
        }
    }

    public SlideShowView(Context context) {
        this(context, null);
    }

    public SlideShowView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SlideShowView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mSlideDuration = 3500;
        this.mIsAnimEnable = true;
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.SlideShowView, defStyleAttr, 0);
        this.mScaleMode = a.getInt(0, 0);
        a.recycle();
        initParams();
    }

    public void setSlideDuration(int duration) {
        this.mSlideDuration = Math.max(duration, 3500);
    }

    public void setSlideAnimEnable(boolean isEnable) {
        this.mIsAnimEnable = isEnable;
    }

    public void setScaleOnlyMode(boolean isScaleOnly) {
        this.mIsScaleOnlyMode = isScaleOnly;
    }

    public void setRefreshListener(OnRefreshedListener listener) {
        this.mRefreshedListener = listener;
    }

    private void invalidateView() {
        invalidate();
        if (this.mRefreshedListener != null) {
            this.mRefreshedListener.onRefreshed();
        }
    }

    private void initParams() {
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
        this.mPaint.setDither(false);
        this.mTransFormation = new Transformation();
        this.mAlphaAnim = new FloatAnimation(0.0f, 1.0f, 1000);
    }

    public void next(Bitmap bitmap, int rotation) {
        this.mAlphaAnim.start();
        if (isPreValid()) {
            this.mPreBitmap.recycle();
            this.mPreBitmap = null;
        }
        this.mPreBitmap = this.mCurrentBitmap;
        this.mPreAnim = this.mCurrentAnim;
        this.mCurrentBitmap = bitmap;
        if (((rotation / 90) & 1) == 0) {
            this.mCurrentAnim = new SlideAnimation(bitmap.getWidth(), bitmap.getHeight(), rotation, (long) this.mSlideDuration);
        } else {
            this.mCurrentAnim = new SlideAnimation(bitmap.getHeight(), bitmap.getWidth(), rotation, (long) this.mSlideDuration);
        }
        this.mCurrentAnim.start();
        invalidateView();
    }

    protected void onDraw(Canvas canvas) {
        long currentTime = getDrawingTime();
        this.mTransFormation.clear();
        boolean more = this.mAlphaAnim.getTransformation(currentTime, this.mTransFormation);
        float alpha = this.mPreBitmap == null ? 1.0f : this.mTransFormation.getAlpha();
        if (this.mIsAnimEnable) {
            if (isPreValid() && alpha < 1.0f) {
                this.mTransFormation.clear();
                more |= this.mPreAnim.getTransformation(currentTime, this.mTransFormation);
                canvas.save();
                canvas.concat(this.mTransFormation.getMatrix());
                this.mPaint.setAlpha((int) ((1.0f - alpha) * 255.0f));
                canvas.drawBitmap(this.mPreBitmap, 0.0f, 0.0f, this.mPaint);
                canvas.restore();
            }
            if (isCurValid() && alpha > 0.0f) {
                this.mTransFormation.clear();
                more |= this.mCurrentAnim.getTransformation(currentTime, this.mTransFormation);
                canvas.save();
                canvas.concat(this.mTransFormation.getMatrix());
                this.mPaint.setAlpha((int) (255.0f * alpha));
                canvas.drawBitmap(this.mCurrentBitmap, 0.0f, 0.0f, this.mPaint);
                canvas.restore();
            }
            if (more) {
                invalidateView();
                return;
            }
            return;
        }
        Bitmap bit = null;
        if (isPreValid()) {
            bit = this.mPreBitmap;
        } else if (isCurValid()) {
            bit = this.mCurrentBitmap;
        }
        if (bit != null) {
            int vwidth = getWidth();
            int vheight = getHeight();
            int dwidth = bit.getWidth();
            int dheight = bit.getHeight();
            Matrix matrix = new Matrix();
            matrix.setTranslate((float) Math.round(((float) (vwidth - dwidth)) * 0.5f), (float) Math.round(((float) (vheight - dheight)) * 0.5f));
            canvas.save();
            canvas.concat(matrix);
            this.mPaint.setAlpha(255);
            canvas.drawBitmap(bit, 0.0f, 0.0f, this.mPaint);
            canvas.restore();
            invalidateView();
        }
    }

    private boolean isPreValid() {
        return (this.mPreBitmap == null || this.mPreBitmap.isRecycled()) ? false : true;
    }

    private boolean isCurValid() {
        return (this.mCurrentBitmap == null || this.mCurrentBitmap.isRecycled()) ? false : true;
    }

    public void release() {
        if (isPreValid()) {
            this.mPreBitmap.recycle();
            this.mPreBitmap = null;
        }
        if (isCurValid()) {
            this.mCurrentBitmap.recycle();
            this.mCurrentBitmap = null;
        }
        if (this.mAlphaAnim != null) {
            this.mAlphaAnim.cancel();
        }
        if (this.mPreAnim != null) {
            this.mPreAnim.cancel();
        }
        if (this.mCurrentAnim != null) {
            this.mCurrentAnim.cancel();
        }
    }
}
