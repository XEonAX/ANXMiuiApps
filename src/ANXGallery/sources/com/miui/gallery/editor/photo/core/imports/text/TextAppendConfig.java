package com.miui.gallery.editor.photo.core.imports.text;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.imports.text.TextFragment.DialogStatusData;
import com.miui.gallery.editor.photo.core.imports.text.base.ITextDialogConfig;
import com.miui.gallery.editor.photo.core.imports.text.dialog.BaseDialogModel;
import com.miui.gallery.editor.photo.core.imports.text.typeface.TextStyle;
import com.miui.gallery.editor.photo.core.imports.text.utils.AutoLineLayout;
import com.miui.gallery.editor.photo.core.imports.text.utils.AutoLineLayout.TextAlignment;
import com.miui.gallery.editor.photo.utils.parcelable.ParcelableGenericUtils;
import com.miui.gallery.util.Log;
import com.nexstreaming.nexeditorsdk.nexClip;

public class TextAppendConfig implements Parcelable, ITextDialogConfig {
    public static final Creator<TextAppendConfig> CREATOR = new Creator<TextAppendConfig>() {
        public TextAppendConfig createFromParcel(Parcel source) {
            return new TextAppendConfig(source);
        }

        public TextAppendConfig[] newArray(int size) {
            return new TextAppendConfig[size];
        }
    };
    private AutoLineLayout mAutoLineLayout;
    private int mColor;
    private Context mContext;
    private final int mCornerDialogWidth;
    private final int mCorrectionDegrees;
    private final float mCountSizeSpacing;
    private float mDefaultLocationX;
    private float mDefaultLocationY;
    private final int mDefaultStrokeWidth;
    private final float mDefaultTextSize;
    private Drawable mDialogDrawable;
    private BaseDialogModel mDialogModel;
    private final int mDialogOutLineOffsetX;
    private final int mDialogOutLineOffsetY;
    private RectF mDialogRect;
    private final int mDialogWidth;
    private boolean mIsActivation;
    private boolean mIsBoldText;
    private boolean mIsCorrection;
    private boolean mIsMirror;
    private boolean mIsRTL;
    private boolean mIsShadow;
    private Matrix mMatrix;
    private final float mMaxTextSize;
    private float mMaxWidth;
    private final int mMinTextSize;
    private final int mOutLineOffsetX;
    private final int mOutLineOffsetY;
    private RectF mOutLineRect;
    private float mRotateDegrees;
    private float mScaleMultipleOrigin;
    private RectF mTemRect;
    private String mText;
    private final float mTextAppendPadding;
    private TextDrawable mTextDrawable;
    private RectF mTextInDialogRect;
    private RectF mTextRect;
    private TextStyle mTextStyle;
    private float mTextTransparent;
    private float mUserLocationX;
    private float mUserLocationY;
    private float mUserScaleMultiple;

    private class TextDrawable extends Drawable {
        private Rect rectTemp;

        private TextDrawable() {
            this.rectTemp = new Rect();
        }

        /* synthetic */ TextDrawable(TextAppendConfig x0, AnonymousClass1 x1) {
            this();
        }

        public void draw(Canvas canvas) {
            initCanvas(canvas);
            if (TextAppendConfig.this.isDialogEnable()) {
                drawDialog(canvas);
                drawText(canvas);
                return;
            }
            drawText(canvas);
        }

        public void setAlpha(int alpha) {
        }

        public void setColorFilter(ColorFilter colorFilter) {
        }

        public int getOpacity() {
            return -3;
        }

        private void initCanvas(Canvas canvas) {
            if (TextAppendConfig.this.mDefaultLocationX < 0.0f) {
                TextAppendConfig.this.mDefaultLocationX = ((float) canvas.getWidth()) / 2.0f;
            }
            if (TextAppendConfig.this.mDefaultLocationY < 0.0f) {
                TextAppendConfig.this.mDefaultLocationY = ((float) canvas.getHeight()) / 2.0f;
            }
        }

