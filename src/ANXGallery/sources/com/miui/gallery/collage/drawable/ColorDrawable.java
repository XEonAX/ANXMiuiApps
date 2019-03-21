package com.miui.gallery.collage.drawable;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.drawable.Drawable;
import com.miui.gallery.collage.core.poster.SpecifyDrawableModel;

public class ColorDrawable extends Drawable {
    private Paint mPaint = new Paint(1);

    public ColorDrawable(SpecifyDrawableModel model) {
        this.mPaint.setStyle(Style.FILL);
        this.mPaint.setColor(Color.parseColor(model.extras.color));
    }

    public void draw(Canvas canvas) {
        canvas.drawRect(getBounds(), this.mPaint);
    }

    public void setAlpha(int alpha) {
    }

    public void setColorFilter(ColorFilter colorFilter) {
    }

    public int getOpacity() {
        return -2;
    }

    public int getIntrinsicWidth() {
        return 1;
    }

    public int getIntrinsicHeight() {
        return 1;
    }
}
