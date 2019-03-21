package com.miui.gallery.video.editor.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.util.AttributeSet;
import android.view.View;

public class VideoPlayProgress extends View {
    private int defaultColor = Color.parseColor("#4da0f8");
    private Paint paint;
    private int startX = 0;
    private int startY;
    private int stopX = 0;
    private int stopY;

    public VideoPlayProgress(Context context) {
        super(context);
        init();
    }

    public VideoPlayProgress(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    private void init() {
        this.paint = new Paint();
        this.paint.setColor(this.defaultColor);
        this.paint.setStyle(Style.FILL);
        this.paint.setAntiAlias(true);
        this.paint.setStrokeWidth(10.0f);
    }

    public void setColor(int color) {
        this.paint.setColor(color);
        invalidate();
    }

    public void updateWidth(int startX, int startY, int stopX, int stopY) {
        this.startX = startX;
        this.startY = startY;
        this.stopX = stopX;
        this.stopY = stopY;
        invalidate();
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawLine((float) this.startX, (float) this.startY, (float) this.stopX, (float) this.stopY, this.paint);
    }
}