        private void drawDialog(Canvas canvas) {
            if (TextAppendConfig.this.mDialogDrawable != null) {
                TextAppendConfig.this.mDialogRect.round(this.rectTemp);
                TextAppendConfig.this.mDialogDrawable.setBounds(this.rectTemp);
                canvas.save();
                canvasTranslate(canvas, true, true);
                if (TextAppendConfig.this.mIsMirror) {
                    canvas.scale(-1.0f, 1.0f);
                }
                if (TextAppendConfig.this.isCornerDialog()) {
                    TextAppendConfig.this.mDialogDrawable.setColorFilter(TextAppendConfig.this.mColor, Mode.SRC_IN);
                }
                TextAppendConfig.this.mDialogDrawable.draw(canvas);
                canvas.restore();
            }
        }

        private void drawText(Canvas canvas) {
            if (!TextUtils.isEmpty(TextAppendConfig.this.mText)) {
                canvas.save();
                canvasTranslate(canvas, true, true);
                if (TextAppendConfig.this.isDialogEnable()) {
                    if (TextAppendConfig.this.mIsMirror) {
                        canvas.translate(-TextAppendConfig.this.mTextInDialogRect.centerX(), TextAppendConfig.this.mTextInDialogRect.centerY());
                    } else {
                        canvas.translate(TextAppendConfig.this.mTextInDialogRect.centerX(), TextAppendConfig.this.mTextInDialogRect.centerY());
                    }
                }
                TextAppendConfig.this.mAutoLineLayout.draw(canvas);
                canvas.restore();
            }
        }

        private void canvasTranslate(Canvas canvas, boolean scale, boolean rotate) {
            canvas.translate(TextAppendConfig.this.mDefaultLocationX + TextAppendConfig.this.mUserLocationX, TextAppendConfig.this.mDefaultLocationY + TextAppendConfig.this.mUserLocationY);
            if (scale) {
                canvas.scale(TextAppendConfig.this.getScaleMultiple(), TextAppendConfig.this.getScaleMultiple(), 0.0f, 0.0f);
            }
            if (rotate) {
                canvas.rotate(TextAppendConfig.this.getRotateDegrees(), 0.0f, 0.0f);
            }
        }
    }

    TextAppendConfig(Context context) {
        this.mIsRTL = false;
        this.mContext = context;
        Resources res = context.getResources();
        if (res.getConfiguration().getLayoutDirection() == 1) {
            this.mIsRTL = true;
        }
        this.mOutLineOffsetX = res.getDimensionPixelSize(R.dimen.text_append_out_line_offset_x);
        this.mOutLineOffsetY = res.getDimensionPixelSize(R.dimen.text_append_out_line_offset_y);
        this.mDialogOutLineOffsetX = res.getDimensionPixelSize(R.dimen.text_append_dialog_out_line_offset_x);
        this.mDialogOutLineOffsetY = res.getDimensionPixelSize(R.dimen.text_append_dialog_out_line_offset_y);
        this.mDialogWidth = res.getDimensionPixelSize(R.dimen.text_append_dialog_bg_default_width);
        this.mCornerDialogWidth = res.getDimensionPixelSize(R.dimen.text_append_corner_dialog_default_width);
        this.mMinTextSize = res.getDimensionPixelSize(R.dimen.text_append_min_text_size);
        this.mDefaultStrokeWidth = res.getDimensionPixelSize(R.dimen.text_append_default_stroke_width);
        this.mCorrectionDegrees = 5;
        this.mDefaultTextSize = res.getDimension(R.dimen.text_append_default_text_size);
        this.mMaxTextSize = res.getDimension(R.dimen.text_append_max_text_size);
        this.mCountSizeSpacing = res.getDisplayMetrics().density;
        this.mTextAppendPadding = res.getDimension(R.dimen.text_append_padding);
        this.mColor = -1;
        this.mTextStyle = null;
        if (this.mText == null) {
            this.mText = res.getString(R.string.text_append_hint);
        }
        this.mIsActivation = false;
        this.mTextTransparent = 0.0f;
        this.mIsBoldText = false;
        this.mIsShadow = false;
        this.mDefaultLocationX = -1.0f;
        this.mDefaultLocationY = -1.0f;
        this.mUserLocationX = 0.0f;
        this.mUserLocationY = 0.0f;
        this.mUserScaleMultiple = 1.0f;
        this.mScaleMultipleOrigin = 1.0f;
        this.mRotateDegrees = 0.0f;
        this.mIsMirror = false;
        this.mIsCorrection = false;
        this.mAutoLineLayout = new AutoLineLayout();
        this.mAutoLineLayout.getPaint().setTextSize(this.mDefaultTextSize);
        this.mAutoLineLayout.setLineHeightOffset(res.getDimension(R.dimen.text_append_line_height_offset));
        this.mOutLineRect = new RectF();
        this.mTextRect = new RectF();
        this.mTextInDialogRect = new RectF();
        this.mDialogRect = new RectF();
        this.mTemRect = new RectF();
        this.mMatrix = new Matrix();
        this.mTextDrawable = new TextDrawable(this, null);
        this.mAutoLineLayout.setTextAlignment(this.mIsRTL ? TextAlignment.RIGHT : TextAlignment.LEFT);
    }

