package com.miui.gallery.editor.photo.core.imports.text.watermark;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.view.View;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.editor.photo.core.imports.text.TextFragment.DialogStatusData;
import com.miui.gallery.editor.photo.core.imports.text.TextFragment.TextStatusData;
import com.miui.gallery.editor.photo.core.imports.text.base.ITextDialogConfig;
import com.miui.gallery.editor.photo.core.imports.text.dialog.BaseDialogModel;
import com.miui.gallery.editor.photo.core.imports.text.typeface.TextStyle;
import com.miui.gallery.editor.photo.core.imports.text.utils.AutoLineLayout.TextAlignment;
import com.miui.gallery.editor.photo.core.imports.text.watermark.WatermarkInfo.TextPieceInfo;
import com.miui.gallery.editor.photo.utils.parcelable.ParcelableGenericUtils;
import com.miui.gallery.util.ScreenUtils;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import java.util.ArrayList;
import java.util.List;

public class WatermarkDialog implements Parcelable, ITextDialogConfig {
    public static final Creator<WatermarkDialog> CREATOR = new Creator<WatermarkDialog>() {
        public WatermarkDialog createFromParcel(Parcel source) {
            return new WatermarkDialog(source);
        }

        public WatermarkDialog[] newArray(int size) {
            return new WatermarkDialog[size];
        }
    };
    private boolean mActivation;
    private Bitmap mBgBitmap;
    private Paint mBgPaint;
    private RectF mBgPostRect;
    private float mBitmapHeight;
    private BitmapLoadingListener mBitmapLoadingListener;
    private float mBitmapWidth;
    private int mCurrentPieceIndex;
    private float mDefaultLocationX;
    private float mDefaultLocationY;
    private DialogStatusData mDialogStatusData;
    private boolean mIsCorrection;
    private boolean mIsFirstCount;
    private boolean mIsFromParcel;
    private Matrix mMatrix;
    private RectF mOutLineRect;
    private int mPaddingTop;
    private Resources mResource;
    private boolean mReverseColor;
    private float mRotateDegrees;
    private float mScaleMultipleOrigin;
    private RectF mTemRect;
    private float mUserLocationX;
    private float mUserLocationY;
    private float mUserScaleMultiple;
    private WatermarkInfo mWatermarkInfo;
    private List<WatermarkTextPiece> mWatermarkTextPieces;
    private ImageLoadingListener mbgPostLoadingListener;

    public interface BitmapLoadingListener {
        void onCompleted();
    }

    public WatermarkDialog(Resources res, WatermarkInfo watermarkInfo, float scaleMultipleOrigin) {
        this.mIsFirstCount = true;
        this.mDefaultLocationX = -1.0f;
        this.mDefaultLocationY = -1.0f;
        this.mbgPostLoadingListener = new ImageLoadingListener() {
            public void onLoadingStarted(String imageUri, View view) {
            }

            public void onLoadingFailed(String imageUri, View view, FailReason failReason) {
            }

            public void onLoadingComplete(String imageUri, View view, Bitmap loadedImage) {
                WatermarkDialog.this.mBgBitmap = loadedImage;
                WatermarkDialog.this.mBgPaint = new Paint(1);
                WatermarkDialog.this.mBgPaint.setAntiAlias(true);
                if (WatermarkDialog.this.mBitmapLoadingListener != null) {
                    WatermarkDialog.this.mBitmapLoadingListener.onCompleted();
                }
            }

            public void onLoadingCancelled(String imageUri, View view) {
            }
        };
        this.mResource = res;
        this.mWatermarkInfo = watermarkInfo;
        this.mScaleMultipleOrigin = scaleMultipleOrigin;
    }

    private WatermarkDialog() {
        this.mIsFirstCount = true;
        this.mDefaultLocationX = -1.0f;
        this.mDefaultLocationY = -1.0f;
        this.mbgPostLoadingListener = /* anonymous class already generated */;
    }

