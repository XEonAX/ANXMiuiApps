package com.miui.internal.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.TextView;
import com.miui.internal.R;
import miui.util.ViewUtils;

public class ScrollingTabTextView extends TextView {
    private ColorStateList vB;
    private int vC;
    private int vD;
    private ValueAnimator vE;
    private int vF;
    private boolean vG;

    public ScrollingTabTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        bR();
    }

    private void bR() {
        this.vB = getTextColors();
        this.vC = this.vB.getColorForState(ENABLED_STATE_SET, getResources().getColor(R.color.action_bar_tab_text_color_normal_light));
        this.vD = this.vB.getColorForState(ENABLED_SELECTED_STATE_SET, getResources().getColor(R.color.action_bar_tab_text_color_selected_light));
    }

    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        bR();
    }

    protected void onDraw(Canvas canvas) {
        if (this.vE == null || !this.vE.isRunning()) {
            super.onDraw(canvas);
            return;
        }
        int i;
        int scrollX;
        if ((!this.vG || isSelected()) && (this.vG || !isSelected())) {
            i = this.vD;
        } else {
            i = this.vC;
        }
        setTextColor(i);
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int i2 = this.vF;
        int height = getHeight();
        if (isLayoutRtl) {
            scrollX = getScrollX() + 0;
            i2 += getScrollX();
        } else {
            scrollX = 0;
        }
        canvas.save();
        canvas.clipRect(scrollX, 0, i2, height);
        super.onDraw(canvas);
        canvas.restore();
        if (i == this.vC) {
            i = this.vD;
        } else if (i == this.vD) {
            i = this.vC;
        }
        setTextColor(i);
        i = this.vF;
        i2 = getWidth();
        if (isLayoutRtl) {
            i += getScrollX();
            i2 += getScrollX();
        }
        canvas.save();
        canvas.clipRect(i, 0, i2, height);
        super.onDraw(canvas);
        canvas.restore();
        setTextColor(this.vB);
    }

    public void startScrollAnimation(boolean z) {
        int width;
        int i;
        if (this.vE == null) {
            this.vE = new ValueAnimator();
        } else {
            this.vE.cancel();
        }
        this.vG = z;
        if (this.vG) {
            width = getWidth();
            i = 0;
        } else {
            i = getWidth();
            width = 0;
        }
        this.vE.setIntValues(new int[]{i, width});
        this.vE.setDuration(200);
        this.vE.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ScrollingTabTextView.this.vF = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                ScrollingTabTextView.this.invalidate();
            }
        });
        this.vE.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                ScrollingTabTextView.this.vF = ScrollingTabTextView.this.getWidth();
            }
        });
        this.vE.start();
    }
}