    public void setDialogModel(BaseDialogModel dialogModel, Resources resources) {
        this.mDialogModel = dialogModel;
        this.mDialogDrawable = dialogModel.readDialogDrawable(resources);
        if (this.mDialogDrawable == null) {
            this.mDialogModel = null;
        }
    }

    public BaseDialogModel getDialogModel() {
        return this.mDialogModel;
    }

    public String getSampleName() {
        if (this.mDialogModel != null) {
            return "dialog_" + this.mDialogModel.name;
        }
        return "dialog_none";
    }

    public void toggleMirror() {
        this.mIsMirror = !this.mIsMirror;
    }

    public void setColor(int color) {
        this.mColor = color;
    }

    public int getColor() {
        return this.mColor;
    }

    public TextStyle getTextStyle() {
        return this.mTextStyle;
    }

    public void setTextStyle(TextStyle textStyle) {
        this.mTextStyle = textStyle;
    }

    public String getText() {
        return this.mText;
    }

    public void setText(String text) {
        this.mText = text;
    }

    public void setTextTransparent(float textTransparent) {
        this.mTextTransparent = textTransparent;
    }

    public float getTextTransparent() {
        return this.mTextTransparent;
    }

    public boolean isActivation() {
        return this.mIsActivation;
    }

    public void setActivation(boolean activation) {
        this.mIsActivation = activation;
    }

    public boolean isBoldText() {
        return this.mIsBoldText;
    }

    public void setBoldText(boolean boldText) {
        this.mIsBoldText = boldText;
    }

    public boolean isShadow() {
        return this.mIsShadow;
    }

    public void setShadow(boolean shadow) {
        this.mIsShadow = shadow;
    }

    public float getUserLocationX() {
        return this.mUserLocationX;
    }

    public float getUserLocationY() {
        return this.mUserLocationY;
    }

    public TextAlignment getTextAlignment() {
        return this.mAutoLineLayout.getTextAlignment();
    }

    public void setTextAlignment(TextAlignment textAlignment) {
        this.mAutoLineLayout.setTextAlignment(textAlignment);
    }

    public void appendUserLocationX(float userLocationX) {
        this.mUserLocationX += userLocationX;
    }

    public void appendUserLocationY(float userLocationY) {
        this.mUserLocationY += userLocationY;
    }

    public void setUserLocationX(float userLocationX) {
        this.mUserLocationX = userLocationX;
    }

    public void setUserLocationY(float userLocationY) {
        this.mUserLocationY = userLocationY;
    }

    public void setDrawOutline(boolean drawOutline) {
    }

    public void getOutLineRect(RectF dst) {
        dst.set(this.mOutLineRect);
        offsetRect(dst);
    }

    public void setUserScaleMultiple(float scaleMultiple) {
        this.mUserScaleMultiple = scaleMultiple;
        if (this.mUserScaleMultiple < 0.3f) {
            this.mUserScaleMultiple = 0.3f;
        }
        if (this.mUserScaleMultiple > 5.0f) {
            this.mUserScaleMultiple = 5.0f;
        }
    }

    public void setScaleMultipleOrigin(float scaleMultipleOrigin) {
        this.mScaleMultipleOrigin = scaleMultipleOrigin;
    }

    public float getScaleMultiple() {
        return this.mUserScaleMultiple * this.mScaleMultipleOrigin;
    }

    public float getUserScaleMultiple() {
        return this.mUserScaleMultiple;
    }

