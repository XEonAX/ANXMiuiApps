package com.miui.internal.view.menu;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup.MarginLayoutParams;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.variable.Android_View_View_class.Factory;
import com.miui.internal.view.menu.ActionMenuView.LayoutParams;
import com.miui.internal.widget.ActionBarOverlayLayout;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import miui.content.res.ThemeResources;
import miui.util.ActionBarUtils;
import miui.util.ViewUtils;
import miui.view.animation.CubicEaseOutInterpolator;

public class PhoneActionMenuView extends ActionMenuView {
    private static final int[] oY = new int[]{16842964, R.attr.expandBackground, R.attr.splitActionBarOverlayHeight};
    private View oZ;
    private View pa;
    private OverflowMenuViewAnimator pb;
    private OverflowMenuState pc;
    private Drawable pd;
    private Drawable pe;
    private int pf;
    private int pg;
    private Rect ph;
    private int pi;
    private int pj;
    private int pk;

    private enum OverflowMenuState {
        Collapsed,
        Expanding,
        Expanded,
        Collapsing
    }

    private class OverflowMenuViewAnimator implements AnimatorListener, OnClickListener {
        private AnimatorSet pr;
        private AnimatorSet ps;
        private ActionBarOverlayLayout pt;

        private OverflowMenuViewAnimator() {
        }

        public void aY() {
            if (this.pr == null) {
                this.pt = (ActionBarOverlayLayout) ActionBarUtils.getActionBarOverlayLayout(PhoneActionMenuView.this);
                AnimatorSet animatorSet = new AnimatorSet();
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(PhoneActionMenuView.this, "Value", new float[]{1.0f, 0.0f});
                animatorSet.playTogether(new Animator[]{ofFloat, this.pt.getContentMaskAnimator(this).show()});
                animatorSet.setDuration((long) PhoneActionMenuView.this.getResources().getInteger(17694720));
                animatorSet.setInterpolator(new CubicEaseOutInterpolator());
                animatorSet.addListener(this);
                this.pr = animatorSet;
                animatorSet = new AnimatorSet();
                animatorSet.playTogether(new Animator[]{ObjectAnimator.ofFloat(PhoneActionMenuView.this, "Value", new float[]{0.0f, 1.0f}), this.pt.getContentMaskAnimator(null).hide()});
                animatorSet.setDuration((long) PhoneActionMenuView.this.getResources().getInteger(17694720));
                animatorSet.setInterpolator(new CubicEaseOutInterpolator());
                animatorSet.addListener(this);
                this.ps = animatorSet;
                if (!DeviceHelper.FEATURE_WHOLE_ANIM) {
                    this.pr.setDuration(0);
                    this.ps.setDuration(0);
                }
            }
        }

        public void show() {
            aY();
            this.ps.cancel();
            this.pr.cancel();
            this.pr.start();
        }

        public void hide() {
            aY();
            this.ps.cancel();
            this.pr.cancel();
            this.ps.start();
        }

        public void cancel() {
            if (this.ps != null && this.ps.isRunning()) {
                this.ps.cancel();
            }
            if (this.pr != null && this.pr.isRunning()) {
                this.pr.cancel();
            }
        }

