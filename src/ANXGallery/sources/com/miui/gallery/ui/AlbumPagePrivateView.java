package com.miui.gallery.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;

public class AlbumPagePrivateView extends View {
    private Bitmap mBitmap;
    private int mBlueColor;
    private OnPrivateColorChangeListener mColorChangeListener;
    private int mCurrPosition;
    private int mGreenColor;
    private boolean mIsBackgroundGradient;
    private int mRedColor;

    interface OnPrivateColorChangeListener {
        void onColorChange(int i);
    }

    public AlbumPagePrivateView(Context context) {
        super(context);
    }

    public AlbumPagePrivateView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public AlbumPagePrivateView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    public void setOnColorChangeListener(OnPrivateColorChangeListener onColorChangeListener) {
        this.mColorChangeListener = onColorChangeListener;
    }

    public void setBackgroundColor(int color) {
        this.mRedColor = Color.red(color);
        this.mGreenColor = Color.green(color);
        this.mBlueColor = Color.blue(color);
    }

    public void setBackgroundResId(int resId) {
        this.mBitmap = BitmapFactory.decodeResource(getResources(), resId);
    }

    public void setBackgroundGradient(boolean backgroundGradient) {
        this.mIsBackgroundGradient = backgroundGradient;
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        int alpha = 255;
        int getDarkStartPosition = (int) (((float) getHeight()) * 0.08f);
        if (this.mIsBackgroundGradient && this.mCurrPosition > getDarkStartPosition) {
            alpha = (int) ((((float) (this.mCurrPosition - getDarkStartPosition)) / ((float) (getHeight() - getDarkStartPosition))) * 90.0f);
        }
        canvas.drawARGB(alpha, this.mRedColor, this.mGreenColor, this.mBlueColor);
        if (this.mColorChangeListener != null) {
            this.mColorChangeListener.onColorChange(Color.argb(alpha, this.mRedColor, this.mGreenColor, this.mBlueColor));
        }
        if (this.mBitmap != null) {
            float newY = ((float) (getHeight() - this.mBitmap.getHeight())) * 0.32f;
            if (((float) this.mCurrPosition) > newY) {
                canvas.drawBitmap(this.mBitmap, (float) ((getWidth() - this.mBitmap.getWidth()) / 2), ((float) getHeight()) - (((float) this.mCurrPosition) - newY), null);
            }
        }
        canvas.restore();
    }
}