    public void init() {
        Resources res = this.mResource;
        if (this.mScaleMultipleOrigin > 1.0f) {
            this.mScaleMultipleOrigin = 1.0f;
        }
        if (this.mScaleMultipleOrigin < 0.3f) {
            this.mScaleMultipleOrigin = 0.3f;
        }
        this.mWatermarkTextPieces = new ArrayList();
        float width = ScreenUtils.dpToPixel(this.mWatermarkInfo.width);
        float height = ScreenUtils.dpToPixel(this.mWatermarkInfo.height);
        for (TextPieceInfo textPieceInfo : this.mWatermarkInfo.textPieceList) {
            this.mWatermarkTextPieces.add(new WatermarkTextPiece(res, textPieceInfo, width, height, this.mScaleMultipleOrigin));
        }
        if (!TextUtils.isEmpty(this.mWatermarkInfo.bgPost)) {
            if (this.mIsFromParcel) {
                this.mBgBitmap = ImageLoader.getInstance().loadImageSync(this.mWatermarkInfo.bgPost);
                this.mBgPaint = new Paint(1);
            } else {
                ImageLoader.getInstance().loadImage(this.mWatermarkInfo.bgPost, this.mbgPostLoadingListener);
            }
        }
        this.mUserLocationX = 0.0f;
        this.mUserLocationY = 0.0f;
        this.mUserScaleMultiple = 1.0f;
        this.mRotateDegrees = 0.0f;
        this.mIsCorrection = false;
        this.mOutLineRect = new RectF((-width) / 2.0f, (-height) / 2.0f, width / 2.0f, height / 2.0f);
        this.mTemRect = new RectF();
        this.mMatrix = new Matrix();
        if (this.mWatermarkInfo.bgPostRect != null) {
            this.mBgPostRect = new RectF(ScreenUtils.dpToPixel(this.mWatermarkInfo.bgPostRect[0]), ScreenUtils.dpToPixel(this.mWatermarkInfo.bgPostRect[1]), ScreenUtils.dpToPixel(this.mWatermarkInfo.bgPostRect[2]), ScreenUtils.dpToPixel(this.mWatermarkInfo.bgPostRect[3]));
            this.mBgPostRect.offset((-width) / 2.0f, (-height) / 2.0f);
        }
        if (this.mIsFromParcel) {
            setDialogWithStatusData(this.mDialogStatusData);
            this.mIsFromParcel = false;
        }
    }

    public void draw(Canvas canvas) {
        canvas.save();
        canvasTranslate(canvas, true, true);
        if (!(this.mBgBitmap == null || this.mWatermarkInfo.bgPostRect == null)) {
            canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
            canvas.drawBitmap(this.mBgBitmap, null, this.mBgPostRect, this.mBgPaint);
        }
        for (WatermarkTextPiece watermarkTextPiece : this.mWatermarkTextPieces) {
            watermarkTextPiece.draw(canvas);
        }
        canvas.restore();
    }

    private void offsetRect(RectF rectF) {
        rectF.offset(this.mDefaultLocationX + this.mUserLocationX, this.mDefaultLocationY + this.mUserLocationY);
    }

    private void canvasTranslate(Canvas canvas, boolean scale, boolean rotate) {
        canvas.translate(this.mDefaultLocationX + this.mUserLocationX, this.mDefaultLocationY + this.mUserLocationY);
        if (scale) {
            canvas.scale(getScaleMultiple(), getScaleMultiple(), 0.0f, 0.0f);
        }
        if (rotate) {
            canvas.rotate(getRotateDegrees(), 0.0f, 0.0f);
        }
    }

    private float getScaleMultiple() {
        return this.mUserScaleMultiple * this.mScaleMultipleOrigin;
    }

    public void getOutLineRect(RectF dst) {
        getTransRect(this.mOutLineRect, dst);
    }

    private void getTransRect(RectF src, RectF dst) {
        dst.set(src);
        dst.inset(-(((src.width() * getScaleMultiple()) - src.width()) / 2.0f), -(((src.height() * getScaleMultiple()) - src.height()) / 2.0f));
        offsetRect(dst);
    }

    public boolean isDialogEnable() {
        return false;
    }

    public float getRotateDegrees() {
        float degrees = this.mRotateDegrees;
        if (degrees < 0.0f) {
            degrees += 360.0f;
        }
        degrees %= 360.0f;
        this.mIsCorrection = false;
        if (degrees > 0.0f && degrees < 5.0f) {
            this.mIsCorrection = true;
            degrees = 0.0f;
        }
        if (degrees > 355.0f) {
            this.mIsCorrection = true;
            degrees = 0.0f;
        }
        if (degrees != 90.0f && degrees > 85.0f && degrees < 95.0f) {
            this.mIsCorrection = true;
            degrees = 90.0f;
        }
        if (degrees != 180.0f && degrees > 175.0f && degrees < 185.0f) {
            this.mIsCorrection = true;
            degrees = 180.0f;
        }
        if (degrees == 270.0f || degrees <= 265.0f || degrees >= 275.0f) {
            return degrees;
        }
        this.mIsCorrection = true;
        return 270.0f;
    }