    public float getRotateDegrees() {
        float degrees = this.mRotateDegrees;
        if (degrees < 0.0f) {
            degrees += 360.0f;
        }
        degrees %= 360.0f;
        this.mIsCorrection = false;
        if (degrees > 0.0f && degrees < ((float) this.mCorrectionDegrees)) {
            this.mIsCorrection = true;
            degrees = 0.0f;
        }
        if (degrees > ((float) (360 - this.mCorrectionDegrees))) {
            this.mIsCorrection = true;
            degrees = 0.0f;
        }
        if (degrees != 90.0f && degrees > ((float) (90 - this.mCorrectionDegrees)) && degrees < ((float) (this.mCorrectionDegrees + 90))) {
            this.mIsCorrection = true;
            degrees = 90.0f;
        }
        if (degrees != 180.0f && degrees > ((float) (180 - this.mCorrectionDegrees)) && degrees < ((float) (this.mCorrectionDegrees + nexClip.kClip_Rotate_180))) {
            this.mIsCorrection = true;
            degrees = 180.0f;
        }
        if (degrees == 270.0f || degrees <= ((float) (270 - this.mCorrectionDegrees)) || degrees >= ((float) (this.mCorrectionDegrees + nexClip.kClip_Rotate_270))) {
            return degrees;
        }
        this.mIsCorrection = true;
        return 270.0f;
    }

    public void setRotateDegrees(float rotateDegrees) {
        this.mRotateDegrees = rotateDegrees;
    }

    public void refreshRotateDegree() {
        this.mRotateDegrees = getRotateDegrees();
    }

    public boolean isDialogEnable() {
        return this.mDialogModel != null && this.mDialogModel.hasDialog();
    }

    private boolean isCornerDialog() {
        return this.mDialogModel != null && this.mDialogModel.isCorner;
    }

    private void offsetRect(RectF rectF) {
        rectF.offset(this.mDefaultLocationX + this.mUserLocationX, this.mDefaultLocationY + this.mUserLocationY);
    }

    public boolean contains(float x, float y) {
        getOutLineRect(this.mTemRect);
        this.mMatrix.reset();
        this.mMatrix.postRotate(-getRotateDegrees(), this.mTemRect.centerX(), this.mTemRect.centerY());
        float[] tem = new float[]{x, y};
        this.mMatrix.mapPoints(tem);
        return this.mTemRect.contains(tem[0], tem[1]);
    }

    public void countLocation(boolean isTextChange, float maxWidth) {
        this.mMaxWidth = maxWidth;
        maxWidth = (maxWidth / this.mScaleMultipleOrigin) - this.mTextAppendPadding;
        configTextPaint(this.mAutoLineLayout.getPaint());
        if (!isDialogEnable()) {
            if (isTextChange) {
                countTextNormal(maxWidth);
            }
            countOutLine();
        } else if (isCornerDialog()) {
            if (isTextChange) {
                countTextNormal(maxWidth);
            }
            countDialogCorner();
            countOutLine();
        } else {
            countDialog();
            if (isTextChange) {
                countTextInDialog();
            }
            countOutLine();
        }
    }

    private void countOutLine() {
        this.mAutoLineLayout.getTextRect(this.mTextRect);
        if (!isDialogEnable()) {
            if (TextUtils.isEmpty(this.mText)) {
                this.mTextRect.setEmpty();
                this.mTextRect.inset((float) (-this.mDefaultStrokeWidth), (float) (-this.mDefaultStrokeWidth));
            }
            this.mOutLineRect.set(this.mTextRect);
        } else if (isCornerDialog()) {
            this.mOutLineRect.set(this.mDialogRect);
            this.mOutLineRect.union(this.mTextInDialogRect);
        } else {
            this.mOutLineRect.set(this.mDialogRect);
        }
        if (isDialogEnable()) {
            this.mOutLineRect.inset((float) (-this.mDialogOutLineOffsetX), (float) (-this.mDialogOutLineOffsetY));
        } else {
            this.mOutLineRect.inset((float) (-this.mOutLineOffsetX), (float) (-this.mOutLineOffsetY));
        }
        this.mOutLineRect.inset(-(((this.mOutLineRect.width() * getScaleMultiple()) - this.mOutLineRect.width()) / 2.0f), -(((this.mOutLineRect.height() * getScaleMultiple()) - this.mOutLineRect.height()) / 2.0f));
    }

    private void countDialog() {
        float height = (((float) this.mDialogDrawable.getIntrinsicHeight()) * (((float) this.mDialogWidth) / ((float) this.mDialogDrawable.getIntrinsicWidth()))) / 2.0f;
        float width = ((float) this.mDialogWidth) / 2.0f;
        this.mDialogRect.set(-width, -height, width, height);
    }

