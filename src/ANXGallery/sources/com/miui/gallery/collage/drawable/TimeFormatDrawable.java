package com.miui.gallery.collage.drawable;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.miui.gallery.R;
import com.miui.gallery.collage.core.poster.SpecifyDrawableModel;
import com.miui.gallery.editor.photo.core.imports.text.utils.AutoLineLayout;
import com.miui.gallery.util.BaseBuildUtil;
import java.text.SimpleDateFormat;
import java.util.Locale;

public class TimeFormatDrawable extends Drawable {
    private AutoLineLayout mAutoLineLayout = new AutoLineLayout();
    private int mHeight;
    private int mWidth;

    public TimeFormatDrawable(Resources res, SpecifyDrawableModel model) {
        float density = res.getDisplayMetrics().density;
        String color = model.extras.textColor;
        float size = model.extras.textSize;
        float letterSpace = model.extras.letterSpace;
        Paint paint = this.mAutoLineLayout.getPaint();
        paint.setTextSize(size * density);
        paint.setColor(Color.parseColor(color));
        String format = getDataStringByFormat(res.getString(R.string.collage_drawable_normal_date_format));
        this.mAutoLineLayout.setLetterSpace(letterSpace);
        this.mAutoLineLayout.setText(format);
        this.mAutoLineLayout.countText();
        RectF textRect = new RectF();
        this.mAutoLineLayout.getTextRect(textRect);
        this.mWidth = Math.round(textRect.width());
        this.mHeight = Math.round(textRect.height());
    }

    public void draw(Canvas canvas) {
        Rect bound = getBounds();
        float wholeScale = ((float) bound.width()) / ((float) getIntrinsicWidth());
        canvas.save();
        canvas.translate((float) bound.centerX(), (float) bound.centerY());
        canvas.scale(wholeScale, wholeScale);
        this.mAutoLineLayout.draw(canvas);
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
        return this.mWidth;
    }

    public int getIntrinsicHeight() {
        return this.mHeight;
    }

    private static String getDataStringByFormat(String formatString) {
        return new SimpleDateFormat(formatString, BaseBuildUtil.isInternational() ? Locale.getDefault() : Locale.US).format(Long.valueOf(System.currentTimeMillis()));
    }
}