        public void reverse() {
            if (VERSION.SDK_INT >= 26) {
                try {
                    Method declaredMethod = Class.forName("android.animation.AnimatorSet").getDeclaredMethod("reverse", new Class[0]);
                    if (this.pr.isRunning()) {
                        declaredMethod.invoke(this.pr, new Object[0]);
                    }
                    if (this.ps.isRunning()) {
                        declaredMethod.invoke(this.ps, new Object[0]);
                    }
                } catch (Throwable e) {
                    Log.e("PhoneActionMenuView", "reverse: ", e);
                }
            } else {
                ArrayList arrayList = null;
                if (this.pr.isRunning()) {
                    arrayList = this.pr.getChildAnimations();
                }
                if (this.ps.isRunning()) {
                    arrayList = this.ps.getChildAnimations();
                }
                if (arrayList != null) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((ValueAnimator) ((Animator) it.next())).reverse();
                    }
                }
            }
        }

        public void onAnimationStart(Animator animator) {
        }

        public void onAnimationEnd(Animator animator) {
            if (PhoneActionMenuView.this.oZ != null) {
                if (PhoneActionMenuView.this.oZ.getTranslationY() == 0.0f) {
                    PhoneActionMenuView.this.pc = OverflowMenuState.Expanded;
                    o(false);
                } else if (PhoneActionMenuView.this.oZ.getTranslationY() == ((float) PhoneActionMenuView.this.getMeasuredHeight())) {
                    PhoneActionMenuView.this.pc = OverflowMenuState.Collapsed;
                    o(true);
                    PhoneActionMenuView.this.pa.setBackground(PhoneActionMenuView.this.pe);
                }
            }
            PhoneActionMenuView.this.postInvalidateOnAnimation();
        }

        public void onAnimationRepeat(Animator animator) {
        }

        public void onAnimationCancel(Animator animator) {
            if (PhoneActionMenuView.this.pc == OverflowMenuState.Expanding || PhoneActionMenuView.this.pc == OverflowMenuState.Expanded) {
                PhoneActionMenuView.this.setValue(0.0f);
                o(false);
            } else if (PhoneActionMenuView.this.pc == OverflowMenuState.Collapsing || PhoneActionMenuView.this.pc == OverflowMenuState.Collapsed) {
                PhoneActionMenuView.this.setValue(1.0f);
                o(true);
            }
            PhoneActionMenuView.this.postInvalidateOnAnimation();
        }

        private void o(boolean z) {
            if (z) {
                this.pt.getContentView().setImportantForAccessibility(0);
            } else {
                Factory.getInstance().get().setImportantForAccessibilityNoHideDescendants(this.pt.getContentView());
            }
        }

        public void onClick(View view) {
            if (PhoneActionMenuView.this.pc == OverflowMenuState.Expanded) {
                PhoneActionMenuView.this.getPresenter().hideOverflowMenu(true);
            }
        }
    }

    public PhoneActionMenuView(Context context) {
        this(context, null);
    }

    public PhoneActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.pc = OverflowMenuState.Collapsed;
        this.pj = 0;
        this.pk = 0;
        super.setBackground(null);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, oY);
        this.pe = obtainStyledAttributes.getDrawable(0);
        this.pd = obtainStyledAttributes.getDrawable(1);
        this.pi = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        obtainStyledAttributes.recycle();
        aX();
        this.pa = new View(context);
        addView(this.pa);
        setChildrenDrawingOrderEnabled(true);
        this.pj = context.getResources().getDimensionPixelSize(R.dimen.action_button_max_width);
    }

    public void setBackground(Drawable drawable) {
        if (this.pe != drawable) {
            this.pe = drawable;
            aX();
        }
    }

    public boolean filterLeftoverView(int i) {
        boolean z;
        View childAt = getChildAt(i);
        if (!(childAt == this.oZ || childAt == this.pa)) {
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams == null || !layoutParams.isOverflowButton) {
                z = true;
                if (z || !super.filterLeftoverView(i)) {
                    return false;
                }
                return true;
            }
        }
        z = false;
        if (z) {
        }
        return false;
    }

    public void setOverflowMenuView(View view) {
        if (this.oZ != view) {
            if (this.oZ != null) {
                if (this.oZ.getAnimation() != null) {
                    this.oZ.clearAnimation();
                }
                removeView(this.oZ);
            }
            if (view != null) {
                addView(view);
            }
            this.oZ = view;
            aX();
        }
    }

    public boolean showOverflowMenu() {
        OverflowMenuState overflowMenuState = this.pc;
        if (overflowMenuState == OverflowMenuState.Expanding || overflowMenuState == OverflowMenuState.Expanded || this.oZ == null) {
            return false;
        }
        this.pa.setBackground(this.pd);
        OverflowMenuViewAnimator aV = aV();
        if (overflowMenuState == OverflowMenuState.Collapsed) {
            this.pc = OverflowMenuState.Expanding;
            aV.show();
        } else if (overflowMenuState == OverflowMenuState.Collapsing) {
            aV.reverse();
        }
        postInvalidateOnAnimation();
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        return true;
    }

    public boolean isOverflowMenuShowing() {
        return this.pc == OverflowMenuState.Expanding || this.pc == OverflowMenuState.Expanded;
    }

    public boolean hideOverflowMenu() {
        OverflowMenuState overflowMenuState = this.pc;
        if (overflowMenuState == OverflowMenuState.Collapsing || overflowMenuState == OverflowMenuState.Collapsed) {
            return false;
        }
        OverflowMenuViewAnimator aV = aV();
        if (overflowMenuState == OverflowMenuState.Expanded) {
            this.pc = OverflowMenuState.Collapsing;
            aV.hide();
        } else if (overflowMenuState == OverflowMenuState.Expanding) {
            aV.reverse();
        }
        return true;
    }

    private OverflowMenuViewAnimator aV() {
        if (this.pb == null) {
            this.pb = new OverflowMenuViewAnimator();
        }
        return this.pb;
    }

    private int aW() {
        Resources resources = getResources();
        int identifier = resources.getIdentifier("status_bar_height", "dimen", ThemeResources.FRAMEWORK_PACKAGE);
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public int getCollapsedHeight() {
        if (this.pg == 0) {
            return 0;
        }
        return (this.pg + this.ph.top) - this.pi;
    }

    protected void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        int childCount2 = getChildCount();
        if (indexOfChild(this.oZ) != -1) {
            childCount2--;
        }
        if (indexOfChild(this.pa) != -1) {
            childCount2--;
        }
        int i3 = 0;
        if (childCount == 0 || childCount2 == 0) {
            this.pg = 0;
            setMeasuredDimension(0, 0);
            return;
        }
        this.pk = Math.min(MeasureSpec.getSize(i) / childCount2, this.pj);
        childCount2 = MeasureSpec.makeMeasureSpec(this.pk, Integer.MIN_VALUE);
        int i4 = 0;
        int i5 = i4;
        while (i3 < childCount) {
            View childAt = getChildAt(i3);
            if (!(childAt == this.oZ || childAt == this.pa)) {
                measureChildWithMargins(childAt, childCount2, 0, i2, 0);
                i4 += childAt.getMeasuredWidth();
                i5 = Math.max(i5, childAt.getMeasuredHeight());
            }
            i3++;
        }
        this.pf = i4;
        this.pg = i5;
        if (this.oZ != null) {
            MarginLayoutParams marginLayoutParams = (MarginLayoutParams) this.oZ.getLayoutParams();
            marginLayoutParams.topMargin = aW();
            marginLayoutParams.bottomMargin = this.pg;
            measureChildWithMargins(this.oZ, i, 0, i2, 0);
            i4 = Math.max(i4, this.oZ.getMeasuredWidth());
            i5 += this.oZ.getMeasuredHeight();
            if (this.pc == OverflowMenuState.Expanded) {
                this.oZ.setTranslationY(0.0f);
            } else if (this.pc == OverflowMenuState.Collapsed) {
                this.oZ.setTranslationY((float) i5);
            }
        }
        if (this.oZ == null) {
            i5 += this.ph.top;
        }
        this.pa.setBackground(this.pc == OverflowMenuState.Collapsed ? this.pe : this.pd);
        setMeasuredDimension(Math.max(i4, MeasureSpec.getSize(i)), i5);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        i = i4 - i2;
        i3 = 0;
        if (this.oZ != null) {
            i2 = this.oZ.getMeasuredHeight();
            ViewUtils.layoutChildView(this, this.oZ, 0, 0, i5, i2);
            i2 -= this.ph.top;
        } else {
            i2 = 0;
        }
        ViewUtils.layoutChildView(this, this.pa, 0, i2, i5, i);
        i4 = getChildCount();
        int i6 = 0;
        int i7 = i6;
        int i8 = i7;
        while (i6 < i4) {
            View childAt = getChildAt(i6);
            if (!(childAt == this.oZ || childAt == this.pa)) {
                if (childAt.getMeasuredWidth() >= this.pk) {
                    i8 = 1;
                }
                i7++;
            }
            i6++;
        }
        if (i8 != 0) {
            i5 = (i5 - (this.pk * i7)) >> 1;
        } else {
            i5 = (i5 - this.pf) >> 1;
        }
        while (i3 < i4) {
            View childAt2 = getChildAt(i3);
            if (!(childAt2 == this.oZ || childAt2 == this.pa)) {
                i6 = childAt2.getMeasuredWidth();
                if (i8 != 0) {
                    int i9 = (this.pk - i6) >> 1;
                    i5 += i9;
                    ViewUtils.layoutChildView(this, childAt2, i5, i2, i5 + i6, i);
                    i5 = (i5 - i9) + this.pk;
                } else {
                    ViewUtils.layoutChildView(this, childAt2, i5, i2, i5 + i6, i);
                    i5 += childAt2.getMeasuredWidth();
                }
            }
            i3++;
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        float f;
        float y = motionEvent.getY();
        if (this.oZ == null) {
            f = 0.0f;
        } else {
            f = this.oZ.getTranslationY();
        }
        return y > f || super.onTouchEvent(motionEvent);
    }

    public void onPageScrolled(int i, float f, boolean z, boolean z2) {
        if (DeviceHelper.FEATURE_WHOLE_ANIM) {
            setAlpha(computeAlpha(f, z, z2));
        }
        float computeTranslationY = computeTranslationY(f, z, z2);
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (!(childAt == this.oZ || childAt == this.pa)) {
                childAt.setTranslationY(computeTranslationY);
            }
        }
    }

    private void aX() {
        if (this.ph == null) {
            this.ph = new Rect();
        }
        Drawable drawable = this.oZ == null ? this.pe : this.pd;
        if (drawable == null) {
            this.ph.setEmpty();
        } else {
            drawable.getPadding(this.ph);
        }
    }

    public void setValue(float f) {
        if (this.oZ != null) {
            this.oZ.setTranslationY(f * ((float) getMeasuredHeight()));
        }
    }

    protected int getChildDrawingOrder(int i, int i2) {
        int indexOfChild = indexOfChild(this.oZ);
        int indexOfChild2 = indexOfChild(this.pa);
        if (i2 == 0) {
            if (indexOfChild != -1) {
                return indexOfChild;
            }
            if (indexOfChild2 != -1) {
                return indexOfChild2;
            }
        } else if (!(i2 != 1 || indexOfChild == -1 || indexOfChild2 == -1)) {
            return indexOfChild2;
        }
        int i3 = 0;
        while (i3 < i) {
            if (!(i3 == indexOfChild || i3 == indexOfChild2)) {
                int i4;
                if (i3 < indexOfChild) {
                    i4 = i3 + 1;
                } else {
                    i4 = i3;
                }
                if (i3 < indexOfChild2) {
                    i4++;
                }
                if (i4 == i2) {
                    return i3;
                }
            }
            i3++;
        }
        return super.getChildDrawingOrder(i, i2);
    }

    public boolean hasBackgroundView() {
        return getChildAt(0) == this.pa;
    }
}