    public void toggleMirror() {
    }

    public boolean contains(float x, float y) {
        getOutLineRect(this.mTemRect);
        this.mMatrix.reset();
        this.mMatrix.postRotate(-getRotateDegrees(), this.mTemRect.centerX(), this.mTemRect.centerY());
        float[] tem = new float[]{x, y};
        this.mMatrix.mapPoints(tem);
        boolean contains = this.mTemRect.contains(tem[0], tem[1]);
        this.mCurrentPieceIndex = 0;
        if (this.mWatermarkTextPieces.size() > 1) {
            this.mCurrentPieceIndex = -1;
            float minDistance = Float.MAX_VALUE;
            for (int i = 0; i < this.mWatermarkTextPieces.size(); i++) {
                getTransRect(((WatermarkTextPiece) this.mWatermarkTextPieces.get(i)).getOutlineRect(), this.mTemRect);
                if (this.mTemRect.contains(tem[0], tem[1])) {
                    this.mCurrentPieceIndex = i;
                    break;
                }
                float distance = (float) (Math.pow((double) (tem[0] - this.mTemRect.centerX()), 2.0d) + Math.pow((double) (tem[1] - this.mTemRect.centerY()), 2.0d));
                if (distance < minDistance) {
                    minDistance = distance;
                    this.mCurrentPieceIndex = i;
                }
            }
        }
        return contains;
    }

