package com.miui.gallery.editor.photo.core.imports.text.utils;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.text.TextPaint;
import android.text.TextUtils;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.List;

public class AutoLineLayout {
    private RectF mBound = new RectF();
    private FontMetricsInt mFontMetricsInt = new FontMetricsInt();
    private boolean mIsSingleVerticalText;
    private float mLineHeight = 0.0f;
    private float mLineHeightOffset = 0.0f;
    private int mMaxLines;
    private MultipleLineText mMultipleLineText = new MultipleLineText();
    private String mOriginText;
    private final TextPaint mPaint = new TextPaint(1);
    private String mText;
    private TextAlignment mTextAlignment = TextAlignment.LEFT;

    private class MultipleLineText {
        private float mHeight;
        private String mLongestText;
        private List<SingleLineText> mSingleLineTextList;
        private float mWidth;

        private MultipleLineText() {
            this.mSingleLineTextList = new ArrayList();
            this.mLongestText = "";
            this.mHeight = 0.0f;
            this.mWidth = 0.0f;
        }

        private void reset() {
            this.mSingleLineTextList.clear();
            this.mHeight = 0.0f;
            this.mWidth = 0.0f;
        }
    }

    private class SingleLineText {
        private StringBuilder mBuilder;
        private float mWidth;

        private SingleLineText() {
            this.mBuilder = new StringBuilder("");
            this.mWidth = 0.0f;
        }

        public void count() {
            this.mWidth = AutoLineLayout.this.mPaint.measureText(this.mBuilder.toString());
        }

        public void draw(Canvas canvas) {
            canvas.drawText(this.mBuilder, 0, this.mBuilder.length(), 0.0f, (float) (-AutoLineLayout.this.mFontMetricsInt.ascent), AutoLineLayout.this.mPaint);
        }
    }

    public enum TextAlignment {
        LEFT,
        CENTER,
        RIGHT
    }

    public AutoLineLayout() {
        this.mPaint.setColor(-1);
    }

    public void draw(Canvas canvas) {
        canvas.save();
        canvas.translate((-this.mBound.width()) / 2.0f, (-this.mBound.height()) / 2.0f);
        float alignX = 0.0f;
        for (SingleLineText singleLineText : this.mMultipleLineText.mSingleLineTextList) {
            switch (this.mTextAlignment) {
                case CENTER:
                    alignX = (this.mMultipleLineText.mWidth - singleLineText.mWidth) / 2.0f;
                    break;
                case RIGHT:
                    alignX = this.mMultipleLineText.mWidth - singleLineText.mWidth;
                    break;
                case LEFT:
                    alignX = 0.0f;
                    break;
                default:
                    break;
            }
            canvas.translate(alignX, 0.0f);
            singleLineText.draw(canvas);
            canvas.translate(-alignX, 0.0f);
            canvas.translate(0.0f, this.mLineHeight);
        }
        canvas.restore();
    }

    public void countText() {
        cutText();
        refreshRect();
    }

    public void countText(float maxWidth, float maxHeight) {
        this.mPaint.getFontMetricsInt(this.mFontMetricsInt);
        this.mLineHeight = getLineHeight();
        this.mMultipleLineText.reset();
        if (maxWidth != 0.0f && maxHeight != 0.0f) {
            int maxLines;
            if (maxWidth < 0.0f) {
                maxWidth = Float.MAX_VALUE;
            }
            if (maxHeight < 0.0f) {
                maxLines = Integer.MAX_VALUE;
            } else {
                maxLines = (int) (maxHeight / this.mLineHeight);
            }
            if (maxLines < 1) {
                maxLines = 1;
            }
            if (this.mMaxLines > 0 && maxLines > this.mMaxLines) {
                maxLines = this.mMaxLines;
            }
            List<SingleLineText> singleLineTextList = this.mMultipleLineText.mSingleLineTextList;
            singleLineTextList.add(new SingleLineText());
            int start = 0;
            while (start < this.mText.length() && singleLineTextList.size() <= maxLines) {
                int length;
                int index = TextUtils.indexOf(this.mText, 10, start, this.mText.length());
                SingleLineText singleLineText = (SingleLineText) singleLineTextList.get(singleLineTextList.size() - 1);
                StringBuilder access$800 = singleLineText.mBuilder;
                String str = this.mText;
                if (index == -1) {
                    length = this.mText.length();
                } else {
                    length = index;
                }
                access$800.append(str.substring(start, length));
                singleLineText.count();
                if (singleLineText.mWidth > maxWidth) {
                    singleLineTextList.remove(singleLineTextList.size() - 1);
                    singleLineTextList.addAll(cutSingleLineTextByWidth(singleLineText, maxWidth, maxLines - singleLineTextList.size()));
                }
                if (index == -1) {
                    break;
                }
                singleLineTextList.add(new SingleLineText());
                start = index + 1;
            }
            while (singleLineTextList.size() > maxLines) {
                singleLineTextList.remove(this.mMultipleLineText.mSingleLineTextList.size() - 1);
            }
            for (SingleLineText single : this.mMultipleLineText.mSingleLineTextList) {
                if (single.mWidth > this.mMultipleLineText.mWidth) {
                    this.mMultipleLineText.mWidth = single.mWidth;
                }
            }
            this.mMultipleLineText.mHeight = this.mLineHeight * ((float) this.mMultipleLineText.mSingleLineTextList.size());
            refreshRect();
        }
    }

