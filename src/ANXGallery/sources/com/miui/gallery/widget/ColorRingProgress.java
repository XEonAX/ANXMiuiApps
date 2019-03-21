package com.miui.gallery.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.miui.gallery.R;
import com.miui.gallery.util.BaseMiscUtil;

public class ColorRingProgress extends View {
    private int mBackColor;
    private int mColorInterval;
    private float mColorIntervalPercent;
    private int mForeColor;
    private Paint mPaint;
    private float mProgress;
    private RectF mRectF;
    private int mThickness;

    public ColorRingProgress(Context context) {
        super(context);
        init(context, null, 0, 0);
    }

    public ColorRingProgress(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context, attrs, 0, 0);
    }

    public ColorRingProgress(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context, attrs, defStyleAttr, 0);
    }

    private void init(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.ColorRingProgress, defStyleAttr, defStyleRes);
        this.mForeColor = a.getColor(0, -1);
        this.mBackColor = a.getColor(1, -6899465);
        this.mThickness = a.getDimensionPixelSize(2, 14);
        this.mColorInterval = a.getDimensionPixelSize(3, 0);
        a.recycle();
        this.mRectF = new RectF();
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStyle(Style.STROKE);
        this.mPaint.setStrokeWidth((float) this.mThickness);
    }

    public void setProgress(float progress) {
        this.mProgress = Math.min(Math.max(progress, 0.0f), 1.0f);
        invalidate();
    }

    public void setBackgroundColor(int color) {
        this.mBackColor = color;
        invalidate();
    }

    public void setForegroundColor(int color) {
        this.mForeColor = color;
        invalidate();
    }

    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        this.mRectF.set((float) this.mThickness, (float) this.mThickness, (float) (getWidth() - this.mThickness), (float) (getHeight() - this.mThickness));
        this.mColorIntervalPercent = (float) (((double) this.mColorInterval) / (3.141592653589793d * ((double) getWidth())));
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getWidth() * getHeight() > 0) {
            float maxAngle = 360.0f - 0.049804688f;
            float halfIntervalAngle = (this.mColorIntervalPercent * 360.0f) / 2.0f;
            if (1.0f - this.mProgress < this.mColorIntervalPercent * 2.0f || BaseMiscUtil.floatEquals(this.mProgress, 0.0f)) {
                halfIntervalAngle = 0.0f;
            }
            float startAngle = -90.0f - halfIntervalAngle;
            this.mPaint.setColor(0);
            float sweepAngle = 2.0f * halfIntervalAngle;
            if (sweepAngle > 0.0f) {
                canvas.drawArc(this.mRectF, startAngle, sweepAngle, false, this.mPaint);
            }
            this.mPaint.setColor(this.mForeColor);
            startAngle += sweepAngle;
            sweepAngle = (this.mProgress * 360.0f) - halfIntervalAngle;
            if (startAngle + sweepAngle > maxAngle) {
                sweepAngle = maxAngle - startAngle;
            }
            if (sweepAngle > 0.0f) {
                canvas.drawArc(this.mRectF, startAngle, sweepAngle, false, this.mPaint);
            }
            this.mPaint.setColor(0);
            startAngle += sweepAngle;
            sweepAngle = 2.0f * halfIntervalAngle;
            if (sweepAngle > 0.0f) {
                canvas.drawArc(this.mRectF, startAngle, sweepAngle, false, this.mPaint);
            }
            this.mPaint.setColor(this.mBackColor);
            startAngle += sweepAngle;
            sweepAngle = (maxAngle - startAngle) - halfIntervalAngle;
            if (sweepAngle > 0.0f) {
                canvas.drawArc(this.mRectF, startAngle, sweepAngle, false, this.mPaint);
            }
        }
    }
}
