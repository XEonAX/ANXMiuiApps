package com.miui.gallery.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.miui.gallery.R;

public class RoundedCornerWrapper extends LinearLayout {
    private final Bitmap mMaskLeftBottom;
    private final Bitmap mMaskLeftTop;
    private final Bitmap mMaskRightBottom;
    private final Bitmap mMaskRightTop;
    private final Paint mPaint;

    public RoundedCornerWrapper(Context context) {
        this(context, null);
    }

    public RoundedCornerWrapper(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public RoundedCornerWrapper(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mPaint = new Paint();
        Resources res = getResources();
        this.mMaskLeftTop = BitmapFactory.decodeResource(res, R.drawable.rounded_corner_mask_left_top);
        this.mMaskRightTop = BitmapFactory.decodeResource(res, R.drawable.rounded_corner_mask_right_top);
        this.mMaskLeftBottom = BitmapFactory.decodeResource(res, R.drawable.rounded_corner_mask_left_bottom);
        this.mMaskRightBottom = BitmapFactory.decodeResource(res, R.drawable.rounded_corner_mask_right_bottom);
        this.mPaint.setXfermode(new PorterDuffXfermode(Mode.DST_OUT));
        this.mPaint.setAntiAlias(true);
    }

    protected void dispatchDraw(Canvas canvas) {
        int count = canvas.saveLayer(0.0f, 0.0f, (float) getWidth(), (float) getHeight(), null, 31);
        super.dispatchDraw(canvas);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        canvas.drawBitmap(this.mMaskLeftTop, (float) paddingLeft, (float) paddingTop, this.mPaint);
        canvas.drawBitmap(this.mMaskRightTop, (float) ((getWidth() - this.mMaskRightTop.getWidth()) - paddingRight), (float) paddingTop, this.mPaint);
        canvas.drawBitmap(this.mMaskLeftBottom, (float) paddingLeft, (float) ((getHeight() - this.mMaskLeftBottom.getHeight()) - paddingBottom), this.mPaint);
        canvas.drawBitmap(this.mMaskRightBottom, (float) ((getWidth() - this.mMaskRightBottom.getWidth()) - paddingRight), (float) ((getHeight() - this.mMaskRightBottom.getHeight()) - paddingBottom), this.mPaint);
        canvas.restoreToCount(count);
    }
}