    private void countTextNormal(float maxWidth) {
        this.mAutoLineLayout.setText(this.mText);
        long a = System.currentTimeMillis();
        this.mAutoLineLayout.countText(maxWidth, -1.0f);
        Log.d("TextAppendConfig", "文字计算耗时： %d", Long.valueOf(System.currentTimeMillis() - a));
    }

    private void countTextInDialog() {
        this.mTextInDialogRect.setEmpty();
        if (!TextUtils.isEmpty(this.mText)) {
            this.mAutoLineLayout.setText(this.mText);
            this.mTextInDialogRect.set(this.mDialogRect);
            this.mDialogModel.configRect(this.mTextInDialogRect, false);
            long a = System.currentTimeMillis();
            this.mAutoLineLayout.countTextArea(this.mTextInDialogRect.width(), this.mTextInDialogRect.height(), (float) this.mMinTextSize, this.mMaxTextSize, this.mCountSizeSpacing);
            Log.d("TextAppendConfig", "测量耗时： %d", Long.valueOf(System.currentTimeMillis() - a));
        }
    }

    private void countDialogCorner() {
        this.mAutoLineLayout.getTextRect(this.mTextRect);
        float height = (((float) this.mDialogDrawable.getIntrinsicHeight()) * (((float) this.mCornerDialogWidth) / ((float) this.mDialogDrawable.getIntrinsicWidth()))) / 2.0f;
        float width = ((float) this.mCornerDialogWidth) / 2.0f;
        this.mDialogRect.set(-width, -height, width, height);
        float offsetX = this.mTextRect.width() / 2.0f;
        float offsetY = this.mTextRect.height() / 2.0f;
        this.mTextInDialogRect.set(this.mTextRect);
        switch (this.mDialogModel.cornerPosition) {
            case 0:
                this.mDialogRect.offset(-offsetX, -offsetY);
                this.mTextInDialogRect.offset(width, height);
                return;
            case 1:
                this.mDialogRect.offset(offsetX, -offsetY);
                this.mTextInDialogRect.offset(-width, height);
                return;
            case 2:
                this.mDialogRect.offset(-offsetX, offsetY);
                this.mTextInDialogRect.offset(width, -height);
                return;
            case 3:
                this.mDialogRect.offset(offsetX, offsetY);
                this.mTextInDialogRect.offset(-width, -height);
                return;
            default:
                return;
        }
    }

    private void configTextPaint(Paint textPaint) {
        textPaint.setColor(this.mColor);
        textPaint.setTypeface(this.mTextStyle == null ? Typeface.DEFAULT : this.mTextStyle.getTypeFace());
        textPaint.setAlpha(getAlphaByConfig());
        textPaint.setFakeBoldText(this.mIsBoldText);
        if (this.mIsShadow) {
            textPaint.setShadowLayer(1.0f, 1.0f, 1.0f, 1711276032);
        } else {
            textPaint.clearShadowLayer();
        }
        if (!isDialogEnable() || isCornerDialog()) {
            textPaint.setTextSize(this.mDefaultTextSize);
        }
    }

    private int getAlphaByConfig() {
        return (int) (255.0f - (this.mTextTransparent * 230.0f));
    }

    public void draw(Canvas canvas) {
        if (this.mTextDrawable != null) {
            this.mTextDrawable.draw(canvas);
        }
    }

    public void setDisplaySize(float width, float height) {
        this.mDefaultLocationX = width / 2.0f;
        this.mDefaultLocationY = height / 2.0f;
    }

    public boolean isWatermark() {
        return false;
    }

    public void reverseColor(int color) {
    }

    public boolean isReverseColor() {
        return false;
    }

    public void getDialogStatusData(DialogStatusData dialogStatusData) {
        dialogStatusData.itemPositionX = getUserLocationX();
        dialogStatusData.itemPositionY = getUserLocationY();
        dialogStatusData.itemScale = getUserScaleMultiple();
        dialogStatusData.itemDegree = getRotateDegrees();
        dialogStatusData.color = getColor();
        dialogStatusData.transparentProgress = getTextTransparent();
        dialogStatusData.textStyle = getTextStyle();
        dialogStatusData.textBold = isBoldText();
        dialogStatusData.textShadow = isShadow();
        dialogStatusData.textAlignment = getTextAlignment();
        dialogStatusData.text = getText();
    }

