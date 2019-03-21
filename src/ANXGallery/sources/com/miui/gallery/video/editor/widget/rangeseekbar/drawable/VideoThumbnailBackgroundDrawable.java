package com.miui.gallery.video.editor.widget.rangeseekbar.drawable;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

public class VideoThumbnailBackgroundDrawable extends Drawable {
    private float mAspectRatio;
    private BitmapProvider mBitmapProvider = null;
    private Rect mBounds = new Rect();
    private int mDrawingLeft = Integer.MIN_VALUE;
    private Rect mDrawingRect = new Rect();
    private int mDrawingRight = Integer.MAX_VALUE;
    private int mLayoutDirection = 0;
    private Rect mPadding = new Rect();

    public interface BitmapProvider {
        Bitmap getBitmap(int i, int i2);
    }

    public void setDrawingArea(int left, int right) {
        this.mDrawingLeft = left;
        this.mDrawingRight = right;
    }

    public void setCLayoutDirection(int mLayoutDirection) {
        this.mLayoutDirection = mLayoutDirection;
    }

    public void setmBitmapProvider(BitmapProvider mBitmapProvider) {
        this.mBitmapProvider = mBitmapProvider;
    }

    public void setAspectRatio(float aspectRatio) {
        this.mAspectRatio = aspectRatio;
    }

    public void draw(Canvas canvas) {
        if (this.mBitmapProvider != null) {
            canvas.save();
            canvas.clipRect(this.mDrawingLeft, this.mBounds.top, this.mDrawingRight, this.mBounds.bottom);
            int available = (this.mBounds.width() - this.mPadding.left) - this.mPadding.right;
            int itemWidth = (int) (((float) ((this.mBounds.height() - this.mPadding.top) - this.mPadding.bottom)) * this.mAspectRatio);
            int i;
            Bitmap bitmap;
            if (this.mLayoutDirection != 0) {
                int mRightStart = this.mBounds.right - this.mPadding.right;
                i = 0;
                while (true) {
                    this.mDrawingRect.right = mRightStart - (itemWidth * i);
                    if (this.mDrawingRect.right < this.mDrawingLeft) {
                        break;
                    }
                    this.mDrawingRect.left = mRightStart - ((i + 1) * itemWidth);
                    if (this.mDrawingRect.left <= this.mDrawingRight) {
                        this.mDrawingRect.top = this.mBounds.top + this.mPadding.top;
                        this.mDrawingRect.bottom = this.mBounds.bottom - this.mPadding.bottom;
                        bitmap = this.mBitmapProvider.getBitmap(mRightStart - this.mDrawingRect.right, available);
                        if (bitmap != null) {
                            canvas.drawBitmap(bitmap, null, this.mDrawingRect, null);
                        }
                    }
                    i++;
                }
            } else {
                int mLeftStart = this.mBounds.left + this.mPadding.left;
                i = 0;
                while (true) {
                    this.mDrawingRect.left = (itemWidth * i) + mLeftStart;
                    if (this.mDrawingRect.left > this.mDrawingRight) {
                        break;
                    }
                    this.mDrawingRect.right = ((i + 1) * itemWidth) + mLeftStart;
                    if (this.mDrawingRect.right >= this.mDrawingLeft) {
                        this.mDrawingRect.top = this.mBounds.top + this.mPadding.top;
                        this.mDrawingRect.bottom = this.mBounds.bottom - this.mPadding.bottom;
                        bitmap = this.mBitmapProvider.getBitmap(this.mDrawingRect.left - mLeftStart, available);
                        if (bitmap != null) {
                            canvas.drawBitmap(bitmap, null, this.mDrawingRect, null);
                        }
                    }
                    i++;
                }
            }
            canvas.restore();
        }
    }

    public void setPadding(int left, int top, int right, int bottom) {
        this.mPadding.set(left, top, right, bottom);
    }

    public int getPaddingTop() {
        return this.mPadding.top;
    }

    public int getPaddingBottom() {
        return this.mPadding.bottom;
    }

    public void setAlpha(int alpha) {
    }

    public void setColorFilter(ColorFilter colorFilter) {
    }

    protected void onBoundsChange(Rect bounds) {
        super.onBoundsChange(bounds);
        this.mBounds.set(bounds);
    }

    public int getOpacity() {
        return 0;
    }
}
