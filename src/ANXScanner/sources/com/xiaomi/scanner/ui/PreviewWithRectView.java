package com.xiaomi.scanner.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;

public class PreviewWithRectView extends View {
    private static final Tag TAG = new Tag("PreviewWithRectView");
    private Bitmap bottomLeft;
    private Bitmap bottomRight;
    private int color;
    private Paint linePaint;
    private boolean mNeedDrawLine;
    private Paint mPaint;
    private Rect previewRect;
    private Bitmap topLeft;
    private Bitmap topRight;

    public PreviewWithRectView(Context context) {
        this(context, null, -1);
    }

    public PreviewWithRectView(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, -1);
    }

    public PreviewWithRectView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mPaint = new Paint();
        this.topLeft = BitmapFactory.decodeResource(getResources(), R.drawable.scan_fg_corner);
        Matrix matrix = new Matrix();
        matrix.setRotate(90.0f);
        this.topRight = Bitmap.createBitmap(this.topLeft, 0, 0, this.topLeft.getWidth(), this.topLeft.getHeight(), matrix, false);
        this.bottomRight = Bitmap.createBitmap(this.topRight, 0, 0, this.topRight.getWidth(), this.topRight.getHeight(), matrix, false);
        this.bottomLeft = Bitmap.createBitmap(this.bottomRight, 0, 0, this.bottomRight.getWidth(), this.bottomRight.getHeight(), matrix, false);
        this.linePaint = new Paint();
        this.linePaint.setColor(getResources().getColor(R.color.white_50_transparent));
        this.linePaint.setStrokeWidth(1.0f);
    }

    public void setDataAndDraw(Rect rect, int bgColor, boolean drawLine) {
        this.previewRect = rect;
        this.color = bgColor;
        this.mNeedDrawLine = drawLine;
        requestLayout();
    }

    public Rect getPreviewRect() {
        return this.previewRect;
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.previewRect != null) {
            this.mPaint.setColor(this.color);
            int width = canvas.getWidth();
            int height = canvas.getHeight();
            Rect frame = this.previewRect;
            canvas.drawRect(0.0f, (float) frame.top, (float) frame.left, (float) (frame.bottom + 1), this.mPaint);
            canvas.drawRect((float) (frame.right + 1), (float) frame.top, (float) width, (float) (frame.bottom + 1), this.mPaint);
            canvas.drawRect(0.0f, 0.0f, (float) width, (float) frame.top, this.mPaint);
            canvas.drawRect(0.0f, (float) (frame.bottom + 1), (float) width, (float) height, this.mPaint);
            if (this.mNeedDrawLine) {
                canvas.drawLine((float) frame.left, (float) frame.top, (float) frame.right, (float) frame.top, this.linePaint);
                canvas.drawLine((float) frame.left, (float) frame.top, (float) frame.left, (float) frame.bottom, this.linePaint);
                canvas.drawLine((float) frame.left, (float) frame.bottom, (float) frame.right, (float) frame.bottom, this.linePaint);
                canvas.drawLine((float) frame.right, (float) frame.top, (float) frame.right, (float) frame.bottom, this.linePaint);
            }
            try {
                canvas.drawBitmap(this.topLeft, (float) frame.left, (float) frame.top, null);
                canvas.drawBitmap(this.topRight, (float) (frame.right - this.topRight.getWidth()), (float) frame.top, null);
                canvas.drawBitmap(this.bottomLeft, (float) frame.left, (float) (frame.bottom - this.bottomRight.getHeight()), null);
                canvas.drawBitmap(this.bottomRight, (float) (frame.right - this.bottomRight.getWidth()), (float) (frame.bottom - this.bottomRight.getHeight()), null);
            } catch (Throwable e) {
                Log.e(TAG, "onDraw error " + e);
            }
        }
    }

    public void clear() {
    }
}
