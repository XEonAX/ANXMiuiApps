package com.miui.gallery.view.menu;

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
import com.miui.gallery.R;
import com.miui.gallery.view.menu.ActionMenuView.LayoutParams;
import com.miui.gallery.widget.BottomMenu;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import miui.util.ViewUtils;
import miui.view.animation.CubicEaseOutInterpolator;

public class PhoneActionMenuView extends ActionMenuView {
    private static final int[] ATTRS = new int[]{16842964, R.attr.expandBackground, R.attr.splitActionBarOverlayHeight};
    private int mAverageActionButtonWidth;
    private Rect mBackgroundPadding;
    private View mBackgroundView;
    private Drawable mCollapseBackground;
    private Drawable mExpandBackground;
    private int mMaxActionButtonWidth;
    private int mMenuItemHeight;
    private int mMenuItemWidth;
    private OverflowMenuState mOverflowMenuState;
    private View mOverflowMenuView;
    private OverflowMenuViewAnimator mOverflowMenuViewAnimator;
    private int mSplitActionBarOverlayHeight;

    private enum OverflowMenuState {
        Collapsed,
        Expanding,
        Expanded,
        Collapsing
    }

    private class OverflowMenuViewAnimator implements AnimatorListener, OnClickListener {
        private BottomMenu mBottomMenu;
        private AnimatorSet mCollapseAnimator;
        private AnimatorSet mExpandAnimator;

        private OverflowMenuViewAnimator() {
        }

        public void ensureAnimators() {
            if (this.mExpandAnimator == null) {
                this.mBottomMenu = BottomMenuBarUtils.findBottomMenuBar(PhoneActionMenuView.this);
                AnimatorSet set = new AnimatorSet();
                ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(PhoneActionMenuView.this, "Value", new float[]{1.0f, 0.0f});
                set.playTogether(new Animator[]{objectAnimator, this.mBottomMenu.getContentMaskAnimator(this).show()});
                set.setDuration((long) PhoneActionMenuView.this.getResources().getInteger(17694720));
                set.setInterpolator(new CubicEaseOutInterpolator());
                set.addListener(this);
                this.mExpandAnimator = set;
                set = new AnimatorSet();
                objectAnimator = ObjectAnimator.ofFloat(PhoneActionMenuView.this, "Value", new float[]{0.0f, 1.0f});
                set.playTogether(new Animator[]{objectAnimator, this.mBottomMenu.getContentMaskAnimator(null).hide()});
                set.setDuration((long) PhoneActionMenuView.this.getResources().getInteger(17694720));
                set.setInterpolator(new CubicEaseOutInterpolator());
                set.addListener(this);
                this.mCollapseAnimator = set;
            }
        }

        public void show() {
            ensureAnimators();
            this.mCollapseAnimator.cancel();
            this.mExpandAnimator.cancel();
            this.mExpandAnimator.start();
        }

        public void hide() {
            ensureAnimators();
            this.mCollapseAnimator.cancel();
            this.mExpandAnimator.cancel();
            this.mCollapseAnimator.start();
        }

        public void reverse() {
            if (VERSION.SDK_INT >= 26) {
                try {
                    Method method = Class.forName("android.animation.AnimatorSet").getDeclaredMethod("reverse", new Class[0]);
                    if (this.mExpandAnimator.isRunning()) {
                        method.invoke(this.mExpandAnimator, new Object[0]);
                    }
                    if (this.mCollapseAnimator.isRunning()) {
                        method.invoke(this.mCollapseAnimator, new Object[0]);
                        return;
                    }
                    return;
                } catch (Exception e) {
                    Log.e("PhoneActionMenuView", "reverse: ", e);
                    return;
                }
            }
            ArrayList<Animator> animators = null;
            if (this.mExpandAnimator.isRunning()) {
                animators = this.mExpandAnimator.getChildAnimations();
            }
            if (this.mCollapseAnimator.isRunning()) {
                animators = this.mCollapseAnimator.getChildAnimations();
            }
            if (animators != null) {
                Iterator it = animators.iterator();
                while (it.hasNext()) {
                    ((ValueAnimator) ((Animator) it.next())).reverse();
                }
            }
        }

        public void onAnimationStart(Animator animator) {
        }

