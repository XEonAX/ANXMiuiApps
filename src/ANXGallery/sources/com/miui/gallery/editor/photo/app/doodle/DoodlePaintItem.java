package com.miui.gallery.editor.photo.app.doodle;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.miui.gallery.R;
import java.util.Arrays;
import java.util.List;

class DoodlePaintItem extends Drawable {
    private float mAlphaProgress;
    private int mBigSize;
    private int mCurrentColor;
    private Paint mPaint;
    private float mScale = 1.0f;
    private boolean mSelect;
    private int mSmallDefaultColor;
    private float mSmallSize;
    private int mStrokeColor;
    public final PaintType paintType;

    enum PaintType {
        HEAVY(13.333f),
        MEDIUM(4.333f),
        LIGHT(1.333f);
        
        public final float paintSize;

        private PaintType(float paintSize) {
            this.paintSize = paintSize;
        }
    }

    private DoodlePaintItem(PaintType paintType, Resources resources) {
        this.paintType = paintType;
        this.mBigSize = Math.round(resources.getDimension(R.dimen.doodle_paint_item_big_circle_width));
        switch (paintType) {
            case HEAVY:
                this.mSmallSize = resources.getDimension(R.dimen.doodle_paint_item_small_circle_heavy);
                break;
            case MEDIUM:
                this.mSmallSize = resources.getDimension(R.dimen.doodle_paint_item_small_circle_medium);
                break;
            case LIGHT:
                this.mSmallSize = resources.getDimension(R.dimen.doodle_paint_item_small_circle_light);
                break;
        }
        this.mStrokeColor = resources.getColor(R.color.doodle_paint_stroke_color);
        this.mSmallDefaultColor = resources.getColor(R.color.doodle_paint_small_color);
        this.mPaint = new Paint(1);
    }

    public boolean isContain(float x, float y) {
        return getBounds().contains((int) x, (int) y);
    }

    public int centerX() {
        return getBounds().centerX();
    }

    public void offset(int x, int y) {
        getBounds().offset(x, y);
    }

    public static List<DoodlePaintItem> getList(Resources resources) {
        return Arrays.asList(new DoodlePaintItem[]{new DoodlePaintItem(PaintType.LIGHT, resources), new DoodlePaintItem(PaintType.MEDIUM, resources), new DoodlePaintItem(PaintType.HEAVY, resources)});
    }

    public void setSelect(boolean select) {
        this.mSelect = select;
    }

    public void draw(Canvas canvas) {
        boolean z;
        boolean z2 = true;
        Rect bounds = getBounds();
        canvas.save();
        canvas.scale(this.mScale, this.mScale, (float) bounds.centerX(), (float) bounds.centerY());
        this.mPaint.setStyle(Style.FILL);
        Paint paint = this.mPaint;
        if (this.mSelect) {
            z = false;
        } else {
            z = true;
        }
        paint.setColor(getSuggestColor(-1, z));
        canvas.drawCircle((float) bounds.centerX(), (float) bounds.centerY(), ((float) this.mBigSize) / 2.0f, this.mPaint);
        int smallColor = this.mSelect ? this.mCurrentColor : this.mSmallDefaultColor;
        paint = this.mPaint;
        if (this.mSelect) {
            z = false;
        } else {
            z = true;
        }
        paint.setColor(getSuggestColor(smallColor, z));
        canvas.drawCircle((float) bounds.centerX(), (float) bounds.centerY(), this.mSmallSize / 2.0f, this.mPaint);
        this.mPaint.setStyle(Style.STROKE);
        this.mPaint.setStrokeWidth(1.0f);
        Paint paint2 = this.mPaint;
        int i = this.mStrokeColor;
        if (this.mSelect) {
            z2 = false;
        }
        paint2.setColor(getSuggestColor(i, z2));
        canvas.drawCircle((float) bounds.centerX(), (float) bounds.centerY(), ((float) this.mBigSize) / 2.0f, this.mPaint);
        if (smallColor == -1) {
            canvas.drawCircle((float) bounds.centerX(), (float) bounds.centerY(), this.mSmallSize / 2.0f, this.mPaint);
        }
        canvas.restore();
    }

    public void setAlpha(int alpha) {
    }

    public void setColorFilter(ColorFilter colorFilter) {
    }

    public int getOpacity() {
        return -2;
    }

    public int getIntrinsicWidth() {
        return this.mBigSize;
    }

    public int getIntrinsicHeight() {
        return this.mBigSize;
    }

    public void setAlpha(float alpha) {
        this.mAlphaProgress = alpha;
    }

    public void setCurrentColor(int currentColor) {
        this.mCurrentColor = currentColor;
    }

    private int getSuggestColor(int color, boolean withCurrentAlpha) {
        return !withCurrentAlpha ? color : getColorWithAlphaProgress(color, this.mAlphaProgress);
    }

    private static int getColorWithAlphaProgress(int color, float alphaProgress) {
        return Color.argb((int) (((float) Color.alpha(color)) * alphaProgress), Color.red(color), Color.green(color), Color.blue(color));
    }

    public void setScale(float scale) {
        this.mScale = scale;
    }
}
