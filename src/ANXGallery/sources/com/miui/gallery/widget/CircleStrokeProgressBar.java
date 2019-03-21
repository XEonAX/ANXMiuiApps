package com.miui.gallery.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;

public class CircleStrokeProgressBar extends CircleProgressBar {
    private int[] mMiddleStrokeColors;
    private Paint mMiddleStrokePaint;
    private float mMiddleStrokeWidth;

    public CircleStrokeProgressBar(Context context) {
        this(context, null);
    }

    public CircleStrokeProgressBar(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public CircleStrokeProgressBar(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        setIndeterminate(false);
        this.mMiddleStrokePaint = new Paint(1);
        this.mMiddleStrokePaint.setStyle(Style.STROKE);
    }

    public void setMiddleStrokeColors(int[] middleColors, float strokeWidth) {
        this.mMiddleStrokeColors = middleColors;
        this.mMiddleStrokeWidth = strokeWidth;
    }

    protected synchronized void onDraw(Canvas canvas) {
        if (this.mMiddleStrokeColors != null && this.mMiddleStrokeWidth > 0.0f) {
            Drawable drawable = getMiddleDrawable(getCurrentLevel());
            if (drawable != null) {
                this.mMiddleStrokePaint.setColor(this.mMiddleStrokeColors[getCurrentLevel()]);
                this.mMiddleStrokePaint.setStrokeWidth(this.mMiddleStrokeWidth);
                canvas.drawArc(new RectF(drawable.getBounds()), -90.0f, getRate() * 360.0f, true, this.mMiddleStrokePaint);
            }
        }
        super.onDraw(canvas);
    }
}
