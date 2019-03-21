package com.miui.gallery.collage.widget;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.miui.gallery.R;
import miui.util.Log;

public class LoadingDialogView extends View {
    private AnimatorUpdateListener mAnimatorUpdateListener = new AnimatorUpdateListener() {
        public void onAnimationUpdate(ValueAnimator animation) {
            LoadingDialogView.this.mDegree = ((Integer) animation.getAnimatedValue()).intValue();
            LoadingDialogView.this.invalidate();
        }
    };
    private RectF mBitmapRect = new RectF();
    private Paint mColorPaint = new Paint(1);
    private int mDegree = 0;
    private int mLoadingPadding;
    private Bitmap mLoadingProgress;
    private Matrix mMatrix = new Matrix();
    private Paint mPaint = new Paint(3);
    private RectF mProgressRect = new RectF();
    private ValueAnimator mValueAnimator;
    private RectF mViewRect = new RectF();

    public LoadingDialogView(Context context) {
        super(context);
        init();
    }

    public LoadingDialogView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public LoadingDialogView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    public void init() {
        this.mColorPaint.setColor(-1);
        this.mColorPaint.setStyle(Style.FILL);
        this.mLoadingProgress = BitmapFactory.decodeResource(getResources(), R.drawable.collage_loading_progress);
        this.mBitmapRect.set(0.0f, 0.0f, (float) this.mLoadingProgress.getWidth(), (float) this.mLoadingProgress.getHeight());
        this.mValueAnimator = ValueAnimator.ofInt(new int[]{0, 359});
        this.mValueAnimator.setDuration(800);
        this.mValueAnimator.setRepeatCount(-1);
        this.mValueAnimator.addUpdateListener(this.mAnimatorUpdateListener);
        this.mValueAnimator.setInterpolator(new LinearInterpolator());
        this.mLoadingPadding = getResources().getDimensionPixelSize(R.dimen.collage_loading_progress_size_padding);
    }

    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.mViewRect.set(0.0f, 0.0f, (float) w, (float) h);
        this.mProgressRect.set(this.mViewRect);
        this.mProgressRect.inset((float) this.mLoadingPadding, (float) this.mLoadingPadding);
        this.mMatrix.reset();
        this.mMatrix.setRectToRect(this.mBitmapRect, this.mViewRect, ScaleToFit.CENTER);
    }

    protected void onDraw(Canvas canvas) {
        canvas.drawOval(this.mViewRect, this.mColorPaint);
        canvas.save();
        canvas.rotate((float) this.mDegree, this.mViewRect.centerX(), this.mViewRect.centerY());
        canvas.drawBitmap(this.mLoadingProgress, this.mMatrix, this.mPaint);
        canvas.restore();
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mValueAnimator.start();
        Log.d("LoadingDialogView", "onAttachedToWindow");
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mValueAnimator.cancel();
        Log.d("LoadingDialogView", "onDetachedFromWindow");
    }
}