        public void onAnimationEnd(Animator animator) {
            if (PhoneActionMenuView.this.mOverflowMenuView != null) {
                if (PhoneActionMenuView.this.mOverflowMenuView.getTranslationY() == 0.0f) {
                    PhoneActionMenuView.this.mOverflowMenuState = OverflowMenuState.Expanded;
                    setContentViewImportantForAccessibility(false);
                } else if (PhoneActionMenuView.this.mOverflowMenuView.getTranslationY() == ((float) PhoneActionMenuView.this.getMeasuredHeight())) {
                    PhoneActionMenuView.this.mOverflowMenuState = OverflowMenuState.Collapsed;
                    setContentViewImportantForAccessibility(true);
                    PhoneActionMenuView.this.mBackgroundView.setBackground(PhoneActionMenuView.this.mCollapseBackground);
                }
            }
            PhoneActionMenuView.this.postInvalidateOnAnimation();
        }

        public void onAnimationRepeat(Animator animator) {
        }

        public void onAnimationCancel(Animator animator) {
            if (PhoneActionMenuView.this.mOverflowMenuState == OverflowMenuState.Expanding || PhoneActionMenuView.this.mOverflowMenuState == OverflowMenuState.Expanded) {
                PhoneActionMenuView.this.setValue(0.0f);
                setContentViewImportantForAccessibility(false);
            } else if (PhoneActionMenuView.this.mOverflowMenuState == OverflowMenuState.Collapsing || PhoneActionMenuView.this.mOverflowMenuState == OverflowMenuState.Collapsed) {
                PhoneActionMenuView.this.setValue(1.0f);
                setContentViewImportantForAccessibility(true);
            }
            PhoneActionMenuView.this.postInvalidateOnAnimation();
        }

        private void setContentViewImportantForAccessibility(boolean enable) {
        }

        public void onClick(View v) {
            if (PhoneActionMenuView.this.mOverflowMenuState == OverflowMenuState.Expanded) {
                PhoneActionMenuView.this.getPresenter().hideOverflowMenu(true);
            }
        }
    }

    public PhoneActionMenuView(Context context) {
        this(context, null);
    }

