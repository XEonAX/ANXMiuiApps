package com.xiaomi.scanner.ui;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.ScannerApp;

public class HollowRectDrawable extends Drawable {
    private int mHeight;
    private int mLeftPadding;
    private Paint mPaint = new Paint();
    private int mRightPadding;
    private int mTopPadding;

    public HollowRectDrawable(int leftPadding, int topPadding, int rightPadding, int height) {
        this.mLeftPadding = leftPadding;
        this.mTopPadding = topPadding;
        this.mRightPadding = rightPadding;
        this.mHeight = height;
        this.mPaint.setColor(ScannerApp.getAndroidContext().getResources().getColor(R.color.hollow_rect_outer_color));
    }

    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.drawRect(0.0f, 0.0f, (float) bounds.width(), (float) this.mTopPadding, this.mPaint);
        canvas.drawRect(0.0f, (float) this.mTopPadding, (float) this.mLeftPadding, (float) (this.mTopPadding + this.mHeight), this.mPaint);
        canvas.drawRect((float) ((bounds.right - this.mRightPadding) + 1), (float) this.mTopPadding, (float) bounds.right, (float) (this.mTopPadding + this.mHeight), this.mPaint);
        canvas.drawRect(0.0f, (float) (this.mTopPadding + this.mHeight), (float) bounds.right, (float) bounds.bottom, this.mPaint);
    }

    public void setAlpha(int alpha) {
        this.mPaint.setAlpha(alpha);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    public int getOpacity() {
        return -1;
    }
}
