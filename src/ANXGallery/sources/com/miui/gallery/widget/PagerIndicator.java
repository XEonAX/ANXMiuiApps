package com.miui.gallery.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import com.miui.gallery.R;

public class PagerIndicator extends View {
    private static int DEFAULT_CIRCLE_RADIUS_VALUE = 10;
    private static int DEFAULT_CIRCLE_SPACING_VALUE = 15;
    private static int DEFAULT_SELECTED_COLOR_VALUE = 0;
    private static int DEFAULT_UNSELECTED_COLOR_VALUE = 0;
    private int mCount;
    private int mIndex;
    private Paint mPaint;
    private int mRadius;
    private int mSelectedColor;
    private int mSpacing;
    private int mUnselectedColor;

    public PagerIndicator(Context context) {
        this(context, null);
    }

    public PagerIndicator(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public PagerIndicator(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.PagerIndicator);
        this.mSpacing = a.getDimensionPixelSize(2, DEFAULT_CIRCLE_SPACING_VALUE);
        this.mRadius = a.getDimensionPixelSize(3, DEFAULT_CIRCLE_RADIUS_VALUE);
        this.mSelectedColor = a.getColor(0, DEFAULT_SELECTED_COLOR_VALUE);
        this.mUnselectedColor = a.getColor(1, DEFAULT_UNSELECTED_COLOR_VALUE);
        a.recycle();
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        canvas.translate((float) getPaddingLeft(), (float) getPaddingTop());
        int cx = this.mRadius;
        int cy = this.mRadius;
        for (int i = 0; i < this.mCount; i++) {
            if (i == this.mIndex) {
                this.mPaint.setColor(this.mSelectedColor);
            } else {
                this.mPaint.setColor(this.mUnselectedColor);
            }
            canvas.drawCircle((float) cx, (float) cy, (float) this.mRadius, this.mPaint);
            cx = ((this.mRadius * 2) + cx) + this.mSpacing;
        }
        canvas.restore();
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension(measureWidth(widthMeasureSpec), measureHeight(heightMeasureSpec));
    }

    private int measureWidth(int widthSpec) {
        int specMode = MeasureSpec.getMode(widthSpec);
        int specSize = MeasureSpec.getSize(widthSpec);
        if (specMode == 1073741824) {
            return specSize;
        }
        int result = ((((this.mRadius * 2) * this.mCount) + (this.mSpacing * (this.mCount - 1))) + getPaddingLeft()) + getPaddingRight();
        if (specMode == Integer.MIN_VALUE) {
            return Math.min(result, specSize);
        }
        return result;
    }

    private int measureHeight(int heightSpec) {
        int specMode = MeasureSpec.getMode(heightSpec);
        int specSize = MeasureSpec.getSize(heightSpec);
        if (specMode == 1073741824) {
            return specSize;
        }
        int result = ((this.mRadius * 2) + getPaddingTop()) + getPaddingBottom();
        if (specMode == Integer.MIN_VALUE) {
            return Math.min(result, specSize);
        }
        return result;
    }

    public void showIndex(int index, int count) {
        if (index + 1 <= count) {
            this.mIndex = index;
            if (this.mCount != count) {
                this.mCount = count;
                requestLayout();
                return;
            }
            invalidate();
        }
    }
}
