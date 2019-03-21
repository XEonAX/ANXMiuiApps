package com.miui.gallery.editor.photo.app.frame;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.support.v4.content.res.ResourcesCompat;
import com.miui.gallery.R;

class FrameItemPreviewDrawable extends Drawable {
    private Paint mPaint = new Paint();
    private float mRatio = 1.0f;
    private Rect mRect = new Rect();
    private RectF mRectF = new RectF();
    private int mSelectColor;
    private int mSolidNormalColor;
    private Drawable mStrokeDrawable;

    FrameItemPreviewDrawable(Resources resources) {
        this.mSolidNormalColor = ResourcesCompat.getColor(resources, R.color.frame_item_color_solid_normal, null);
        this.mSelectColor = ResourcesCompat.getColor(resources, R.color.frame_item_color_select, null);
        this.mStrokeDrawable = ResourcesCompat.getDrawable(resources, R.drawable.frame_menu_item_drawable, null);
    }

    public void draw(Canvas canvas) {
        float width;
        float height;
        Rect bounds = getBounds();
        float size = ((float) Math.min(bounds.width(), bounds.height())) - 18.0f;
        if (this.mRatio >= 1.0f) {
            width = size;
            height = width / this.mRatio;
        } else {
            height = size;
            width = height * this.mRatio;
        }
        width /= 2.0f;
        height /= 2.0f;
        this.mRectF.set(((float) bounds.centerX()) - width, ((float) bounds.centerY()) - height, ((float) bounds.centerX()) + width, ((float) bounds.centerX()) + height);
        this.mPaint.setStyle(Style.FILL);
        this.mPaint.setColor(this.mSolidNormalColor);
        this.mRectF.round(this.mRect);
        canvas.drawRect(this.mRect, this.mPaint);
        this.mRect.inset(-8, -8);
        this.mStrokeDrawable.setBounds(this.mRect);
        this.mStrokeDrawable.draw(canvas);
    }

    public void setAlpha(int alpha) {
        this.mPaint.setAlpha(alpha);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        if (this.mPaint != null) {
            this.mPaint.setColorFilter(colorFilter);
            this.mStrokeDrawable.setColorFilter(colorFilter);
            invalidateSelf();
        }
    }

    protected boolean onStateChange(int[] states) {
        boolean select = false;
        for (int state : states) {
            if (state == 16842913) {
                select = true;
                break;
            }
        }
        if (select) {
            setColorFilter(this.mSelectColor, Mode.SRC_ATOP);
        } else {
            setColorFilter(null);
        }
        return super.onStateChange(states);
    }

    public boolean isStateful() {
        return true;
    }

    public int getOpacity() {
        return -2;
    }

    public void setRatio(float ratio) {
        this.mRatio = ratio;
        invalidateSelf();
    }
}
