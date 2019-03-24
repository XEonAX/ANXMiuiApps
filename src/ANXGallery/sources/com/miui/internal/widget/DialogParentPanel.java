package com.miui.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;
import com.miui.internal.R;

public class DialogParentPanel extends LinearLayout {
    private TypedValue rq;
    private TypedValue rr;
    private TypedValue rs;
    private TypedValue rt;
    private TypedValue tA;
    private TypedValue tB;
    private TypedValue tC;
    private TypedValue tD;

    public DialogParentPanel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Window);
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowFixedWidthMinor)) {
            this.rr = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowFixedWidthMinor, this.rr);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowFixedHeightMajor)) {
            this.rs = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowFixedHeightMajor, this.rs);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowFixedWidthMajor)) {
            this.rq = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowFixedWidthMajor, this.rq);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowFixedHeightMinor)) {
            this.rt = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowFixedHeightMinor, this.rt);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowMaxWidthMinor)) {
            this.tA = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowMaxWidthMinor, this.tA);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowMaxWidthMajor)) {
            this.tB = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowMaxWidthMajor, this.tB);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowMaxHeightMajor)) {
            this.tD = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowMaxHeightMajor, this.tD);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowMaxHeightMinor)) {
            this.tC = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowMaxHeightMinor, this.tC);
        }
        obtainStyledAttributes.recycle();
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(n(i), o(i2));
    }

    private int n(int i) {
        return a(i, true, this.rr, this.rq, this.tA, this.tB);
    }

    private int o(int i) {
        return a(i, false, this.rt, this.rs, this.tC, this.tD);
    }

    private int a(int i, boolean z, TypedValue typedValue, TypedValue typedValue2, TypedValue typedValue3, TypedValue typedValue4) {
        if (MeasureSpec.getMode(i) != Integer.MIN_VALUE) {
            return i;
        }
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        Object obj = displayMetrics.widthPixels < displayMetrics.heightPixels ? 1 : null;
        if (obj == null) {
            typedValue = typedValue2;
        }
        int a = a(displayMetrics, typedValue, z);
        if (a > 0) {
            return MeasureSpec.makeMeasureSpec(a, 1073741824);
        }
        if (obj == null) {
            typedValue3 = typedValue4;
        }
        int a2 = a(displayMetrics, typedValue3, z);
        if (a2 > 0) {
            return MeasureSpec.makeMeasureSpec(Math.min(a2, MeasureSpec.getSize(i)), Integer.MIN_VALUE);
        }
        return i;
    }

    private int a(DisplayMetrics displayMetrics, TypedValue typedValue, boolean z) {
        if (typedValue != null) {
            if (typedValue.type == 5) {
                return (int) typedValue.getDimension(displayMetrics);
            }
            if (typedValue.type == 6) {
                float f = (float) (z ? displayMetrics.widthPixels : displayMetrics.heightPixels);
                return (int) typedValue.getFraction(f, f);
            }
        }
        return 0;
    }
}
