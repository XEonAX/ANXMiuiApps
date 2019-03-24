package miui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.RemotableViewMethod;
import android.view.View.MeasureSpec;
import android.widget.TextView;
import miui.R;

public class AutoScaleTextView extends TextView {
    private static final float OU = 0.001f;
    private float OV;
    private float OW;
    private boolean OX;

    public AutoScaleTextView(Context context) {
        super(context);
        ei();
    }

    public AutoScaleTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet, 0);
        ei();
    }

    public AutoScaleTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, 0);
        ei();
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AutoScaleTextView, i, 0);
        this.OW = (float) obtainStyledAttributes.getDimensionPixelSize(R.styleable.AutoScaleTextView_minTextSize, 0);
        obtainStyledAttributes.recycle();
    }

    @RemotableViewMethod
    public void setMinTextSize(float f) {
        setMinTextSize(2, f);
    }

    public void setMinTextSize(int i, float f) {
        Resources system;
        Context context = getContext();
        if (context == null) {
            system = Resources.getSystem();
        } else {
            system = context.getResources();
        }
        this.OW = TypedValue.applyDimension(i, f, system.getDisplayMetrics());
    }

    public float getMinTextSize() {
        return this.OW;
    }

    public void setTextSize(float f) {
        super.setTextSize(f);
        ei();
    }

    public void setTextSize(int i, float f) {
        super.setTextSize(i, f);
        ei();
    }

    private void ei() {
        this.OV = super.getTextSize();
    }

    public float getTextSize() {
        return this.OV;
    }

    protected void onMeasure(int i, int i2) {
        if (this.OW <= 0.0f || this.OW >= this.OV || getMaxLines() > 1) {
            super.onMeasure(i, i2);
        } else if (MeasureSpec.getMode(i) == 0) {
            super.onMeasure(i, i2);
        } else {
            int size = MeasureSpec.getSize(i);
            super.onMeasure(0, i2);
            int measuredWidth = getMeasuredWidth();
            if (measuredWidth > size) {
                int paddingLeft = getPaddingLeft() + getPaddingRight();
                float textSize = (super.getTextSize() * ((float) (size - paddingLeft))) / (((float) (measuredWidth - paddingLeft)) + 0.001f);
                if (textSize < this.OW) {
                    textSize = this.OW;
                }
                this.OX = true;
                super.setTextSize(0, textSize);
                this.OX = false;
                super.onMeasure(i, i2);
            }
        }
    }

    public void requestLayout() {
        if (!this.OX) {
            super.requestLayout();
        }
    }

    public void invalidate() {
        if (!this.OX) {
            super.invalidate();
        }
    }
}
