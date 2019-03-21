package com.miui.gallery.editor.photo.widgets.seekbar;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.ShapeDrawable;
import com.miui.gallery.R;

public class CircleDrawable extends ShapeDrawable {
    private static int INIT_COLOR = -16739876;
    private static int STROKE_COLOR = 1275068416;
    private final float mOffset;
    private Paint mPaint = new Paint(1);
    private PorterDuffXfermode mPorterDuffXfermode = new PorterDuffXfermode(Mode.CLEAR);
    private Paint mStrokePaint;
    private final int mThumbSize;
    private final int mThumbTouchSize;

    public CircleDrawable(float offset, Resources resources) {
        this.mOffset = offset;
        this.mPaint.setStyle(Style.FILL);
        this.mPaint.setColor(INIT_COLOR);
        this.mStrokePaint = new Paint(1);
        this.mStrokePaint.setStyle(Style.FILL);
        this.mStrokePaint.setXfermode(this.mPorterDuffXfermode);
        this.mThumbTouchSize = resources.getDimensionPixelSize(R.dimen.photo_editor_seekbar_thumb_touch_size);
        this.mThumbSize = resources.getDimensionPixelSize(R.dimen.photo_editor_seekbar_thumb_size);
    }

    public void setColor(int color) {
        this.mPaint.setColor(color);
        invalidateSelf();
    }

    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        float radius = (float) this.mThumbSize;
        canvas.drawCircle((float) bounds.centerX(), (float) bounds.centerY(), this.mOffset + radius, this.mStrokePaint);
        canvas.drawCircle((float) bounds.centerX(), (float) bounds.centerY(), radius, this.mPaint);
        int currentColor = this.mPaint.getColor();
        if (currentColor == -1) {
            this.mPaint.setColor(STROKE_COLOR);
            this.mPaint.setStyle(Style.STROKE);
            this.mPaint.setStrokeWidth(1.0f);
            canvas.drawCircle((float) bounds.centerX(), (float) bounds.centerY(), radius, this.mPaint);
            this.mPaint.setStyle(Style.FILL);
            this.mPaint.setColor(currentColor);
        }
    }

    public void setAlpha(int alpha) {
    }

    public void setColorFilter(ColorFilter colorFilter) {
    }

    public int getOpacity() {
        return 0;
    }

    public int getIntrinsicWidth() {
        return this.mThumbTouchSize;
    }

    public int getIntrinsicHeight() {
        return this.mThumbTouchSize;
    }
}
