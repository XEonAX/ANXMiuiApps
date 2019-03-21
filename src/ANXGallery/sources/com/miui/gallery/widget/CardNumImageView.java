package com.miui.gallery.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.Rect;
import android.text.TextPaint;
import android.util.AttributeSet;
import com.miui.gallery.R;

public class CardNumImageView extends ForegroundImageView {
    private FontMetricsInt mFontMetrics;
    private int mNum;
    private TextPaint mTextPaint;
    private int mTextSize;

    public CardNumImageView(Context context) {
        this(context, null);
    }

    public CardNumImageView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public CardNumImageView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.CardNumImageView, defStyle, 0);
        int defaultTextSize = context.getResources().getDimensionPixelSize(R.dimen.card_num_imageview_textsize);
        if (a != null) {
            this.mNum = a.getInt(0, 0);
            this.mTextSize = a.getDimensionPixelSize(1, defaultTextSize);
            a.recycle();
        } else {
            this.mTextSize = defaultTextSize;
        }
        initPaint();
    }

    private void initPaint() {
        this.mTextPaint = new TextPaint(257);
        this.mTextPaint.setTextSize((float) this.mTextSize);
        this.mTextPaint.setColor(-1);
        this.mFontMetrics = this.mTextPaint.getFontMetricsInt();
        this.mTextPaint.setTextAlign(Align.CENTER);
    }

    public void setNum(int num) {
        if (this.mNum != num) {
            this.mNum = num;
            invalidate();
        }
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        drawNumText(canvas);
    }

    private void drawNumText(Canvas canvas) {
        Rect rect = new Rect(0, 0, getWidth(), getHeight());
        canvas.drawText(String.valueOf(this.mNum), (float) rect.centerX(), (float) ((((rect.bottom + rect.top) - this.mFontMetrics.bottom) - this.mFontMetrics.top) / 2), this.mTextPaint);
    }
}
