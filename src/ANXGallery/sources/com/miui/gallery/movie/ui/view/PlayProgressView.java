package com.miui.gallery.movie.ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.util.AttributeSet;
import android.view.View;

public class PlayProgressView extends View {
    private int defaultColor = Color.parseColor("#4da0f8");
    private float mProgress;
    private Paint paint;

    public PlayProgressView(Context context) {
        super(context);
        init();
    }

    public PlayProgressView(Context context, AttributeSet attrs) {
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

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawLine(0.0f, 0.0f, this.mProgress * ((float) getWidth()), 0.0f, this.paint);
    }

    public void setProgress(float progress) {
        this.mProgress = progress;
        invalidate();
    }
}