    private void refreshRect() {
        float widthHalf = this.mMultipleLineText.mWidth / 2.0f;
        float heightHalf = this.mMultipleLineText.mHeight / 2.0f;
        this.mLineHeight = getLineHeight();
        this.mBound.set(-widthHalf, -heightHalf, widthHalf, heightHalf);
    }

    public void countTextArea(float maxWidth, float maxHeight, float minSize, float maxSize, float sizeSpacing) {
        Log.d("AutoLineLayout", "--- begin count text in a area ---");
        this.mMultipleLineText.reset();
        this.mBound.setEmpty();
        if (!TextUtils.isEmpty(this.mText)) {
            cutText();
            long a = System.currentTimeMillis();
            findSuitableTextSize(maxWidth, maxHeight, minSize, maxSize, sizeSpacing);
            countText(maxWidth, maxHeight);
            findSuitableTextSize(maxWidth, maxHeight, minSize, maxSize, sizeSpacing);
            long b = System.currentTimeMillis();
            Log.d("AutoLineLayout", "text size coast time：%d", Long.valueOf(b - a));
            countText(maxWidth, maxHeight);
            Log.d("AutoLineLayout", "text resize coast time：%d", Long.valueOf(System.currentTimeMillis() - b));
            Log.d("AutoLineLayout", "--- end count text in a area ---");
        }
    }

    private void findSuitableTextSize(float maxWidth, float maxHeight, float minSize, float maxSize, float sizeSpacing) {
        float size = this.mPaint.getTextSize();
        float temSize = size;
        float height = this.mMultipleLineText.mHeight;
        float width = this.mMultipleLineText.mWidth;
        while (width < maxWidth && height < maxHeight && temSize <= maxSize) {
            temSize += sizeSpacing;
            this.mPaint.setTextSize(temSize);
            height = this.mPaint.getFontSpacing() * ((float) this.mMultipleLineText.mSingleLineTextList.size());
            width = this.mMultipleLineText.mWidth * (temSize / size);
        }
        while (true) {
            if ((width > maxWidth || height > maxHeight) && temSize >= minSize) {
                temSize -= sizeSpacing;
                this.mPaint.setTextSize(temSize);
                height = this.mPaint.getFontSpacing() * ((float) this.mMultipleLineText.mSingleLineTextList.size());
                width = this.mMultipleLineText.mWidth * (temSize / size);
            }
        }
        width = this.mPaint.measureText(this.mMultipleLineText.mLongestText);
        while (width < maxWidth && height < maxHeight && temSize <= maxSize) {
            temSize += sizeSpacing;
            this.mPaint.setTextSize(temSize);
            height = this.mPaint.getFontSpacing() * ((float) this.mMultipleLineText.mSingleLineTextList.size());
            width = this.mPaint.measureText(this.mMultipleLineText.mLongestText);
        }
        while (true) {
            if ((width > maxWidth || height > maxHeight) && temSize >= minSize) {
                temSize -= sizeSpacing;
                this.mPaint.setTextSize(temSize);
                height = this.mPaint.getFontSpacing() * ((float) this.mMultipleLineText.mSingleLineTextList.size());
                width = this.mPaint.measureText(this.mMultipleLineText.mLongestText);
            }
        }
        this.mMultipleLineText.mWidth = width;
        this.mMultipleLineText.mHeight = height;
        refreshRect();
    }