    public PhoneActionMenuView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mOverflowMenuState = OverflowMenuState.Collapsed;
        this.mMaxActionButtonWidth = 0;
        this.mAverageActionButtonWidth = 0;
        super.setBackground(null);
        TypedArray a = context.obtainStyledAttributes(attrs, ATTRS);
        this.mCollapseBackground = a.getDrawable(0);
        this.mExpandBackground = a.getDrawable(1);
        this.mSplitActionBarOverlayHeight = a.getDimensionPixelSize(2, 0);
        a.recycle();
        extractBackground();
        this.mBackgroundView = new View(context);
        addView(this.mBackgroundView);
        setChildrenDrawingOrderEnabled(true);
        this.mMaxActionButtonWidth = context.getResources().getDimensionPixelSize(R.dimen.action_button_max_width);
    }

    public void setBackground(Drawable background) {
        if (this.mCollapseBackground != background) {
            this.mCollapseBackground = background;
            extractBackground();
        }
    }

    public boolean filterLeftoverView(int childIndex) {
        boolean filter;
        View child = getChildAt(childIndex);
        if (child == this.mOverflowMenuView || child == this.mBackgroundView) {
            filter = false;
        } else {
            LayoutParams lp = (LayoutParams) child.getLayoutParams();
            filter = lp == null || !lp.isOverflowButton;
        }
        if (filter && super.filterLeftoverView(childIndex)) {
            return true;
        }
        return false;
    }

    public void setOverflowMenuView(View overflowMenuView) {
        if (this.mOverflowMenuView != overflowMenuView) {
            if (this.mOverflowMenuView != null) {
                if (this.mOverflowMenuView.getAnimation() != null) {
                    this.mOverflowMenuView.clearAnimation();
                }
                removeView(this.mOverflowMenuView);
            }
            if (overflowMenuView != null) {
                addView(overflowMenuView);
            }
            this.mOverflowMenuView = overflowMenuView;
            extractBackground();
        }
    }

    public boolean showOverflowMenu() {
        OverflowMenuState state = this.mOverflowMenuState;
        if (state == OverflowMenuState.Expanding || state == OverflowMenuState.Expanded || this.mOverflowMenuView == null) {
            return false;
        }
        this.mBackgroundView.setBackground(this.mExpandBackground);
        OverflowMenuViewAnimator animator = getOverflowMenuViewAnimator();
        if (state == OverflowMenuState.Collapsed) {
            this.mOverflowMenuState = OverflowMenuState.Expanding;
            animator.show();
        } else if (state == OverflowMenuState.Collapsing) {
            animator.reverse();
        }
        postInvalidateOnAnimation();
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        return true;
    }

    public boolean isOverflowMenuShowing() {
        return this.mOverflowMenuState == OverflowMenuState.Expanding || this.mOverflowMenuState == OverflowMenuState.Expanded;
    }

    public boolean hideOverflowMenu() {
        OverflowMenuState state = this.mOverflowMenuState;
        if (state == OverflowMenuState.Collapsing || state == OverflowMenuState.Collapsed) {
            return false;
        }
        OverflowMenuViewAnimator animator = getOverflowMenuViewAnimator();
        if (state == OverflowMenuState.Expanded) {
            this.mOverflowMenuState = OverflowMenuState.Collapsing;
            animator.hide();
        } else if (state == OverflowMenuState.Expanding) {
            animator.reverse();
        }
        return true;
    }

    private OverflowMenuViewAnimator getOverflowMenuViewAnimator() {
        if (this.mOverflowMenuViewAnimator == null) {
            this.mOverflowMenuViewAnimator = new OverflowMenuViewAnimator();
        }
        return this.mOverflowMenuViewAnimator;
    }

    private int getStatusBarHeight() {
        Resources resources = getResources();
        int resourceId = resources.getIdentifier("status_bar_height", "dimen", "android");
        if (resourceId > 0) {
            return resources.getDimensionPixelSize(resourceId);
        }
        return 0;
    }

    public int getCollapsedHeight() {
        if (this.mMenuItemHeight == 0) {
            return 0;
        }
        return (this.mMenuItemHeight + this.mBackgroundPadding.top) - this.mSplitActionBarOverlayHeight;
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int measuredWidth = 0;
        int measuredHeight = 0;
        int count = getChildCount();
        int actionCount = getChildCount();
        if (indexOfChild(this.mOverflowMenuView) != -1) {
            actionCount--;
        }
        if (indexOfChild(this.mBackgroundView) != -1) {
            actionCount--;
        }
        if (count == 0 || actionCount == 0) {
            this.mMenuItemHeight = 0;
            setMeasuredDimension(0, 0);
            return;
        }
        this.mAverageActionButtonWidth = Math.min(MeasureSpec.getSize(widthMeasureSpec) / actionCount, this.mMaxActionButtonWidth);
        int widthSpec = MeasureSpec.makeMeasureSpec(this.mAverageActionButtonWidth, Integer.MIN_VALUE);
        for (int i = 0; i < count; i++) {
            View child = getChildAt(i);
            if (!(child == this.mOverflowMenuView || child == this.mBackgroundView)) {
                measureChildWithMargins(child, widthSpec, 0, heightMeasureSpec, 0);
                measuredWidth += child.getMeasuredWidth();
                measuredHeight = Math.max(measuredHeight, child.getMeasuredHeight());
            }
        }
        this.mMenuItemWidth = measuredWidth;
        this.mMenuItemHeight = measuredHeight;
        if (this.mOverflowMenuView != null) {
            MarginLayoutParams lp = (MarginLayoutParams) this.mOverflowMenuView.getLayoutParams();
            lp.topMargin = getStatusBarHeight();
            lp.bottomMargin = this.mMenuItemHeight;
            measureChildWithMargins(this.mOverflowMenuView, widthMeasureSpec, 0, heightMeasureSpec, 0);
            measuredWidth = Math.max(measuredWidth, this.mOverflowMenuView.getMeasuredWidth());
            measuredHeight += this.mOverflowMenuView.getMeasuredHeight();
            if (this.mOverflowMenuState == OverflowMenuState.Expanded) {
                this.mOverflowMenuView.setTranslationY(0.0f);
            } else if (this.mOverflowMenuState == OverflowMenuState.Collapsed) {
                this.mOverflowMenuView.setTranslationY((float) measuredHeight);
            }
        }
        if (this.mOverflowMenuView == null) {
            measuredHeight += this.mBackgroundPadding.top;
        }
        this.mBackgroundView.setBackground(this.mOverflowMenuState == OverflowMenuState.Collapsed ? this.mCollapseBackground : this.mExpandBackground);
        setMeasuredDimension(Math.max(measuredWidth, MeasureSpec.getSize(widthMeasureSpec)), measuredHeight);
    }

    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        int bottom;
        int i;
        View child;
        int x;
        int width = r - l;
        int height = b - t;
        int top = 0;
        if (this.mOverflowMenuView != null) {
            bottom = this.mOverflowMenuView.getMeasuredHeight();
            ViewUtils.layoutChildView(this, this.mOverflowMenuView, 0, 0, width, bottom);
            top = bottom - this.mBackgroundPadding.top;
        }
        ViewUtils.layoutChildView(this, this.mBackgroundView, 0, top, width, height);
        top += this.mBackgroundPadding.top;
        bottom = height - this.mBackgroundPadding.bottom;
        boolean isAverage = false;
        int actionCount = 0;
        int count = getChildCount();
        for (i = 0; i < count; i++) {
            child = getChildAt(i);
            if (!(child == this.mOverflowMenuView || child == this.mBackgroundView)) {
                if (child.getMeasuredWidth() >= this.mAverageActionButtonWidth) {
                    isAverage = true;
                }
                actionCount++;
            }
        }
        if (isAverage) {
            x = (width - (this.mAverageActionButtonWidth * actionCount)) >> 1;
        } else {
            x = (width - this.mMenuItemWidth) >> 1;
        }
        for (i = 0; i < count; i++) {
            child = getChildAt(i);
            if (!(child == this.mOverflowMenuView || child == this.mBackgroundView)) {
                int childWidth = child.getMeasuredWidth();
                if (isAverage) {
                    int innerX = (this.mAverageActionButtonWidth - childWidth) >> 1;
                    x += innerX;
                    ViewUtils.layoutChildView(this, child, x, top, x + childWidth, bottom);
                    x = (x - innerX) + this.mAverageActionButtonWidth;
                } else {
                    ViewUtils.layoutChildView(this, child, x, top, x + childWidth, bottom);
                    x += child.getMeasuredWidth();
                }
            }
        }
    }

    public boolean onTouchEvent(MotionEvent event) {
        float f;
        float y = event.getY();
        if (this.mOverflowMenuView == null) {
            f = 0.0f;
        } else {
            f = this.mOverflowMenuView.getTranslationY();
        }
        return y > f || super.onTouchEvent(event);
    }

    private void extractBackground() {
        if (this.mBackgroundPadding == null) {
            this.mBackgroundPadding = new Rect();
        }
        Drawable d = this.mOverflowMenuView == null ? this.mCollapseBackground : this.mExpandBackground;
        if (d == null) {
            this.mBackgroundPadding.setEmpty();
        } else {
            d.getPadding(this.mBackgroundPadding);
        }
    }

    public void setValue(float value) {
        if (this.mOverflowMenuView != null) {
            this.mOverflowMenuView.setTranslationY(((float) getMeasuredHeight()) * value);
        }
    }

    protected int getChildDrawingOrder(int childCount, int i) {
        int overflowIndex = indexOfChild(this.mOverflowMenuView);
        int backgroundIndex = indexOfChild(this.mBackgroundView);
        if (i == 0) {
            if (overflowIndex != -1) {
                return overflowIndex;
            }
            if (backgroundIndex != -1) {
                return backgroundIndex;
            }
        } else if (!(i != 1 || overflowIndex == -1 || backgroundIndex == -1)) {
            return backgroundIndex;
        }
        int childIndex = 0;
        while (childIndex < childCount) {
            if (!(childIndex == overflowIndex || childIndex == backgroundIndex)) {
                int drawingIndex = childIndex;
                if (childIndex < overflowIndex) {
                    drawingIndex++;
                }
                if (childIndex < backgroundIndex) {
                    drawingIndex++;
                }
                if (drawingIndex == i) {
                    return childIndex;
                }
            }
            childIndex++;
        }
        return super.getChildDrawingOrder(childCount, i);
    }

    public boolean hasBackgroundView() {
        return getChildAt(0) == this.mBackgroundView;
    }
}
