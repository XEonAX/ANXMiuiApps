package com.miui.internal.hybrid;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import miui.R;

public class WebContainerView extends FrameLayout {
    private boolean fL;
    private boolean fM = false;
    private View fN;
    private int fO;
    private float fP;
    private float fQ;

    public WebContainerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.HybridViewStyle, 0, 0);
        this.fL = obtainStyledAttributes.getBoolean(R.styleable.HybridViewStyle_hybridPullable, true);
        obtainStyledAttributes.recycle();
        this.fO = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    public void setWebView(View view) {
        if (view != null && this.fN != view) {
            if (this.fN != null) {
                removeView(this.fN);
            }
            this.fN = view;
            addView(view, 0, new LayoutParams(-1, -1));
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.fN == null || !this.fL) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        if (actionMasked == 3 || actionMasked == 1) {
            this.fM = false;
            return false;
        }
        if (actionMasked == 0) {
            this.fP = rawX;
            this.fQ = rawY;
        } else if (actionMasked == 2) {
            if (this.fM) {
                return true;
            }
            float f = this.fQ - rawY;
            float abs = Math.abs(this.fP - rawX);
            float abs2 = Math.abs(f);
            this.fP = rawX;
            this.fQ = rawY;
            if (this.fN.getScrollY() == 0 && f < 0.0f && abs2 > abs && abs2 > ((float) this.fO)) {
                this.fM = true;
                return true;
            }
        }
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.fL || !this.fM) {
            return false;
        }
        float rawY = motionEvent.getRawY();
        switch (motionEvent.getAction()) {
            case 0:
                this.fQ = rawY;
                break;
            case 1:
            case 3:
                this.fM = false;
                springBack();
                break;
            case 2:
                setTranslationY(getTranslationY() + ((rawY - this.fQ) * 0.5f));
                this.fQ = rawY;
                break;
        }
        return false;
    }

    private void springBack() {
        if (getTranslationY() != 0.0f) {
            ViewPropertyAnimator animate = animate();
            animate.translationY(0.0f);
            animate.setDuration((long) getResources().getInteger(17694721));
            animate.start();
        }
    }
}