    private List<SingleLineText> cutSingleLineTextByWidth(SingleLineText singleLineText, float maxWidth, int maxLines) {
        List<SingleLineText> lineTextList = new ArrayList();
        if (maxLines > 0) {
            char[] chars = singleLineText.mBuilder.toString().toCharArray();
            SingleLineText subSingleLineText = new SingleLineText();
            int j = 0;
            int i = 0;
            while (i <= chars.length) {
                if (this.mPaint.measureText(chars, j, i - j) > maxWidth) {
                    int end = i - 1;
                    if (end == j) {
                        end++;
                    }
                    subSingleLineText.mBuilder.append(chars, j, end - j);
                    subSingleLineText.count();
                    lineTextList.add(subSingleLineText);
                    if (lineTextList.size() >= maxLines) {
                        break;
                    }
                    subSingleLineText = new SingleLineText();
                    j = end;
                    i = j;
                } else if (i == chars.length) {
                    subSingleLineText.mBuilder.append(chars, j, i - j);
                    subSingleLineText.count();
                    lineTextList.add(subSingleLineText);
                    if (lineTextList.size() >= maxLines) {
                        break;
                    }
                } else {
                    continue;
                }
                i++;
            }
        }
        return lineTextList;
    }

    private void cutText() {
        long a = System.currentTimeMillis();
        this.mPaint.getFontMetricsInt(this.mFontMetricsInt);
        this.mLineHeight = getLineHeight();
        this.mMultipleLineText.reset();
        if (!TextUtils.isEmpty(this.mText)) {
            List<SingleLineText> singleLineTextList = this.mMultipleLineText.mSingleLineTextList;
            singleLineTextList.add(new SingleLineText());
            int start = 0;
            while (start < this.mText.length()) {
                int index = TextUtils.indexOf(this.mText, 10, start, this.mText.length());
                SingleLineText singleLineText = (SingleLineText) singleLineTextList.get(singleLineTextList.size() - 1);
                singleLineText.mBuilder.append(this.mText.substring(start, index == -1 ? this.mText.length() : index));
                singleLineText.count();
                if (singleLineText.mWidth > this.mMultipleLineText.mWidth) {
                    this.mMultipleLineText.mWidth = singleLineText.mWidth;
                    this.mMultipleLineText.mLongestText = singleLineText.mBuilder.toString();
                }
                if (index == -1) {
                    break;
                }
                singleLineTextList.add(new SingleLineText());
                start = index + 1;
            }
            this.mMultipleLineText.mHeight = ((float) this.mMultipleLineText.mSingleLineTextList.size()) * this.mLineHeight;
            Log.d("AutoLineLayout", "cut text coast time： %d", Long.valueOf(System.currentTimeMillis() - a));
        }
    }

    private float getLineHeight() {
        return this.mPaint.getFontSpacing() + this.mLineHeightOffset;
    }

    public Paint getPaint() {
        return this.mPaint;
    }

    public void setText(String text) {
        this.mOriginText = text;
        this.mText = text;
        if (this.mIsSingleVerticalText) {
            this.mText = getSingleLineText(this.mText);
        }
    }

    public void getTextRect(RectF dst) {
        dst.set(this.mBound);
    }

    public void setTextAlignment(TextAlignment textAlignment) {
        this.mTextAlignment = textAlignment;
    }

    public TextAlignment getTextAlignment() {
        return this.mTextAlignment;
    }

    public void setLetterSpace(float letterSpace) {
        if (VERSION.SDK_INT >= 21) {
            this.mPaint.setLetterSpacing(letterSpace);
        }
    }

    public String getText() {
        return this.mOriginText;
    }

    public void setLineHeightOffset(float lineHeightOffset) {
        this.mLineHeightOffset = lineHeightOffset;
    }

    public void setSingleVerticalText(boolean singleVerticalText) {
        this.mIsSingleVerticalText = singleVerticalText;
    }

    private static String getSingleLineText(String text) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < text.length(); i++) {
            char c = text.charAt(i);
            if (c != 10) {
                sb.append(c);
                if (i < text.length() - 1) {
                    sb.append(10);
                }
            }
        }
        return sb.toString();
    }

    public void setMaxLines(int maxLines) {
        this.mMaxLines = maxLines;
    }
}
