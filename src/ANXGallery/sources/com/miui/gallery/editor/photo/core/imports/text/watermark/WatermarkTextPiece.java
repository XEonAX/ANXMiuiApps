package com.miui.gallery.editor.photo.core.imports.text.watermark;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.imports.text.base.ITextSetting;
import com.miui.gallery.editor.photo.core.imports.text.typeface.TextStyle;
import com.miui.gallery.editor.photo.core.imports.text.utils.AutoLineLayout;
import com.miui.gallery.editor.photo.core.imports.text.utils.AutoLineLayout.TextAlignment;
import com.miui.gallery.editor.photo.core.imports.text.watermark.WatermarkInfo.TextPieceInfo;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ScreenUtils;

public class WatermarkTextPiece implements ITextSetting {
    private AutoLineLayout mAutoLineLayout;
    private int mColor;
    private final float mCountSizeSpacing;
    private final float mDefaultTextSize;
    private boolean mDrawOutline = true;
    private boolean mIsBoldText;
    private boolean mIsRTL = false;
    private boolean mIsShadow;
    private final float mMaxTextSize;
    private final float mMinTextSize;
    private RectF mOutlineDisplayRect;
    private RectF mOutlineRect;
    private Paint mPaint;
    private String mText;
    private RectF mTextInDialogRect;
    private final float mTextPaddingInsert;
    private TextPieceInfo mTextPieceInfo;
    private RectF mTextRect = new RectF();
    private TextStyle mTextStyle;
    private float mTextTransparent;

    public WatermarkTextPiece(Resources res, TextPieceInfo textPieceInfo, float width, float height, float scaleMultipleOrigin) {
        boolean z;
        this.mTextPieceInfo = textPieceInfo;
        if (res.getConfiguration().getLayoutDirection() == 1) {
            this.mIsRTL = true;
        }
        if (textPieceInfo.size == 0.0f) {
            this.mDefaultTextSize = res.getDimension(R.dimen.text_append_default_text_size) * scaleMultipleOrigin;
        } else {
            this.mDefaultTextSize = ScreenUtils.dpToPixel(textPieceInfo.size) * scaleMultipleOrigin;
        }
        if (textPieceInfo.minSize > 0.0f) {
            this.mMinTextSize = ScreenUtils.dpToPixel(textPieceInfo.minSize) * scaleMultipleOrigin;
        } else {
            this.mMinTextSize = (float) res.getDimensionPixelSize(R.dimen.text_watermark_append_min_text_size);
        }
        this.mMaxTextSize = this.mDefaultTextSize;
        this.mCountSizeSpacing = res.getDisplayMetrics().density;
        this.mTextPaddingInsert = res.getDimension(R.dimen.text_watermark_padding_insert);
        this.mColor = -1;
        this.mTextStyle = null;
        this.mTextTransparent = 0.0f;
        this.mIsBoldText = false;
        this.mIsShadow = false;
        this.mAutoLineLayout = new AutoLineLayout();
        this.mAutoLineLayout.getPaint().setTextSize(this.mDefaultTextSize);
        this.mAutoLineLayout.setLineHeightOffset(res.getDimension(R.dimen.text_append_line_height_offset));
        this.mAutoLineLayout.setTextAlignment(this.mIsRTL ? TextAlignment.RIGHT : TextAlignment.LEFT);
        AutoLineLayout autoLineLayout = this.mAutoLineLayout;
        if (this.mTextPieceInfo.isVerticalText == 1) {
            z = true;
        } else {
            z = false;
        }
        autoLineLayout.setSingleVerticalText(z);
        this.mAutoLineLayout.setText(this.mTextPieceInfo.text);
        this.mAutoLineLayout.setLetterSpace(this.mTextPieceInfo.letterSpacing);
        this.mAutoLineLayout.setMaxLines(this.mTextPieceInfo.lines);
        this.mPaint = new Paint(1);
        this.mPaint.setColor(-1);
        this.mPaint.setStyle(Style.STROKE);
        this.mPaint.setStrokeWidth(3.0f);
        this.mPaint.setPathEffect(new DashPathEffect(new float[]{8.0f, 4.0f}, 0.0f));
        this.mPaint.setShadowLayer(1.0f, 0.0f, 0.0f, res.getColor(R.color.text_watermark_outline_shadow));
        this.mOutlineRect = new RectF(ScreenUtils.dpToPixel(this.mTextPieceInfo.frameRect[0]), ScreenUtils.dpToPixel(this.mTextPieceInfo.frameRect[1]), ScreenUtils.dpToPixel(this.mTextPieceInfo.frameRect[2]), ScreenUtils.dpToPixel(this.mTextPieceInfo.frameRect[3]));
        this.mOutlineRect.offset((-width) / 2.0f, (-height) / 2.0f);
        this.mText = this.mTextPieceInfo.text;
        this.mTextInDialogRect = new RectF();
        this.mOutlineDisplayRect = new RectF(this.mOutlineRect);
        RectF rectF = this.mOutlineDisplayRect;
        rectF.bottom -= 3.0f;
    }