    public void setDialogWithStatusData(DialogStatusData dialogStatusData) {
        setUserLocationX(dialogStatusData.itemPositionX);
        setUserLocationY(dialogStatusData.itemPositionY);
        setUserScaleMultiple(dialogStatusData.itemScale);
        setRotateDegrees(dialogStatusData.itemDegree);
        setColor(dialogStatusData.color);
        setTextTransparent(dialogStatusData.transparentProgress);
        setTextStyle(dialogStatusData.textStyle);
        setBoldText(dialogStatusData.textBold);
        setShadow(dialogStatusData.textShadow);
        setTextAlignment(dialogStatusData.textAlignment);
        if (dialogStatusData.text != null) {
            setText(dialogStatusData.text);
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        byte b;
        byte b2 = (byte) 1;
        ParcelableGenericUtils.writeObject(dest, flags, this.mDialogModel);
        dest.writeInt(this.mColor);
        ParcelableGenericUtils.writeObject(dest, flags, this.mTextStyle);
        dest.writeString(this.mText);
        dest.writeByte(this.mIsActivation ? (byte) 1 : (byte) 0);
        dest.writeFloat(this.mTextTransparent);
        if (this.mIsBoldText) {
            b = (byte) 1;
        } else {
            b = (byte) 0;
        }
        dest.writeByte(b);
        if (this.mIsShadow) {
            b = (byte) 1;
        } else {
            b = (byte) 0;
        }
        dest.writeByte(b);
        dest.writeFloat(this.mDefaultLocationX);
        dest.writeFloat(this.mDefaultLocationY);
        dest.writeFloat(this.mUserLocationX);
        dest.writeFloat(this.mUserLocationY);
        dest.writeFloat(this.mUserScaleMultiple);
        dest.writeFloat(this.mScaleMultipleOrigin);
        dest.writeFloat(this.mRotateDegrees);
        if (this.mIsMirror) {
            b = (byte) 1;
        } else {
            b = (byte) 0;
        }
        dest.writeByte(b);
        if (!this.mIsCorrection) {
            b2 = (byte) 0;
        }
        dest.writeByte(b2);
        dest.writeInt(this.mAutoLineLayout.getTextAlignment().ordinal());
        dest.writeFloat(this.mMaxWidth);
    }

    protected TextAppendConfig(Parcel in) {
        boolean z;
        boolean z2 = true;
        this(GalleryApp.sGetAndroidContext());
        this.mDialogModel = (BaseDialogModel) ParcelableGenericUtils.readObject(in);
        this.mColor = in.readInt();
        this.mTextStyle = (TextStyle) ParcelableGenericUtils.readObject(in);
        this.mText = in.readString();
        if (in.readByte() != (byte) 0) {
            z = true;
        } else {
            z = false;
        }
        this.mIsActivation = z;
        this.mTextTransparent = in.readFloat();
        if (in.readByte() != (byte) 0) {
            z = true;
        } else {
            z = false;
        }
        this.mIsBoldText = z;
        if (in.readByte() != (byte) 0) {
            z = true;
        } else {
            z = false;
        }
        this.mIsShadow = z;
        this.mDefaultLocationX = in.readFloat();
        this.mDefaultLocationY = in.readFloat();
        this.mUserLocationX = in.readFloat();
        this.mUserLocationY = in.readFloat();
        this.mUserScaleMultiple = in.readFloat();
        this.mScaleMultipleOrigin = in.readFloat();
        this.mRotateDegrees = in.readFloat();
        if (in.readByte() != (byte) 0) {
            z = true;
        } else {
            z = false;
        }
        this.mIsMirror = z;
        if (in.readByte() == (byte) 0) {
            z2 = false;
        }
        this.mIsCorrection = z2;
        this.mAutoLineLayout.setTextAlignment(TextAlignment.values()[in.readInt()]);
        this.mMaxWidth = in.readFloat();
        initForParcelable();
    }

    private void initForParcelable() {
        TextManager.loadModule();
        if (this.mDialogModel != null) {
            this.mDialogDrawable = this.mDialogModel.readDialogDrawable(this.mContext.getResources());
        }
        countLocation(true, this.mMaxWidth);
    }
}
