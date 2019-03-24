package com.miui.internal.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.FrameLayout;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.view.menu.ActionMenuView;
import com.nexstreaming.nexeditorsdk.nexEngine;
import miui.R;
import miui.app.ActionBar.FragmentViewPagerChangeListener;
import miui.util.AttributeResolver;
import miui.util.DrawableUtil;

public class ActionBarContainer extends FrameLayout implements FragmentViewPagerChangeListener {
    private static final int qg = 0;
    private static final int qh = 1;
    private static final int qi = 2;
    private static final int qj = 3;
    private ActionBarView mActionBarView;
    private Drawable nI;
    private boolean pQ;
    private View pR;
    private ActionBarContextView pS;
    private Animator pT;
    private Drawable[] pU;
    private Drawable pV;
    private Drawable pW;
    private Drawable pX;
    private Drawable pY;
    private boolean pZ;
    private boolean qa;
    private boolean qb;
    private boolean qc;
    private boolean qd;
    private Rect qe;
    private int qf;
    private boolean qk;
    private AnimatorListenerAdapter ql;
    private AnimatorListenerAdapter qm;

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        boolean z = false;
        this.qk = false;
        this.ql = new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                ActionBarContainer.this.setVisibility(8);
                ActionBarContainer.this.pT = null;
            }
        };
        this.qm = new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                ActionBarContainer.this.pT = null;
            }
        };
        setBackground(null);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionBar);
        this.nI = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_android_background);
        this.pU = new Drawable[]{this.nI, obtainStyledAttributes.getDrawable(R.styleable.ActionBar_miui_actionBarEmbededTabsBackground), obtainStyledAttributes.getDrawable(R.styleable.ActionBar_miui_actionBarStackedBackground)};
        this.pV = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_android_backgroundStacked);
        this.qd = obtainStyledAttributes.getBoolean(R.styleable.ActionBar_customViewAutoFitSystemWindow, false);
        if (getId() == com.miui.internal.R.id.split_action_bar) {
            this.pZ = true;
            this.pW = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_android_backgroundSplit);
        }
        obtainStyledAttributes.recycle();
        this.pX = new ColorDrawable(AttributeResolver.resolveColor(context, R.attr.colorPrimary));
        if (!this.pZ) {
            setPadding(0, 0, 0, 0);
        }
        if (this.pZ ? this.pW != null : !(this.nI == null && this.pV == null)) {
            z = true;
        }
        setWillNotDraw(z);
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        this.mActionBarView = (ActionBarView) findViewById(com.miui.internal.R.id.action_bar);
        this.pS = (ActionBarContextView) findViewById(com.miui.internal.R.id.action_context_bar);
    }

    public void setActionBarContextView(ActionBarContextView actionBarContextView) {
        this.pS = actionBarContextView;
    }

    public void setPendingInsets(Rect rect) {
        if (!this.pZ) {
            if (this.qe == null) {
                this.qe = new Rect();
            }
            this.qe.set(rect);
        }
    }

    public Rect getPendingInsets() {
        return this.qe;
    }

    public void setFragmentViewPagerMode(boolean z) {
        this.qc = z;
    }

    int getCollapsedHeight() {
        int i = 0;
        if (!this.pZ) {
            return 0;
        }
        int i2 = 0;
        while (i < getChildCount()) {
            if (getChildAt(i) instanceof ActionMenuView) {
                ActionMenuView actionMenuView = (ActionMenuView) getChildAt(i);
                if (actionMenuView.getVisibility() == 0 && actionMenuView.getCollapsedHeight() > 0) {
                    i2 = Math.max(i2, actionMenuView.getCollapsedHeight());
                }
            }
            i++;
        }
        return i2;
    }

    int bc() {
        int collapsedHeight = getCollapsedHeight();
        if (!this.qc) {
            return collapsedHeight;
        }
        int i = 0;
        int i2 = i;
        while (i < getChildCount()) {
            if (getChildAt(i) instanceof ActionMenuView) {
                ActionMenuView actionMenuView = (ActionMenuView) getChildAt(i);
                if (actionMenuView.getVisibility() == 0 && actionMenuView.getCollapsedHeight() > 0) {
                    i2++;
                }
            }
            i++;
        }
        return (i2 == 1 && this.pS.getAnimatedVisibility() == 0) ? collapsedHeight : 0;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Rect bounds;
        if (this.nI != null) {
            bounds = this.nI.getBounds();
            this.nI.setCallback(null);
            unscheduleDrawable(this.nI);
        } else {
            bounds = null;
        }
        this.nI = drawable;
        boolean z = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (bounds == null) {
                requestLayout();
            } else {
                this.nI.setBounds(bounds);
            }
            this.qk = true;
        } else {
            this.qk = false;
        }
        if (this.pZ ? this.pW != null : !(this.nI == null && this.pV == null)) {
            z = true;
        }
        setWillNotDraw(z);
        invalidate();
    }

    public void setStackedBackground(Drawable drawable) {
        if (this.pV != null) {
            this.pV.setCallback(null);
            unscheduleDrawable(this.pV);
        }
        this.pV = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        boolean z = false;
        if (this.pZ ? this.pW != null : !(this.nI == null && this.pV == null)) {
            z = true;
        }
        setWillNotDraw(z);
        if (this.pR != null) {
            this.pR.setBackground(this.pV);
        }
    }

    public void setSplitBackground(Drawable drawable) {
        if (this.pW != null) {
            this.pW.setCallback(null);
            unscheduleDrawable(this.pW);
        }
        this.pW = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        boolean z = false;
        if (this.pZ ? this.pW != null : !(this.nI == null && this.pV == null)) {
            z = true;
        }
        setWillNotDraw(z);
        invalidate();
    }

    public void setVisibility(int i) {
        boolean z;
        super.setVisibility(i);
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        if (this.nI != null) {
            this.nI.setVisible(z, false);
        }
        if (this.pV != null) {
            this.pV.setVisible(z, false);
        }
        if (this.pW != null) {
            this.pW.setVisible(z, false);
        }
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.nI && !this.pZ) || ((drawable == this.pV && this.qa) || ((drawable == this.pW && this.pZ) || super.verifyDrawable(drawable)));
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.nI != null && this.nI.isStateful()) {
            this.nI.setState(getDrawableState());
        }
        if (this.pV != null && this.pV.isStateful()) {
            this.pV.setState(getDrawableState());
        }
        if (this.pW != null && this.pW.isStateful()) {
            this.pW.setState(getDrawableState());
        }
    }

    public void setTransitioning(boolean z) {
        int i;
        this.pQ = z;
        if (z) {
            i = 393216;
        } else {
            i = nexEngine.ExportHEVCMainTierLevel52;
        }
        setDescendantFocusability(i);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.pQ || super.onInterceptTouchEvent(motionEvent);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return !this.pZ && super.onTouchEvent(motionEvent);
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (this.pZ) {
            return false;
        }
        return true;
    }

    public View getTabContainer() {
        return this.pR;
    }

    public void setTabContainer(ScrollingTabContainerView scrollingTabContainerView) {
        if (this.pR != null) {
            removeView(this.pR);
        }
        if (scrollingTabContainerView != null) {
            addView(scrollingTabContainerView);
            LayoutParams layoutParams = scrollingTabContainerView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            scrollingTabContainerView.setAllowCollapse(false);
            this.qf = scrollingTabContainerView.getPaddingTop();
        } else if (this.pR != null) {
            this.pR.setBackground(null);
        }
        this.pR = scrollingTabContainerView;
    }

    public void onDraw(Canvas canvas) {
        if (getWidth() != 0 && getHeight() != 0) {
            if (!this.pZ) {
                if (this.nI != null) {
                    this.nI.draw(canvas);
                }
                if (this.pX != null && DrawableUtil.isPlaceholder(this.nI)) {
                    this.pX.draw(canvas);
                    if (!(this.pY == null || DrawableUtil.isPlaceholder(this.pX))) {
                        this.pY.draw(canvas);
                    }
                }
            } else if (DeviceHelper.IS_TABLET && this.pW != null) {
                this.pW.draw(canvas);
            }
        }
    }

    public ActionMode startActionModeForChild(View view, Callback callback) {
        return null;
    }

    private void e(View view) {
        if (view != null && view.getVisibility() == 0) {
            if (view != this.mActionBarView || !this.qd) {
                ((MarginLayoutParams) view.getLayoutParams()).topMargin = this.qe != null ? this.qe.top : 0;
            }
        }
    }

    public void onMeasure(int i, int i2) {
        if (this.pZ) {
            b(i, i2);
            return;
        }
        int i3;
        if (this.pR != null) {
            this.pR.setPadding(this.pR.getPaddingLeft(), this.qf, this.pR.getPaddingRight(), this.pR.getPaddingBottom());
        }
        e(this.mActionBarView);
        ActionBarContextView actionBarContextView = this.pS;
        if (actionBarContextView != null) {
            actionBarContextView.setContentInset(this.qe != null ? this.qe.top : 0);
        }
        super.onMeasure(i, i2);
        i = (this.mActionBarView == null || this.mActionBarView.getVisibility() == 8 || this.mActionBarView.getMeasuredHeight() <= 0) ? 0 : 1;
        if (i != 0) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mActionBarView.getLayoutParams();
            if (this.mActionBarView.isCollapsed()) {
                i3 = layoutParams.topMargin;
            } else {
                i3 = (this.mActionBarView.getMeasuredHeight() + layoutParams.topMargin) + layoutParams.bottomMargin;
            }
        } else {
            i3 = 0;
        }
        if (!(this.pR == null || this.pR.getVisibility() == 8 || MeasureSpec.getMode(i2) != Integer.MIN_VALUE)) {
            i2 = MeasureSpec.getSize(i2);
            int measuredWidth = getMeasuredWidth();
            i2 = Math.min(i3 + this.pR.getMeasuredHeight(), i2);
            i = (i != 0 || this.qe == null) ? 0 : this.qe.top;
            setMeasuredDimension(measuredWidth, i2 + i);
        }
        i = 0;
        i2 = i;
        while (i < getChildCount()) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && childAt.getMeasuredHeight() > 0 && childAt.getMeasuredWidth() > 0) {
                i2++;
            }
            i++;
        }
        if (i2 == 0) {
            setMeasuredDimension(0, 0);
        }
    }

    private void b(int i, int i2) {
        if (MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            i = MeasureSpec.makeMeasureSpec(MeasureSpec.getSize(i), 1073741824);
        }
        super.onMeasure(i, i2);
        i = getChildCount();
        int i3 = 0;
        int i4 = i3;
        while (i3 < i) {
            i4 = Math.max(i4, getChildAt(i3).getMeasuredHeight());
            i3++;
        }
        if (i4 == 0) {
            setMeasuredDimension(0, 0);
        }
    }

    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int measuredHeight = getMeasuredHeight();
        if (!(this.pR == null || this.pR.getVisibility() == 8)) {
            i2 = this.pR.getMeasuredHeight();
            if (this.mActionBarView == null || this.mActionBarView.getVisibility() != 0 || this.mActionBarView.getMeasuredHeight() <= 0) {
                int i5;
                i2 += this.qe != null ? this.qe.top : 0;
                View view = this.pR;
                int paddingLeft = this.pR.getPaddingLeft();
                if (this.qe != null) {
                    i5 = this.qe.top + this.qf;
                } else {
                    i5 = this.qf;
                }
                view.setPadding(paddingLeft, i5, this.pR.getPaddingRight(), this.pR.getPaddingBottom());
            } else {
                this.pR.setPadding(this.pR.getPaddingLeft(), this.qf, this.pR.getPaddingRight(), this.pR.getPaddingBottom());
            }
            this.pR.layout(i, measuredHeight - i2, i3, measuredHeight);
        }
        if (!this.pZ) {
            bd();
            if (this.nI != null) {
                this.nI.setBounds(0, 0, i3 - i, measuredHeight);
                i2 = 1;
            } else {
                i2 = 0;
            }
            if (this.pX != null) {
                this.pX.setBounds(0, 0, i3 - i, measuredHeight);
                i2 = 1;
            }
            if (this.pY == null) {
                this.pY = AttributeResolver.resolveDrawable(getContext(), R.attr.colorDividerLine);
            }
            this.pY.setBounds(0, measuredHeight - 1, i3 - i, measuredHeight);
        } else if (this.pW != null) {
            this.pW.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (i2 != 0) {
            invalidate();
        }
    }

    public void onWindowShow() {
        if (this.mActionBarView.getMenuView() != null) {
            this.mActionBarView.getMenuView().startLayoutAnimation();
        }
    }

    public void onWindowHide() {
        if (this.mActionBarView.getMenuView() != null) {
            this.mActionBarView.getMenuView().startLayoutAnimation();
        }
    }

    public void hide(boolean z) {
        if (this.pT != null) {
            this.pT.cancel();
        }
        if (z && this.pZ) {
            this.pT = ObjectAnimator.ofFloat(this, "TranslationY", new float[]{0.0f, (float) getHeight()});
            this.pT.setDuration(DeviceHelper.FEATURE_WHOLE_ANIM ? (long) getContext().getResources().getInteger(17694720) : 0);
            this.pT.addListener(this.ql);
            this.pT.start();
            return;
        }
        setVisibility(8);
    }

    public void show(boolean z) {
        if (this.pT != null) {
            this.pT.cancel();
        }
        setVisibility(0);
        if (!z) {
            setTranslationY(0.0f);
        } else if (this.pZ) {
            this.pT = ObjectAnimator.ofFloat(this, "TranslationY", new float[]{(float) getHeight(), 0.0f});
            this.pT.setDuration(DeviceHelper.FEATURE_WHOLE_ANIM ? (long) getContext().getResources().getInteger(17694720) : 0);
            this.pT.addListener(this.qm);
            this.pT.start();
            ActionMenuView actionMenuView = (ActionMenuView) getChildAt(0);
            if (actionMenuView != null) {
                actionMenuView.startLayoutAnimation();
            }
        }
    }

    public void onPageScrolled(int i, float f, boolean z, boolean z2) {
        if (this.pZ) {
            ActionMenuView actionMenuView = (ActionMenuView) getChildAt(0);
            if (actionMenuView != null) {
                actionMenuView.onPageScrolled(i, f, z, z2);
            }
        }
    }

    public void onPageSelected(int i) {
    }

    public void onPageScrollStateChanged(int i) {
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.qb) {
            post(new Runnable() {
                public void run() {
                    ActionBarContainer.this.show(true);
                }
            });
            this.qb = false;
        }
    }

    private void bd() {
        if (!this.qk && !this.pZ && this.mActionBarView != null && this.nI != null && this.pU != null && this.pU.length >= 3) {
            int i = 0;
            if (this.mActionBarView.hasEmbeddedTabs()) {
                i = 1;
                int displayOptions = this.mActionBarView.getDisplayOptions();
                if (!((displayOptions & 2) == 0 && (displayOptions & 4) == 0 && (displayOptions & 16) == 0)) {
                    i = 2;
                }
            }
            if (this.pU[i] != null) {
                this.nI = this.pU[i];
            }
        }
    }
}
