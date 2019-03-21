package com.miui.gallery.widget;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView.ScaleType;

public class ScalableImageView extends ForegroundImageView {
    private float mMatrixScale;
    private Matrix mTempMatrix;
    private final float[] sMatrixValues;

    public ScalableImageView(Context context) {
        super(context);
        this.mMatrixScale = 0.0f;
        this.mTempMatrix = new Matrix();
        this.sMatrixValues = new float[9];
    }

    public ScalableImageView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ScalableImageView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mMatrixScale = 0.0f;
        this.mTempMatrix = new Matrix();
        this.sMatrixValues = new float[9];
    }

    protected boolean setFrame(int l, int t, int r, int b) {
        boolean change = super.setFrame(l, t, r, b);
        if (change && getScaleType() == ScaleType.MATRIX) {
            postImageMatrixScale(this.mMatrixScale);
        }
        return change;
    }

    public void setImageDrawable(Drawable drawable) {
        Drawable oldDrawable = getDrawable();
        super.setImageDrawable(drawable);
        if (oldDrawable != drawable && getScaleType() == ScaleType.MATRIX) {
            postImageMatrixScale(this.mMatrixScale);
        }
    }

    public void setScaleType(ScaleType scaleType) {
        super.setScaleType(scaleType);
        if (scaleType != ScaleType.MATRIX) {
            this.mMatrixScale = 0.0f;
            setImageMatrix(null);
        }
    }

    public void setMatrixScale(float targetScale) {
        setScaleType(ScaleType.MATRIX);
        this.mMatrixScale = targetScale;
        postImageMatrixScale(targetScale);
    }

    private void postImageMatrixScale(float targetScale) {
        Drawable drawable = getDrawable();
        if (drawable != null && targetScale > 0.0f) {
            int dWidth = drawable.getIntrinsicWidth();
            int dHeight = drawable.getIntrinsicHeight();
            if (dWidth > 0 && dHeight > 0) {
                int vWidth = getWidth();
                int vHeight = getHeight();
                float viewDrawableScale = Math.max((1.0f * ((float) vWidth)) / ((float) dWidth), (1.0f * ((float) vHeight)) / ((float) dHeight));
                float dWidthScaled = viewDrawableScale * ((float) dWidth);
                float dHeightScaled = viewDrawableScale * ((float) dHeight);
                float scale = (targetScale * viewDrawableScale) / getMatrixScale();
                if (scale > 0.0f) {
                    this.mTempMatrix.set(getImageMatrix());
                    this.mTempMatrix.postScale(scale, scale);
                    this.mTempMatrix.postTranslate((float) Math.round(((-((targetScale * dWidthScaled) - ((float) vWidth))) * 0.5f) - getValue(this.mTempMatrix, 2)), (float) Math.round(((-((targetScale * dHeightScaled) - ((float) vHeight))) * 0.5f) - getValue(this.mTempMatrix, 5)));
                    setImageMatrix(this.mTempMatrix);
                }
            }
        }
    }

    private float getValue(Matrix matrix, int whichValue) {
        matrix.getValues(this.sMatrixValues);
        return this.sMatrixValues[whichValue];
    }

    public float getMatrixScale() {
        Matrix matrix = getImageMatrix();
        return (float) Math.sqrt((double) (((float) Math.pow((double) getValue(matrix, 0), 2.0d)) + ((float) Math.pow((double) getValue(matrix, 3), 2.0d))));
    }
}
