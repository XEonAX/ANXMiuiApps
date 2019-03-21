package com.miui.gallery.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.view.View;
import com.miui.gallery.R;

public class RotateRingView extends View {
    private static final float[] HEAD_POSITIONS = new float[]{0.75f, 1.0f};
    private int[] mChangeColors;
    private int mCircleX;
    private int mCircleY;
    private int mHeadMaxAlpha;
    private Paint mPaint;
    private int mProgress;
    private int mRadius;
    private RectF mRectF;
    private Matrix mRotateMatrix;
    private int mStrokeWidth;

    public RotateRingView(Context context) {
        this(context, null);
    }

    public RotateRingView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public RotateRingView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mRotateMatrix = new Matrix();
        this.mRectF = new RectF();
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
        this.mStrokeWidth = context.getResources().getDimensionPixelSize(R.dimen.rotate_ring_stroke_width);
        this.mPaint.setStrokeWidth((float) this.mStrokeWidth);
        this.mPaint.setStyle(Style.STROKE);
        this.mRadius = context.getResources().getDimensionPixelSize(R.dimen.rotate_ring_radius);
        this.mChangeColors = new int[]{Color.argb(96, 255, 255, 255), Color.argb(96, 255, 255, 255)};
    }

    public void setStartRotateStable() {
        setAlpha(1.0f);
        this.mHeadMaxAlpha = 255;
        this.mChangeColors[1] = Color.argb(this.mHeadMaxAlpha, 255, 255, 255);
    }

    public int getCircleHeight() {
        return (this.mRadius * 2) + (this.mStrokeWidth * 2);
    }

    public void setHeadMaxAlpha(int value) {
        this.mHeadMaxAlpha = value;
        this.mChangeColors[1] = Color.argb(this.mHeadMaxAlpha, 255, 255, 255);
        invalidate();
    }

    public int getHeadMaxAlpha() {
        return this.mHeadMaxAlpha;
    }

    public int getHeadMinAlpha() {
        return 96;
    }

    public void setProgress(int value) {
        this.mProgress = value;
        invalidate();
    }

    public int getProgress() {
        return this.mProgress;
    }

    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        this.mCircleX = w / 2;
        this.mCircleY = h / 2;
        this.mRectF.set((float) (this.mCircleX - this.mRadius), (float) (this.mCircleY - this.mRadius), (float) (this.mCircleX + this.mRadius), (float) (this.mCircleY + this.mRadius));
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        drawRing(canvas);
        canvas.restore();
    }

    public void drawRing(Canvas canvas) {
        this.mRotateMatrix.setRotate((float) this.mProgress, (float) this.mCircleX, (float) this.mCircleY);
        SweepGradient sweepGradient = new SweepGradient((float) this.mCircleX, (float) this.mCircleY, this.mChangeColors, HEAD_POSITIONS);
        sweepGradient.setLocalMatrix(this.mRotateMatrix);
        this.mPaint.setShader(sweepGradient);
        canvas.drawOval(this.mRectF, this.mPaint);
    }
}
