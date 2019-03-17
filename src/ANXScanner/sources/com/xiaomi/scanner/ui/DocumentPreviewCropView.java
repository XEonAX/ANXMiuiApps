package com.xiaomi.scanner.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;

public class DocumentPreviewCropView extends View {
    private static final Tag TAG = new Tag("PreviewCropView");
    private float[] mCorners;
    private Paint mPaint;
    private int mPreviewHeight;
    private int mPreviewWidth;
    private float mScaleX;
    private float mScaleY;

    public DocumentPreviewCropView(Context context) {
        super(context);
        initPaint();
    }

    public DocumentPreviewCropView(Context context, AttributeSet attrs) {
        super(context, attrs);
        initPaint();
    }

    private void initPaint() {
        this.mPaint = new Paint();
        this.mPaint.setColor(-1);
        this.mPaint.setStrokeWidth(5.0f);
        this.mPaint.setAntiAlias(true);
    }

    public void setCorners(float[] corners) {
        if (corners != null || (corners == null && this.mCorners != null)) {
            this.mCorners = corners;
            invalidate();
        }
    }

    public void setPreviewSize(int width, int height) {
        if (width < height) {
            this.mPreviewWidth = width;
            this.mPreviewHeight = height;
        } else {
            this.mPreviewWidth = height;
            this.mPreviewHeight = width;
        }
        Log.v(TAG, String.format("setPreviewSize: %d x %d", new Object[]{Integer.valueOf(this.mPreviewWidth), Integer.valueOf(this.mPreviewHeight)}));
        if (this.mPreviewHeight != 0 && this.mPreviewWidth != 0) {
            this.mScaleX = ((float) getWidth()) / ((float) this.mPreviewWidth);
            this.mScaleY = ((float) getHeight()) / ((float) this.mPreviewHeight);
        }
    }

    public boolean hasSetPreviewSize() {
        return this.mPreviewWidth != 0;
    }

    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        if (this.mPreviewHeight != 0 && this.mPreviewWidth != 0) {
            this.mScaleX = ((float) w) / ((float) this.mPreviewWidth);
            this.mScaleY = ((float) h) / ((float) this.mPreviewHeight);
        }
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mCorners == null || this.mCorners.length != 8) {
            int length;
            Tag tag = TAG;
            StringBuilder append = new StringBuilder().append("onDraw: cornerLength=");
            if (this.mCorners != null) {
                length = this.mCorners.length;
            } else {
                length = -1;
            }
            Log.w(tag, append.append(length).toString());
            return;
        }
        canvas.save();
        float[] borderLines = this.mCorners;
        if (borderLines.length == 8) {
            canvas.drawLine(convertX(borderLines[4]), convertY(borderLines[5]), convertX(borderLines[6]), convertY(borderLines[7]), this.mPaint);
            canvas.drawLine(convertX(borderLines[0]), convertY(borderLines[1]), convertX(borderLines[2]), convertY(borderLines[3]), this.mPaint);
            canvas.drawLine(convertX(borderLines[0]), convertY(borderLines[1]), convertX(borderLines[4]), convertY(borderLines[5]), this.mPaint);
            canvas.drawLine(convertX(borderLines[6]), convertY(borderLines[7]), convertX(borderLines[2]), convertY(borderLines[3]), this.mPaint);
        }
        canvas.restore();
    }

    private float convertX(float x) {
        return ((double) Math.abs(this.mScaleX)) < 0.001d ? x : x * this.mScaleX;
    }

    private float convertY(float y) {
        return ((double) Math.abs(this.mScaleY)) < 0.001d ? y : y * this.mScaleY;
    }
}
