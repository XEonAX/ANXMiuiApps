package com.miui.gallery.editor.photo.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.util.AttributeSet;
import android.view.View;
import com.miui.gallery.R;

public class PaintSizeView extends View {
    private int mDiameter;
    private Paint mPaint;

    public PaintSizeView(Context context) {
        super(context);
        init();
    }

    public PaintSizeView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public PaintSizeView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    private void init() {
        this.mPaint = new Paint(1);
        this.mPaint.setStyle(Style.STROKE);
        this.mPaint.setStrokeWidth(getResources().getDimension(R.dimen.paint_stroke_size));
        this.mPaint.setColor(-1);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawCircle(((float) canvas.getWidth()) / 2.0f, ((float) canvas.getHeight()) / 2.0f, ((float) this.mDiameter) / 2.0f, this.mPaint);
    }

    public void setDiameter(int diameter) {
        this.mDiameter = diameter;
        invalidate();
    }
}