    public float getUserScaleMultiple() {
        return this.mUserScaleMultiple;
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

    public void setRotateDegrees(float rotateDegrees) {
        this.mRotateDegrees = rotateDegrees;
    }

    public void refreshRotateDegree() {
        this.mRotateDegrees = getRotateDegrees();
    }

    public void appendUserLocationX(float userLocationX) {
        this.mUserLocationX += userLocationX;
    }

    public void appendUserLocationY(float userLocationY) {
        this.mUserLocationY += userLocationY;
    }

    public void countLocation(boolean isTextChange, float maxWidth) {
        if (this.mIsFirstCount) {
            for (WatermarkTextPiece watermarkTextPiece : this.mWatermarkTextPieces) {
                watermarkTextPiece.configTextPaint();
                watermarkTextPiece.countTextInDialog();
            }
            this.mIsFirstCount = false;
            return;
        }
        ((WatermarkTextPiece) this.mWatermarkTextPieces.get(this.mCurrentPieceIndex)).configTextPaint();
        if (isTextChange) {
            ((WatermarkTextPiece) this.mWatermarkTextPieces.get(this.mCurrentPieceIndex)).countTextInDialog();
        }
    }

    public String getText() {
        return ((WatermarkTextPiece) this.mWatermarkTextPieces.get(this.mCurrentPieceIndex)).getText();
    }

    public float getTextTransparent() {
        return ((WatermarkTextPiece) this.mWatermarkTextPieces.get(this.mCurrentPieceIndex)).getTextTransparent();
    }

    public int getColor() {
        return ((WatermarkTextPiece) this.mWatermarkTextPieces.get(this.mCurrentPieceIndex)).getColor();
    }

    public TextStyle getTextStyle() {
        return ((WatermarkTextPiece) this.mWatermarkTextPieces.get(this.mCurrentPieceIndex)).getTextStyle();
    }

    public boolean isBoldText() {
        return ((WatermarkTextPiece) this.mWatermarkTextPieces.get(this.mCurrentPieceIndex)).isBoldText();
    }

    public boolean isShadow() {
        return ((WatermarkTextPiece) this.mWatermarkTextPieces.get(this.mCurrentPieceIndex)).isShadow();
    }

    public TextAlignment getTextAlignment() {
        return ((WatermarkTextPiece) this.mWatermarkTextPieces.get(this.mCurrentPieceIndex)).getTextAlignment();
    }

    public float getUserLocationX() {
        return this.mUserLocationX;
    }

    public float getUserLocationY() {
        return this.mUserLocationY;
    }

    public BaseDialogModel getDialogModel() {
        return null;
    }

    public void setActivation(boolean activation) {
        this.mActivation = activation;
    }

    public void setDialogModel(BaseDialogModel b, Resources resources) {
    }

    public boolean isActivation() {
        return this.mActivation;
    }

    public void setBitmapSize(float bitmapWidth, float bitmapHeight) {
        this.mBitmapWidth = bitmapWidth;
        this.mBitmapHeight = bitmapHeight;
    }

    public void setDisplaySize(float width, float height) {
        this.mDefaultLocationX = width / 2.0f;
        this.mDefaultLocationY = height / 2.0f;
        if (this.mWatermarkInfo.offsetX > 0.0f) {
            this.mDefaultLocationX = ScreenUtils.dpToPixel(this.mWatermarkInfo.offsetX);
            this.mDefaultLocationX += (width - this.mBitmapWidth) / 2.0f;
        } else if (this.mWatermarkInfo.offsetX < 0.0f) {
            this.mDefaultLocationX = ScreenUtils.dpToPixel(this.mWatermarkInfo.offsetX) + width;
            this.mDefaultLocationX -= (width - this.mBitmapWidth) / 2.0f;
        }
        if (this.mWatermarkInfo.offsetY > 0.0f) {
            this.mDefaultLocationY = ScreenUtils.dpToPixel(this.mWatermarkInfo.offsetY);
            this.mDefaultLocationY += (height - this.mBitmapHeight) / 2.0f;
            this.mDefaultLocationY += (float) (this.mPaddingTop / 2);
        } else if (this.mWatermarkInfo.offsetY < 0.0f) {
            this.mDefaultLocationY = ScreenUtils.dpToPixel(this.mWatermarkInfo.offsetY) + height;
            this.mDefaultLocationY -= (height - this.mBitmapHeight) / 2.0f;
            this.mDefaultLocationY += (float) (this.mPaddingTop / 2);
        }
    }

    public void setScaleMultipleOrigin(float originScale) {
        this.mScaleMultipleOrigin = originScale;
    }

    public void setColor(int color) {
        ((WatermarkTextPiece) this.mWatermarkTextPieces.get(this.mCurrentPieceIndex)).setColor(color);
    }

    public void setText(String text) {
        ((WatermarkTextPiece) this.mWatermarkTextPieces.get(this.mCurrentPieceIndex)).setText(text);
    }

    public void setShadow(boolean shadow) {
        ((WatermarkTextPiece) this.mWatermarkTextPieces.get(this.mCurrentPieceIndex)).setShadow(shadow);
    }

    public void setTextTransparent(float transparentProgress) {
        ((WatermarkTextPiece) this.mWatermarkTextPieces.get(this.mCurrentPieceIndex)).setTextTransparent(transparentProgress);
    }

    public void setTextStyle(TextStyle textStyle) {
        ((WatermarkTextPiece) this.mWatermarkTextPieces.get(this.mCurrentPieceIndex)).setTextStyle(textStyle);
    }

    public void setBoldText(boolean textBold) {
        ((WatermarkTextPiece) this.mWatermarkTextPieces.get(this.mCurrentPieceIndex)).setBoldText(textBold);
    }

    public void setTextAlignment(TextAlignment textAlignment) {
        ((WatermarkTextPiece) this.mWatermarkTextPieces.get(this.mCurrentPieceIndex)).setTextAlignment(textAlignment);
    }

    public void setUserLocationX(float userLocationX) {
        this.mUserLocationX = userLocationX;
    }

    public void setUserLocationY(float userLocationY) {
        this.mUserLocationY = userLocationY;
    }

    public void setDrawOutline(boolean drawOutline) {
        for (WatermarkTextPiece watermarkTextPiece : this.mWatermarkTextPieces) {
            watermarkTextPiece.setDrawOutline(drawOutline);
        }
    }

    public void reverseColor(int color) {
        this.mReverseColor = !this.mReverseColor;
        for (WatermarkTextPiece watermarkTextPiece : this.mWatermarkTextPieces) {
            watermarkTextPiece.setColor(color);
        }
    }

    public boolean isReverseColor() {
        return this.mReverseColor;
    }

    public void getDialogStatusData(DialogStatusData dialogStatusData) {
        dialogStatusData.itemPositionX = getUserLocationX();
        dialogStatusData.itemPositionY = getUserLocationY();
        dialogStatusData.itemScale = getUserScaleMultiple();
        dialogStatusData.itemDegree = getRotateDegrees();
        dialogStatusData.textStatusDatas = new TextStatusData[this.mWatermarkTextPieces.size()];
        dialogStatusData.isReverseColor = this.mReverseColor;
        for (int i = 0; i < dialogStatusData.textStatusDatas.length; i++) {
            WatermarkTextPiece watermarkTextPiece = (WatermarkTextPiece) this.mWatermarkTextPieces.get(i);
            TextStatusData textStatusData = new TextStatusData();
            textStatusData.color = watermarkTextPiece.getColor();
            textStatusData.transparentProgress = watermarkTextPiece.getTextTransparent();
            textStatusData.textStyle = watermarkTextPiece.getTextStyle();
            textStatusData.textBold = watermarkTextPiece.isBoldText();
            textStatusData.textShadow = watermarkTextPiece.isShadow();
            textStatusData.textAlignment = watermarkTextPiece.getTextAlignment();
            textStatusData.text = watermarkTextPiece.getText();
            dialogStatusData.textStatusDatas[i] = textStatusData;
        }
    }

    public void setDialogWithStatusData(DialogStatusData dialogStatusData) {
        TextStatusData textStatusData;
        if (dialogStatusData.textStatusDatas != null) {
            int i = 0;
            while (i < dialogStatusData.textStatusDatas.length && i < this.mWatermarkTextPieces.size()) {
                WatermarkTextPiece watermarkTextPiece = (WatermarkTextPiece) this.mWatermarkTextPieces.get(i);
                textStatusData = dialogStatusData.textStatusDatas[i];
                watermarkTextPiece.setColor(textStatusData.color);
                watermarkTextPiece.setTextTransparent(textStatusData.transparentProgress);
                watermarkTextPiece.setTextStyle(textStatusData.textStyle);
                watermarkTextPiece.setBoldText(textStatusData.textBold);
                watermarkTextPiece.setShadow(textStatusData.textShadow);
                if (!TextUtils.isEmpty(textStatusData.text)) {
                    watermarkTextPiece.setText(textStatusData.text);
                }
                watermarkTextPiece.setTextAlignment(textStatusData.textAlignment);
                i++;
            }
        } else {
            textStatusData = dialogStatusData;
            setColor(textStatusData.color);
            setTextTransparent(textStatusData.transparentProgress);
            setTextStyle(textStatusData.textStyle);
            setBoldText(textStatusData.textBold);
            setShadow(textStatusData.textShadow);
            setTextAlignment(textStatusData.textAlignment);
        }
        setUserLocationX(dialogStatusData.itemPositionX);
        setUserLocationY(dialogStatusData.itemPositionY);
        setUserScaleMultiple(dialogStatusData.itemScale);
        setRotateDegrees(dialogStatusData.itemDegree);
        this.mReverseColor = dialogStatusData.isReverseColor;
    }

    public void setPaddingTop(int paddingTop) {
        this.mPaddingTop = paddingTop;
    }

    public void setBitmapLoadingListener(BitmapLoadingListener bitmapLoadingListener) {
        this.mBitmapLoadingListener = bitmapLoadingListener;
    }

    public String getSampleName() {
        return "watermark_" + this.mWatermarkInfo.name;
    }

    public boolean isWatermark() {
        return true;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        DialogStatusData dialogStatusData = new DialogStatusData();
        getDialogStatusData(dialogStatusData);
        ParcelableGenericUtils.writeObject(dest, flags, dialogStatusData);
        ParcelableGenericUtils.writeObject(dest, flags, this.mWatermarkInfo);
        dest.writeFloat(this.mScaleMultipleOrigin);
        dest.writeFloat(this.mDefaultLocationX);
        dest.writeFloat(this.mDefaultLocationY);
    }

    protected WatermarkDialog(Parcel in) {
        this();
        this.mDialogStatusData = (DialogStatusData) ParcelableGenericUtils.readObject(in);
        this.mWatermarkInfo = (WatermarkInfo) ParcelableGenericUtils.readObject(in);
        this.mScaleMultipleOrigin = in.readFloat();
        this.mDefaultLocationX = in.readFloat();
        this.mDefaultLocationY = in.readFloat();
        this.mIsFromParcel = true;
        this.mResource = GalleryApp.sGetAndroidContext().getResources();
        init();
        countLocation(true, 0.0f);
    }
}