    public void draw(Canvas canvas) {
        canvas.save();
        if (this.mDrawOutline) {
            canvas.drawRect(this.mOutlineDisplayRect, this.mPaint);
        }
        canvas.translate(this.mOutlineRect.centerX(), this.mOutlineRect.centerY());
        if (!TextUtils.isEmpty(this.mText)) {
            canvas.translate(this.mTextRect.width() / 2.0f, this.mTextRect.height() / 2.0f);
            switch (this.mTextPieceInfo.align) {
                case 0:
                    canvas.translate((-this.mTextInDialogRect.width()) / 2.0f, (-this.mTextRect.height()) / 2.0f);
                    break;
                case 1:
                    canvas.translate((-this.mTextRect.width()) / 2.0f, (-this.mTextRect.height()) / 2.0f);
                    break;
                case 2:
                    canvas.translate((this.mTextInDialogRect.width() / 2.0f) - this.mTextRect.width(), (-this.mTextRect.height()) / 2.0f);
                    break;
            }
            this.mAutoLineLayout.draw(canvas);
        }
        canvas.restore();
    }

    public void configTextPaint() {
        Paint textPaint = this.mAutoLineLayout.getPaint();
        textPaint.setColor(this.mColor);
        textPaint.setTypeface(this.mTextStyle == null ? Typeface.DEFAULT : this.mTextStyle.getTypeFace());
        textPaint.setAlpha(getAlphaByConfig());
        textPaint.setFakeBoldText(this.mIsBoldText);
        if (this.mIsShadow) {
            textPaint.setShadowLayer(1.0f, 1.0f, 1.0f, 1711276032);
        } else {
            textPaint.clearShadowLayer();
        }
    }

    public void countTextInDialog() {
        if (!TextUtils.isEmpty(this.mText)) {
            this.mAutoLineLayout.setText(this.mText);
            this.mTextInDialogRect.set(this.mOutlineRect);
            this.mTextInDialogRect.inset(this.mTextPaddingInsert, 0.0f);
            long a = System.currentTimeMillis();
            this.mAutoLineLayout.countTextArea(this.mTextInDialogRect.width(), this.mTextInDialogRect.height() * 1.5f, this.mMinTextSize, this.mMaxTextSize, this.mCountSizeSpacing);
            long b = System.currentTimeMillis();
            this.mAutoLineLayout.getTextRect(this.mTextRect);
            Log.d("WatermarkTextPiece", "count text time： %d", Long.valueOf(b - a));
        }
    }

    private int getAlphaByConfig() {
        return (int) (255.0f - (this.mTextTransparent * 230.0f));
    }

    public void setColor(int color) {
        this.mColor = color;
        this.mAutoLineLayout.getPaint().setColor(this.mColor);
    }

    public void setText(String text) {
        this.mText = text;
    }

    public void setShadow(boolean shadow) {
        this.mIsShadow = shadow;
    }

    public void setTextTransparent(float transparentProgress) {
        this.mTextTransparent = transparentProgress;
    }

    public void setTextStyle(TextStyle textStyle) {
        this.mTextStyle = textStyle;
    }

    public void setBoldText(boolean textBold) {
        this.mIsBoldText = textBold;
    }

    public String getText() {
        return this.mText;
    }

    public float getTextTransparent() {
        return this.mTextTransparent;
    }

    public int getColor() {
        return this.mColor;
    }

    public TextStyle getTextStyle() {
        return this.mTextStyle;
    }

    public boolean isBoldText() {
        return this.mIsBoldText;
    }

    public boolean isShadow() {
        return this.mIsShadow;
    }

    public TextAlignment getTextAlignment() {
        return this.mAutoLineLayout.getTextAlignment();
    }

    public void setTextAlignment(TextAlignment textAlignment) {
        this.mAutoLineLayout.setTextAlignment(textAlignment);
    }

    public void setDrawOutline(boolean drawOutline) {
        this.mDrawOutline = drawOutline;
    }

    public RectF getOutlineRect() {
        return this.mOutlineRect;
    }
}
