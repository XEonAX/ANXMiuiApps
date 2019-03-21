package com.miui.gallery.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import com.miui.gallery.R;

public class WHRatioImageView extends ForegroundImageView {
    private float mWHRatio;

    public WHRatioImageView(Context context) {
        super(context);
        this.mWHRatio = 0.0f;
    }

    public WHRatioImageView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public WHRatioImageView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mWHRatio = 0.0f;
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.WHRatioImageView, defStyle, 0);
        if (a != null) {
            this.mWHRatio = a.getFloat(0, 0.0f);
            a.recycle();
        }
    }

    public void setWHRatio(float ratio) {
        if (Float.compare(ratio, this.mWHRatio) != 0) {
            this.mWHRatio = ratio;
            requestLayout();
        }
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.mWHRatio > 0.0f) {
            int widthMode = MeasureSpec.getMode(widthMeasureSpec);
            int widthSize = MeasureSpec.getSize(widthMeasureSpec);
            int heightMode = MeasureSpec.getMode(heightMeasureSpec);
            int heightSize = MeasureSpec.getSize(heightMeasureSpec);
            if (widthMode == 1073741824) {
                heightMode = 1073741824;
                heightSize = (int) (((float) widthSize) / this.mWHRatio);
            } else if (heightMode == 1073741824) {
                widthMode = 1073741824;
                widthSize = (int) (((float) heightSize) * this.mWHRatio);
            }
            widthMeasureSpec = MeasureSpec.makeMeasureSpec(widthSize, widthMode);
            heightMeasureSpec = MeasureSpec.makeMeasureSpec(heightSize, heightMode);
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }
}
