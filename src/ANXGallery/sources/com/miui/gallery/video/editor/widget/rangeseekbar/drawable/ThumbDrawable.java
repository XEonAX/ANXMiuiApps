package com.miui.gallery.video.editor.widget.rangeseekbar.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.miui.internal.view.menu.MenuBuilder;

public class ThumbDrawable extends Drawable {
    private String TAG = "ThumbDrawable";
    private Rect mBounds = new Rect();
    private Drawable mDrawable;
    private int mDrawingLeft = Integer.MIN_VALUE;
    private int mDrawingRight = Integer.MAX_VALUE;
    private Point mLocation = new Point();
    private Rect mPadding = new Rect();
    private Paint mPaint = new Paint();

    public ThumbDrawable(Drawable mDrawable) {
        this.mDrawable = mDrawable;
        this.mPaint.setColor(MenuBuilder.CATEGORY_MASK);
        this.mPaint.setTextSize(50.0f);
    }

    public void setPadding(int left, int top, int right, int bottom) {
        this.mPadding.set(left, top, right, bottom);
        onBoundsChange(this.mBounds);
    }

    public int getLocationX() {
        return this.mLocation.x;
    }

    public void setDrawingArea(int left, int right) {
        this.mDrawingLeft = left;
        this.mDrawingRight = right;
    }

    public void draw(Canvas canvas) {
        this.mDrawable.draw(canvas);
    }

    public void setSize(int width, int height) {
        this.mBounds.left = this.mLocation.x - (width / 2);
        this.mBounds.top = this.mLocation.y - (height / 2);
        this.mBounds.right = this.mLocation.x + (width / 2);
        this.mBounds.bottom = this.mLocation.y + (height / 2);
        setBounds(this.mBounds);
    }

    public void moveLeftThumb(int x, int y) {
        int center = getDrawableExcludedPaddingCenterX();
        this.mBounds.offsetTo((x - center) - center, y - (this.mBounds.height() / 2));
        setBounds(this.mBounds);
    }

    public void moveProgressThumb(int x, int y) {
        int center = getDrawableExcludedPaddingCenterX();
        this.mBounds.offsetTo((x - center) - center, y - (this.mBounds.height() / 2));
        setBounds(this.mBounds);
    }

    public void moveRightThumb(int x, int y) {
        this.mBounds.offsetTo(x, y - (this.mBounds.height() / 2));
        setBounds(this.mBounds);
    }

    public void moveTo(int x, int y) {
        this.mBounds.offsetTo(x - getDrawableExcludedPaddingCenterX(), y - (this.mBounds.height() / 2));
        setBounds(this.mBounds);
    }

    private int getDrawableExcludedPaddingCenterX() {
        Rect padding = new Rect();
        this.mDrawable.getPadding(padding);
        return (this.mPadding.left + padding.left) + (((this.mDrawable.getBounds().width() - padding.left) - padding.right) / 2);
    }

    public int getPaddingLeft() {
        return getDrawableExcludedPaddingCenterX();
    }

    public int getPaddingRight() {
        return this.mBounds.width() - getDrawableExcludedPaddingCenterX();
    }

    protected void onBoundsChange(Rect bounds) {
        this.mLocation.x = bounds.left + getDrawableExcludedPaddingCenterX();
        this.mLocation.y = bounds.centerY();
        this.mDrawable.setBounds(bounds.left + this.mPadding.left, bounds.top + this.mPadding.top, bounds.right - this.mPadding.right, bounds.bottom - this.mPadding.bottom);
    }

    public void setAlpha(int alpha) {
        this.mDrawable.setAlpha(alpha);
    }

    public int getAlpha() {
        return this.mDrawable.getAlpha();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.mDrawable.setColorFilter(colorFilter);
    }

    public int getIntrinsicHeight() {
        return this.mDrawable.getIntrinsicHeight();
    }

    public int getIntrinsicWidth() {
        return this.mDrawable.getIntrinsicWidth();
    }

    public int getOpacity() {
        return this.mDrawable.getOpacity();
    }
}
