package com.miui.internal.widget;

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
import com.miui.internal.R;

public class ArrowPopupContentWrapper extends LinearLayout {
    private Paint rl;
    private Bitmap rm;
    private Bitmap rn;
    private Bitmap ro;
    private Bitmap rp;

    public ArrowPopupContentWrapper(Context context) {
        this(context, null);
    }

    public ArrowPopupContentWrapper(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ArrowPopupContentWrapper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.rl = new Paint();
        this.rl.setXfermode(new PorterDuffXfermode(Mode.DST_OUT));
        this.rl.setAntiAlias(true);
        Resources resources = getResources();
        this.rm = BitmapFactory.decodeResource(resources, R.drawable.popup_mask_1);
        this.rn = BitmapFactory.decodeResource(resources, R.drawable.popup_mask_2);
        this.ro = BitmapFactory.decodeResource(resources, R.drawable.popup_mask_3);
        this.rp = BitmapFactory.decodeResource(resources, R.drawable.popup_mask_4);
    }

    protected void dispatchDraw(Canvas canvas) {
        canvas.saveLayer(0.0f, 0.0f, (float) getWidth(), (float) getHeight(), null, 31);
        super.dispatchDraw(canvas);
        canvas.drawBitmap(this.rm, (float) (getPaddingLeft() + 0), (float) (getPaddingTop() + 0), this.rl);
        canvas.drawBitmap(this.rn, (float) ((getWidth() - this.rn.getWidth()) - getPaddingRight()), (float) (getPaddingTop() + 0), this.rl);
        canvas.drawBitmap(this.ro, (float) (0 + getPaddingLeft()), (float) ((getHeight() - this.ro.getHeight()) - getPaddingBottom()), this.rl);
        canvas.drawBitmap(this.rp, (float) ((getWidth() - this.rp.getWidth()) - getPaddingRight()), (float) ((getHeight() - this.rp.getHeight()) - getPaddingBottom()), this.rl);
        canvas.restore();
    }
}
