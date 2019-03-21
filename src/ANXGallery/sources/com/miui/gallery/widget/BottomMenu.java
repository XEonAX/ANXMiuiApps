package com.miui.gallery.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.miui.gallery.R;
import com.miui.gallery.compat.view.ViewCompat;
import com.miui.gallery.util.BuildUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.view.menu.ActionMenuPresenter;
import com.miui.gallery.view.menu.ActionMenuView;
import com.miui.gallery.view.menu.MenuBuilder;
import com.miui.gallery.view.menu.MenuPresenter.Callback;
import com.miui.gallery.view.menu.PhoneActionMenuView;
import miui.view.animation.CubicEaseInInterpolator;
import miui.view.animation.CubicEaseOutInterpolator;

public class BottomMenu extends FrameLayout {
    private ActionMenuPresenter mActionMenuPresenter;
    private Rect mBaseInnerInsets = new Rect();
    private View mContentMask;
    private OnClickListener mContentMaskOnClickListener;
    private boolean mHiddenByApp;
    private Animator mMenuBarAnim;
    private ActionMenuView mMenuView;
    private MenuBuilder mOptionsMenu;
    private PhoneActionMenuView mSplitMenuView;

    public class ContentMaskAnimator implements AnimatorListener {
        private ObjectAnimator mHideAnimator;
        private OnClickListener mOnClickListener;
        private ObjectAnimator mShowAnimator;

        /* synthetic */ ContentMaskAnimator(BottomMenu x0, OnClickListener x1, AnonymousClass1 x2) {
            this(x1);
        }

        private ContentMaskAnimator(OnClickListener onClickListener) {
            this.mOnClickListener = onClickListener;
            this.mShowAnimator = ObjectAnimator.ofFloat(BottomMenu.this.mContentMask, "alpha", new float[]{0.0f, 1.0f});
            this.mShowAnimator.addListener(this);
            this.mHideAnimator = ObjectAnimator.ofFloat(BottomMenu.this.mContentMask, "alpha", new float[]{1.0f, 0.0f});
            this.mHideAnimator.addListener(this);
        }

        public Animator show() {
            return this.mShowAnimator;
        }

        public Animator hide() {
            return this.mHideAnimator;
        }

        public void onAnimationStart(Animator animator) {
            if (animator == this.mShowAnimator) {
                BottomMenu.this.mContentMask.setVisibility(0);
                BottomMenu.this.mContentMask.bringToFront();
                BottomMenu.this.mMenuView.bringToFront();
                BottomMenu.this.mContentMask.setOnClickListener(this.mOnClickListener);
            }
        }

        public void onAnimationEnd(Animator animator) {
            if (BottomMenu.this.mContentMask.getAlpha() == 0.0f) {
                BottomMenu.this.mMenuView.bringToFront();
                BottomMenu.this.mContentMask.setOnClickListener(null);
                BottomMenu.this.mContentMask.setVisibility(8);
            }
        }

        public void onAnimationCancel(Animator animator) {
            if (animator == this.mHideAnimator) {
                BottomMenu.this.mMenuView.bringToFront();
                BottomMenu.this.mContentMask.setOnClickListener(null);
            }
        }

        public void onAnimationRepeat(Animator animation) {
        }
    }

    public BottomMenu(Context context) {
        super(context);
    }

