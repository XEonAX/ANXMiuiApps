package com.miui.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.miui.internal.view.menu.ActionMenuPresenter;
import com.miui.internal.view.menu.ActionMenuView;
import miui.R;
import miui.util.ViewUtils;

abstract class a extends ViewGroup {
    protected ActionMenuPresenter mActionMenuPresenter;
    protected int mContentHeight;
    protected ActionMenuView mMenuView;
    protected boolean mSplitActionBar;
    protected ActionBarContainer mSplitView;
    protected boolean mSplitWhenNarrow;

    a(Context context) {
        super(context);
    }

    a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void onConfigurationChanged(Configuration configuration) {
        if (VERSION.SDK_INT >= 8) {
            super.onConfigurationChanged(configuration);
        }
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, R.styleable.ActionBar, bb(), 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(R.styleable.ActionBar_android_height, 0));
        obtainStyledAttributes.recycle();
        if (this.mSplitWhenNarrow) {
            setSplitActionBar(getContext().getResources().getBoolean(com.miui.internal.R.bool.abc_split_action_bar_is_narrow));
        }
        if (this.mActionMenuPresenter != null) {
            this.mActionMenuPresenter.onConfigurationChanged(configuration);
        }
    }

    int bb() {
        return 16843470;
    }

    public void setSplitActionBar(boolean z) {
        this.mSplitActionBar = z;
    }

    public void setSplitWhenNarrow(boolean z) {
        this.mSplitWhenNarrow = z;
    }

    public void setContentHeight(int i) {
        this.mContentHeight = i;
        requestLayout();
    }

    public int getContentHeight() {
        return this.mContentHeight;
    }

    public void setSplitView(ActionBarContainer actionBarContainer) {
        this.mSplitView = actionBarContainer;
    }

    public int getAnimatedVisibility() {
        return getVisibility();
    }

    public ActionMenuView getActionMenuView() {
        return this.mMenuView;
    }

    public void animateToVisibility(int i) {
        clearAnimation();
        if (i != getVisibility()) {
            int i2;
            Context context = getContext();
            if (i == 0) {
                i2 = com.miui.internal.R.anim.action_bar_fade_in;
            } else {
                i2 = com.miui.internal.R.anim.action_bar_fade_out;
            }
            Animation loadAnimation = AnimationUtils.loadAnimation(context, i2);
            startAnimation(loadAnimation);
            setVisibility(i);
            if (this.mSplitView != null && this.mMenuView != null) {
                this.mMenuView.startAnimation(loadAnimation);
                this.mMenuView.setVisibility(i);
            }
        }
    }

    public void setVisibility(int i) {
        if (i != getVisibility()) {
            super.setVisibility(i);
        }
    }

    public boolean showOverflowMenu() {
        return this.mActionMenuPresenter != null && this.mActionMenuPresenter.showOverflowMenu();
    }

    public void postShowOverflowMenu() {
        post(new AbsActionBarView$1(this));
    }

    public boolean hideOverflowMenu() {
        return this.mActionMenuPresenter != null && this.mActionMenuPresenter.hideOverflowMenu(false);
    }

    public boolean isOverflowMenuShowing() {
        return this.mActionMenuPresenter != null && this.mActionMenuPresenter.isOverflowMenuShowing();
    }

    public boolean isOverflowReserved() {
        return this.mActionMenuPresenter != null && this.mActionMenuPresenter.isOverflowReserved();
    }

    public void dismissPopupMenus() {
        if (this.mActionMenuPresenter != null) {
            this.mActionMenuPresenter.dismissPopupMenus(false);
        }
    }

    protected int measureChildView(View view, int i, int i2, int i3) {
        view.measure(MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - i3);
    }

    protected int positionChild(View view, int i, int i2, int i3) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = i2 + ((i3 - measuredHeight) / 2);
        ViewUtils.layoutChildView(this, view, i, i4, i + measuredWidth, i4 + measuredHeight);
        return measuredWidth;
    }

    protected int positionChildInverse(View view, int i, int i2, int i3) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = i2 + ((i3 - measuredHeight) / 2);
        ViewUtils.layoutChildView(this, view, i - measuredWidth, i4, i, i4 + measuredHeight);
        return measuredWidth;
    }

    public ActionMenuView getMenuView() {
        return this.mMenuView;
    }
}
