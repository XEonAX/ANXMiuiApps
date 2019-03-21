package com.miui.gallery.video.editor.widget.rangeseekbar.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

public class DisabledRangeDrawable extends Drawable {
    private Rect mBounds = new Rect();
    private Drawable mDrawable;
    private int mDrawingLeft = Integer.MIN_VALUE;
    private int mDrawingRight = Integer.MAX_VALUE;
    private float mEndRangeScale;
    private int mPaddingBottom;
    private int mPaddingLeft;
    private int mPaddingRight;
    private int mPaddingTop;
    private float mStartRangeScale;

    public DisabledRangeDrawable(Drawable mDrawable) {
        this.mDrawable = mDrawable;
    }

    public void setStartRangeScale(float startRangeScale) {
        this.mStartRangeScale = startRangeScale;
    }

    public void setEndRangeScale(float endRangeScale) {
        this.mEndRangeScale = endRangeScale;
    }

    public void setDrawingArea(int left, int right) {
        this.mDrawingLeft = left;
        this.mDrawingRight = right;
    }

    public void draw(Canvas canvas) {
        canvas.save();
        canvas.clipRect(this.mDrawingLeft, this.mBounds.top, this.mDrawingRight, this.mBounds.bottom);
        int available = (this.mBounds.width() - this.mPaddingLeft) - this.mPaddingRight;
        this.mDrawable.setBounds(this.mBounds.left + this.mPaddingLeft, this.mBounds.top + this.mPaddingTop, (this.mBounds.left + this.mPaddingLeft) + ((int) (((float) available) * this.mStartRangeScale)), this.mBounds.bottom - this.mPaddingBottom);
        this.mDrawable.draw(canvas);
        this.mDrawable.setBounds((this.mBounds.left + this.mPaddingLeft) + ((int) (((float) available) * this.mEndRangeScale)), this.mBounds.top + this.mPaddingTop, this.mBounds.right - this.mPaddingRight, this.mBounds.bottom - this.mPaddingBottom);
        this.mDrawable.draw(canvas);
        canvas.restore();
    }

    public void setPadding(int left, int top, int right, int bottom) {
        this.mPaddingLeft = left;
        this.mPaddingTop = top;
        this.mPaddingRight = right;
        this.mPaddingBottom = bottom;
    }

    protected void onBoundsChange(Rect bounds) {
        super.onBoundsChange(bounds);
        this.mBounds.set(bounds);
    }

    public void setAlpha(int alpha) {
        this.mDrawable.setAlpha(alpha);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.mDrawable.setColorFilter(colorFilter);
    }

    public int getOpacity() {
        return this.mDrawable.getOpacity();
    }
}