    public BottomMenu(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public BottomMenu(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        requestFitSystemWindows();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        pullChildren();
        this.mContentMaskOnClickListener = new OnClickListener() {
            public void onClick(View v) {
                if (BottomMenu.this.mSplitMenuView != null && BottomMenu.this.mSplitMenuView.isOverflowMenuShowing()) {
                    BottomMenu.this.mSplitMenuView.getPresenter().hideOverflowMenu(true);
                }
            }
        };
    }

    private void pullChildren() {
        if (this.mContentMask == null) {
            this.mContentMask = findViewById(R.id.content_mask);
            if (BuildUtil.isOledDisplay() && this.mContentMask != null) {
                this.mContentMask.setBackground(getContext().getResources().getDrawable(R.drawable.window_content_mask_oled));
            }
        }
    }

    protected boolean fitSystemWindows(Rect insets) {
        this.mBaseInnerInsets.set(ViewCompat.getSystemWindowInsets(this));
        boolean changed = false;
        if (this.mMenuView != null) {
            changed = false | applyInsets(this.mMenuView, this.mBaseInnerInsets, true, false, true, true);
        }
        if (changed) {
            requestLayout();
        }
        return false;
    }

    private boolean applyInsets(View view, Rect insets, boolean left, boolean top, boolean bottom, boolean right) {
        boolean changed = false;
        LayoutParams lp = (LayoutParams) view.getLayoutParams();
        if (left && lp.leftMargin != insets.left) {
            changed = true;
            lp.leftMargin = insets.left;
        }
        if (top && lp.topMargin != insets.top) {
            changed = true;
            lp.topMargin = insets.top;
        }
        if (right && lp.rightMargin != insets.right) {
            changed = true;
            lp.rightMargin = insets.right;
        }
        if (!bottom || lp.bottomMargin == insets.bottom) {
            return changed;
        }
        lp.bottomMargin = insets.bottom;
        return true;
    }

    public void setMenu(Menu menu, Callback cb) {
        if (menu != this.mOptionsMenu) {
            ViewGroup oldParent;
            if (this.mOptionsMenu != null) {
                this.mOptionsMenu.removeMenuPresenter(this.mActionMenuPresenter);
            }
            MenuBuilder builder = (MenuBuilder) menu;
            this.mOptionsMenu = builder;
            if (this.mMenuView != null) {
                oldParent = (ViewGroup) this.mMenuView.getParent();
                if (oldParent != null) {
                    oldParent.removeView(this.mMenuView);
                }
            }
            if (this.mActionMenuPresenter == null) {
                this.mActionMenuPresenter = createActionMenuPresenter(cb);
            }
            this.mActionMenuPresenter.setExpandedActionViewsExclusive(false);
            this.mActionMenuPresenter.setWidthLimit(getContext().getResources().getDisplayMetrics().widthPixels, true);
            LayoutParams layoutParams = new LayoutParams(-1, -2);
            layoutParams.gravity = 80;
            configPresenters(builder);
            ActionMenuView menuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
            oldParent = (ViewGroup) menuView.getParent();
            if (!(oldParent == null || oldParent == this)) {
                oldParent.removeView(menuView);
            }
            int visibility = getAnimatedVisibility();
            menuView.setVisibility(visibility);
            addView(menuView, layoutParams);
            View expandedMenu = menuView.findViewById(R.id.expanded_menu);
            if (expandedMenu != null) {
                expandedMenu.requestLayout();
            }
            if (visibility != 8) {
                requestFitSystemWindows();
            }
            this.mMenuView = menuView;
        }
    }

    public boolean showOverflowMenu() {
        return this.mActionMenuPresenter != null && this.mActionMenuPresenter.showOverflowMenu();
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

    public int getAnimatedVisibility() {
        return !this.mHiddenByApp ? getVisibility() : 8;
    }

    public void show(boolean animate) {
        boolean needLayoutAnim = false;
        if (this.mHiddenByApp) {
            this.mHiddenByApp = false;
            if (this.mMenuView == null) {
                Log.d("BottomMenu", "show: menuView is null");
                return;
            }
            if (this.mMenuBarAnim != null) {
                this.mMenuBarAnim.cancel();
            }
            this.mMenuView.setVisibility(0);
            if (animate) {
                this.mMenuBarAnim = getMenuBarAnimator(true);
                this.mMenuBarAnim.start();
                if (this.mMenuView instanceof PhoneActionMenuView) {
                    if (!((PhoneActionMenuView) this.mMenuView).isOverflowMenuShowing()) {
                        needLayoutAnim = true;
                    }
                    if (needLayoutAnim) {
                        this.mMenuView.startLayoutAnimation();
                    }
                }
            } else {
                this.mMenuView.setTranslationY(0.0f);
                this.mMenuView.setAlpha(1.0f);
            }
            updateContentMaskVisibility(true);
        }
    }

    public void hide(boolean animate) {
        if (!this.mHiddenByApp) {
            this.mHiddenByApp = true;
            if (this.mMenuView != null) {
                if (this.mMenuBarAnim != null) {
                    this.mMenuBarAnim.cancel();
                }
                if (animate) {
                    this.mMenuBarAnim = getMenuBarAnimator(false);
                    this.mMenuBarAnim.start();
                } else {
                    this.mMenuView.setTranslationY((float) (getMenuBarHeight() + ViewCompat.getSystemWindowInsetBottom(this)));
                    this.mMenuView.setAlpha(0.0f);
                    this.mMenuView.setVisibility(8);
                }
                updateContentMaskVisibility(false);
            }
        }
    }

    private void updateContentMaskVisibility(boolean isVisible) {
        if (this.mMenuView instanceof PhoneActionMenuView) {
            this.mSplitMenuView = (PhoneActionMenuView) this.mMenuView;
            if (this.mSplitMenuView.isOverflowMenuShowing() && this.mContentMask != null) {
                if (isVisible) {
                    getContentMaskAnimator(this.mContentMaskOnClickListener).show().start();
                } else {
                    getContentMaskAnimator(null).hide().start();
                }
            }
        }
    }

    private void configPresenters(MenuBuilder builder) {
        if (builder != null) {
            builder.addMenuPresenter(this.mActionMenuPresenter);
        } else {
            this.mActionMenuPresenter.initForMenu(getContext(), null);
        }
        this.mActionMenuPresenter.updateMenuView(true);
    }

    protected ActionMenuPresenter createActionMenuPresenter(Callback callback) {
        ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(getContext(), BuildUtil.isTablet() ? R.layout.action_menu_layout_tablet : R.layout.action_menu_layout, R.layout.action_menu_item_layout, R.layout.action_bar_expanded_menu_layout, R.layout.action_bar_list_menu_item_layout);
        actionMenuPresenter.setCallback(callback);
        actionMenuPresenter.setId(R.id.action_menu_presenter);
        return actionMenuPresenter;
    }

    public int getCollapsedHeight() {
        if (this.mMenuView == null) {
            return -1;
        }
        int height = this.mMenuView.getCollapsedHeight();
        return height > 0 ? height : -1;
    }

    private int getMenuBarHeight() {
        int height = this.mMenuView.getHeight();
        if (!(this.mMenuView instanceof PhoneActionMenuView)) {
            return height;
        }
        PhoneActionMenuView menuView = this.mMenuView;
        if (menuView.isOverflowMenuShowing()) {
            return height;
        }
        return menuView.getCollapsedHeight();
    }

    private Animator getMenuBarAnimator(boolean isShow) {
        AnimatorSet animSet = new AnimatorSet();
        Animator translate;
        Animator alpha;
        if (isShow) {
            translate = ObjectAnimator.ofFloat(this.mMenuView, "TranslationY", new float[]{this.mMenuView.getTranslationY(), 0.0f});
            alpha = ObjectAnimator.ofFloat(this.mMenuView, "Alpha", new float[]{this.mMenuView.getAlpha(), 1.0f});
            animSet.playTogether(new Animator[]{translate, alpha});
            animSet.setInterpolator(new CubicEaseOutInterpolator());
            animSet.setDuration((long) getContext().getResources().getInteger(R.integer.action_bar_appear_duration));
        } else {
            int height = getMenuBarHeight() + ViewCompat.getSystemWindowInsetBottom(this);
            translate = ObjectAnimator.ofFloat(this.mMenuView, "TranslationY", new float[]{this.mMenuView.getTranslationY(), (float) height});
            alpha = ObjectAnimator.ofFloat(this.mMenuView, "Alpha", new float[]{this.mMenuView.getAlpha(), 0.0f});
            animSet.playTogether(new Animator[]{translate, alpha});
            animSet.setInterpolator(new CubicEaseInInterpolator());
            animSet.setDuration((long) getContext().getResources().getInteger(R.integer.action_bar_disappear_duration));
            animSet.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animation) {
                    BottomMenu.this.mMenuView.setVisibility(8);
                }
            });
        }
        return animSet;
    }

    public boolean dispatchKeyEvent(KeyEvent event) {
        if (super.dispatchKeyEvent(event)) {
            return true;
        }
        boolean handled = false;
        if (isBackPressed(event)) {
            if (this.mActionMenuPresenter == null || !this.mActionMenuPresenter.hideOverflowMenu(false)) {
                handled = false;
            } else {
                handled = true;
            }
        }
        return handled;
    }

    private boolean isBackPressed(KeyEvent event) {
        return event.getKeyCode() == 4 && event.getAction() == 1;
    }

    public ContentMaskAnimator getContentMaskAnimator(OnClickListener onClickListener) {
        return new ContentMaskAnimator(this, onClickListener, null);
    }
}
