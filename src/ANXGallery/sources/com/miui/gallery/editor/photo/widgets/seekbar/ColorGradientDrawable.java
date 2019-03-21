package com.miui.gallery.editor.photo.widgets.seekbar;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;

public class ColorGradientDrawable extends Drawable {
    private int[] mColors;
    private int mHeight;
    private LinearGradient mLinearGradient;
    private Paint mPaint;
    private Rect mRect;
    private int mWidth;

    public ColorGradientDrawable(int[] colors) {
        this(colors, -1, -1);
    }

    public ColorGradientDrawable(int[] colors, int width, int height) {
        this.mRect = new Rect();
        this.mPaint = new Paint();
        this.mColors = colors;
        this.mWidth = width;
        this.mHeight = height;
    }

    public int[] getColors() {
        return this.mColors;
    }

    public void draw(Canvas canvas) {
        canvas.drawRect(getBounds(), this.mPaint);
    }

    public void setAlpha(int alpha) {
    }

    public void setColorFilter(ColorFilter colorFilter) {
    }

    protected void onBoundsChange(Rect bounds) {
        super.onBoundsChange(bounds);
        this.mLinearGradient = new LinearGradient(0.0f, 0.0f, (float) bounds.width(), 0.0f, this.mColors, null, TileMode.CLAMP);
        this.mPaint.setShader(this.mLinearGradient);
        this.mRect.set(bounds);
    }

    public int getOpacity() {
        return -1;
    }

    public int getIntrinsicWidth() {
        return this.mWidth;
    }

    public int getIntrinsicHeight() {
        return this.mHeight;
    }
}
