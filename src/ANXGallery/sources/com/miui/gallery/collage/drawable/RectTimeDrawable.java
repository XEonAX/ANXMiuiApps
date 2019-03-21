package com.miui.gallery.collage.drawable;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.miui.gallery.R;
import com.miui.gallery.collage.core.poster.SpecifyDrawableModel;
import com.miui.gallery.editor.photo.core.imports.text.utils.AutoLineLayout;
import com.miui.gallery.util.BaseBuildUtil;
import java.text.SimpleDateFormat;
import java.util.Locale;

public class RectTimeDrawable extends Drawable {
    private AutoLineLayout mDateLayout;
    private float mDateOffsetY;
    private RectF mDateRectF;
    private float mShortLineLength;
    private float mShortLineOffsetY;
    private float mShotLineStartX;
    private Paint mStrokePaint = new Paint(1);
    private Rect mStrokeRect = new Rect();
    private AutoLineLayout mYearLayout;
    private float mYearWidth;

    public RectTimeDrawable(Resources res, SpecifyDrawableModel model) {
        float letterSpace = model.extras.letterSpace;
        float datePaintSize = res.getDimension(R.dimen.collage_rect_time_date_paint_size);
        float yearPaintSize = res.getDimension(R.dimen.collage_rect_time_year_paint_size);
        float strokeWidth = res.getDimension(R.dimen.collage_rect_time_stroke_width);
        float shortLineLength = res.getDimension(R.dimen.collage_rect_time_short_line_length);
        float shortLineStartOffset = res.getDimension(R.dimen.collage_rect_time_short_line_start_x_offset);
        float dateOffsetY = res.getDimension(R.dimen.collage_rect_time_date_offset_y);
        float shortLineOffsetY = res.getDimension(R.dimen.collage_rect_time_short_line_offset_y);
        float width = res.getDimension(R.dimen.collage_rect_time_width);
        float height = res.getDimension(R.dimen.collage_rect_time_height);
        int paintColor = Color.parseColor("#80000000");
        long time = System.currentTimeMillis();
        String dateString = getDateString(time, res);
        String yearString = getYearString(time, res);
        this.mDateLayout = new AutoLineLayout();
        this.mDateLayout.setText(dateString);
        this.mDateLayout.setLetterSpace(letterSpace);
        Paint datePaint = this.mDateLayout.getPaint();
        datePaint.setTextSize(datePaintSize);
        datePaint.setColor(paintColor);
        this.mDateLayout.countText();
        this.mYearLayout = new AutoLineLayout();
        this.mYearLayout.setText(yearString);
        this.mYearLayout.setLetterSpace(letterSpace);
        Paint yearPaint = this.mYearLayout.getPaint();
        yearPaint.setTextSize(yearPaintSize);
        yearPaint.setColor(paintColor);
        this.mYearLayout.countText();
        int widthHalf = Math.round(width / 2.0f);
        int heightHalf = Math.round(height / 2.0f);
        this.mStrokeRect.set(-widthHalf, -heightHalf, widthHalf, heightHalf);
        this.mStrokePaint.setStyle(Style.STROKE);
        this.mStrokePaint.setStrokeWidth(strokeWidth);
        this.mStrokePaint.setColor(paintColor);
        RectF yearRectF = new RectF();
        this.mDateRectF = new RectF();
        this.mYearLayout.getTextRect(yearRectF);
        this.mDateLayout.getTextRect(this.mDateRectF);
        this.mDateOffsetY = ((yearRectF.height() / 2.0f) + (this.mDateRectF.height() / 2.0f)) + dateOffsetY;
        this.mShortLineOffsetY = (yearRectF.height() / 2.0f) + shortLineOffsetY;
        this.mYearWidth = yearRectF.width();
        this.mShotLineStartX = (-(this.mYearWidth / 2.0f)) + shortLineStartOffset;
        this.mShortLineLength = shortLineLength;
    }

    public void draw(Canvas canvas) {
        Rect bound = getBounds();
        float wholeScale = ((float) bound.width()) / ((float) getIntrinsicWidth());
        canvas.save();
        canvas.translate((float) bound.centerX(), (float) bound.centerY());
        canvas.scale(wholeScale, wholeScale);
        canvas.drawRect(this.mStrokeRect, this.mStrokePaint);
        this.mYearLayout.draw(canvas);
        canvas.translate(0.0f, -this.mDateOffsetY);
        float scale = this.mYearWidth / this.mDateRectF.width();
        canvas.save();
        canvas.scale(scale, scale, 0.0f, 0.0f);
        this.mDateLayout.draw(canvas);
        canvas.restore();
        canvas.translate(0.0f, this.mDateOffsetY + this.mShortLineOffsetY);
        Canvas canvas2 = canvas;
        float f = 0.0f;
        canvas2.drawLine(this.mShotLineStartX, 0.0f, this.mShortLineLength + this.mShotLineStartX, f, this.mStrokePaint);
        canvas.restore();
    }

    public void setAlpha(int alpha) {
    }

    public void setColorFilter(ColorFilter colorFilter) {
    }

    public int getOpacity() {
        return -2;
    }

    private static String getYearString(long time, Resources resources) {
        return new SimpleDateFormat(resources.getString(R.string.collage_drawable_rect_date_year), BaseBuildUtil.isInternational() ? Locale.getDefault() : Locale.US).format(Long.valueOf(time));
    }

    private static String getDateString(long time, Resources resources) {
        return new SimpleDateFormat(resources.getString(R.string.collage_drawable_rect_date_month_day), BaseBuildUtil.isInternational() ? Locale.getDefault() : Locale.US).format(Long.valueOf(time));
    }

    public int getIntrinsicWidth() {
        return this.mStrokeRect.width();
    }

    public int getIntrinsicHeight() {
        return this.mStrokeRect.height();
    }
}
