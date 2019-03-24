package com.miui.internal.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.view.EditActionModeImpl;
import com.miui.internal.view.menu.ActionMenuItem;
import com.miui.internal.view.menu.ActionMenuPresenter;
import com.miui.internal.view.menu.ActionMenuView;
import com.miui.internal.view.menu.MenuBuilder;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import miui.R;
import miui.view.ActionModeAnimationListener;
import miui.view.EditActionMode;
import miui.view.animation.CubicEaseOutInterpolator;

public class ActionBarContextView extends a implements ActionModeView {
    private static final int qo = 0;
    private static final int qp = 1;
    private static final int qq = 2;
    private TextView cx;
    private CharSequence mTitle;
    private Drawable pW;
    private Animator qA;
    private int qB;
    private int qC;
    private List<ActionModeAnimationListener> qD;
    private float qE;
    private boolean qF;
    private OnClickListener qG;
    private boolean qb;
    private final VisibilityAnimListener qr;
    private LinearLayout qs;
    private Button qt;
    private Button qu;
    private int qv;
    private boolean qw;
    private ActionMenuItem qx;
    private ActionMenuItem qy;
    private WeakReference<ActionMode> qz;

    private static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            /* renamed from: c */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: m */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public CharSequence qI;
        public boolean qJ;
        public CharSequence title;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.qJ = parcel.readInt() != 0;
            this.title = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.qI = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.qJ);
            TextUtils.writeToParcel(this.title, parcel, 0);
            TextUtils.writeToParcel(this.qI, parcel, 0);
        }
    }

    protected class VisibilityAnimListener implements AnimatorListener {
        boolean qK;
        private boolean qL = false;

        protected VisibilityAnimListener() {
        }

        public VisibilityAnimListener withFinalVisibility(boolean z) {
            this.qK = z;
            return this;
        }

        public void onAnimationStart(Animator animator) {
            ActionBarContextView.this.setVisibility(0);
            this.qL = false;
            ActionBarContextView.this.notifyAnimationStart(this.qK);
        }

        public void onAnimationEnd(Animator animator) {
            if (!this.qL) {
                ActionBarContextView.this.notifyAnimationEnd(this.qK);
                if (ActionBarContextView.this.qB == 2) {
                    ActionBarContextView.this.killMode();
                }
                int i = 0;
                ActionBarContextView.this.qB = 0;
                ActionBarContextView.this.qA = null;
                ActionBarContextView.this.setVisibility(this.qK ? 0 : 8);
                if (!(ActionBarContextView.this.mSplitView == null || ActionBarContextView.this.mMenuView == null)) {
                    ActionMenuView actionMenuView = ActionBarContextView.this.mMenuView;
                    if (!this.qK) {
                        i = 8;
                    }
                    actionMenuView.setVisibility(i);
                }
            }
        }

        public void onAnimationCancel(Animator animator) {
            this.qL = true;
        }

        public void onAnimationRepeat(Animator animator) {
        }
    }

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843668);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.qr = new VisibilityAnimListener();
        this.qG = new OnClickListener() {
            public void onClick(View view) {
                MenuItem a;
                if (view.getId() == EditActionMode.BUTTON1) {
                    a = ActionBarContextView.this.qx;
                } else {
                    a = ActionBarContextView.this.qy;
                }
                EditActionModeImpl editActionModeImpl = (EditActionModeImpl) ActionBarContextView.this.qz.get();
                if (editActionModeImpl != null) {
                    editActionModeImpl.onMenuItemSelected((MenuBuilder) editActionModeImpl.getMenu(), a);
                }
            }
        };
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionMode, i, 0);
        setBackground(obtainStyledAttributes.getDrawable(R.styleable.ActionMode_android_background));
        this.qv = obtainStyledAttributes.getResourceId(R.styleable.ActionMode_android_titleTextStyle, 0);
        this.mContentHeight = obtainStyledAttributes.getLayoutDimension(R.styleable.ActionMode_android_height, 0);
        this.pW = obtainStyledAttributes.getDrawable(R.styleable.ActionMode_android_backgroundSplit);
        Context context2 = context;
        this.qx = new ActionMenuItem(context2, 0, EditActionMode.BUTTON1, 0, 0, context.getString(17039360));
        this.qy = new ActionMenuItem(context2, 0, EditActionMode.BUTTON2, 0, 0, context.getString(R.string.action_mode_select_all));
        obtainStyledAttributes.recycle();
    }

    public void setContentInset(int i) {
        this.qC = i;
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mActionMenuPresenter != null) {
            this.mActionMenuPresenter.hideOverflowMenu(false);
            this.mActionMenuPresenter.hideSubMenus();
        }
    }

    public void setSplitActionBar(boolean z) {
        if (this.mSplitActionBar != z) {
            if (this.mActionMenuPresenter != null) {
                LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -1);
                ViewGroup viewGroup;
                if (z) {
                    this.mActionMenuPresenter.setWidthLimit(getContext().getResources().getDisplayMetrics().widthPixels, true);
                    layoutParams.width = -1;
                    layoutParams.height = -2;
                    layoutParams.gravity = DeviceHelper.IS_TABLET ? 17 : 80;
                    this.mMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
                    this.mMenuView.setBackground(this.pW);
                    viewGroup = (ViewGroup) this.mMenuView.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(this.mMenuView);
                    }
                    this.mSplitView.addView(this.mMenuView, layoutParams);
                } else {
                    this.mMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
                    this.mMenuView.setBackground(null);
                    viewGroup = (ViewGroup) this.mMenuView.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(this.mMenuView);
                    }
                    addView(this.mMenuView, layoutParams);
                }
            }
            super.setSplitActionBar(z);
        }
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.qJ = isOverflowMenuShowing();
        savedState.title = getTitle();
        if (this.qu != null) {
            savedState.qI = this.qu.getText();
        }
        return savedState;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setTitle(savedState.title);
        setButton(EditActionMode.BUTTON2, savedState.qI);
        if (savedState.qJ) {
            postShowOverflowMenu();
        }
    }

    int bb() {
        return 16843668;
    }

    public CharSequence getTitle() {
        return this.mTitle;
    }

    public void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        initTitle();
    }

    protected void initTitle() {
        int i = 0;
        if (this.qs == null) {
            this.qs = (LinearLayout) LayoutInflater.from(getContext()).inflate(com.miui.internal.R.layout.action_mode_title_item, this, false);
            this.qt = (Button) this.qs.findViewById(EditActionMode.BUTTON1);
            this.qu = (Button) this.qs.findViewById(EditActionMode.BUTTON2);
            if (this.qt != null) {
                this.qt.setOnClickListener(this.qG);
            }
            if (this.qu != null) {
                this.qu.setOnClickListener(this.qG);
            }
            this.cx = (TextView) this.qs.findViewById(16908310);
            if (this.qv != 0) {
                this.cx.setTextAppearance(getContext(), this.qv);
            }
        }
        this.cx.setText(this.mTitle);
        int isEmpty = TextUtils.isEmpty(this.mTitle) ^ 1;
        LinearLayout linearLayout = this.qs;
        if (isEmpty == 0) {
            i = 8;
        }
        linearLayout.setVisibility(i);
        if (this.qs.getParent() == null) {
            addView(this.qs);
        }
    }

    public void initForMode(ActionMode actionMode) {
        if (this.qz != null) {
            cancelAnimation();
            killMode();
        }
        initTitle();
        this.qz = new WeakReference(actionMode);
        MenuBuilder menuBuilder = (MenuBuilder) actionMode.getMenu();
        if (this.mActionMenuPresenter != null) {
            this.mActionMenuPresenter.dismissPopupMenus(false);
        }
        this.mActionMenuPresenter = new ActionMenuPresenter(getContext(), com.miui.internal.R.layout.action_menu_layout, com.miui.internal.R.layout.action_mode_menu_item_layout, com.miui.internal.R.layout.action_bar_expanded_menu_layout, com.miui.internal.R.layout.action_bar_list_menu_item_layout);
        this.mActionMenuPresenter.setReserveOverflow(true);
        this.mActionMenuPresenter.setActionEditMode(true);
        int i = -2;
        LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -1);
        if (this.mSplitActionBar) {
            this.mActionMenuPresenter.setWidthLimit(getContext().getResources().getDisplayMetrics().widthPixels, true);
            layoutParams.width = -1;
            if (DeviceHelper.IS_TABLET) {
                i = -1;
            }
            layoutParams.height = i;
            layoutParams.gravity = DeviceHelper.IS_TABLET ? 17 : 80;
            menuBuilder.addMenuPresenter(this.mActionMenuPresenter);
            this.mMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
            this.mMenuView.setBackground(this.pW);
            this.mSplitView.addView(this.mMenuView, layoutParams);
            return;
        }
        menuBuilder.addMenuPresenter(this.mActionMenuPresenter);
        this.mMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
        this.mMenuView.setBackground(null);
        addView(this.mMenuView, layoutParams);
    }

    public void closeMode() {
        endAnimation();
        this.qB = 2;
    }

    public void killMode() {
        removeAllViews();
        if (this.qD != null) {
            this.qD.clear();
            this.qD = null;
        }
        if (this.mSplitView != null) {
            this.mSplitView.removeView(this.mMenuView);
        }
        this.mMenuView = null;
        this.qz = null;
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

    protected LayoutParams generateDefaultLayoutParams() {
        return new MarginLayoutParams(-1, -2);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new MarginLayoutParams(getContext(), attributeSet);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    protected void onMeasure(int i, int i2) {
        int i3;
        i = MeasureSpec.getSize(i);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = (i - getPaddingLeft()) - getPaddingRight();
        i2 = MeasureSpec.makeMeasureSpec((this.mContentHeight > 0 ? this.mContentHeight : MeasureSpec.getSize(i2)) - paddingTop, Integer.MIN_VALUE);
        int i4 = 0;
        if (this.mMenuView == null || this.mMenuView.getParent() != this) {
            i3 = 0;
        } else {
            paddingLeft = measureChildView(this.mMenuView, paddingLeft, i2, 0);
            i3 = this.mMenuView.getMeasuredHeight() + 0;
        }
        if (!(this.qs == null || this.qs.getVisibility() == 8)) {
            this.qs.measure(MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824), i2);
            i3 += this.qs.getMeasuredHeight();
        }
        if (this.mContentHeight <= 0) {
            i2 = getChildCount();
            paddingLeft = 0;
            i3 = paddingLeft;
            while (paddingLeft < i2) {
                int measuredHeight = getChildAt(paddingLeft).getMeasuredHeight() + paddingTop;
                if (measuredHeight > i3) {
                    i3 = measuredHeight;
                }
                paddingLeft++;
            }
            if (i3 > 0) {
                i4 = i3 + this.qC;
            }
            setMeasuredDimension(i, i4);
            return;
        }
        if (i3 > 0) {
            i4 = this.mContentHeight + this.qC;
        }
        setMeasuredDimension(i, i4);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingStart = getPaddingStart();
        int paddingTop = getPaddingTop() + this.qC;
        i4 = (((i4 - i2) - getPaddingTop()) - getPaddingBottom()) - this.qC;
        if (!(this.qs == null || this.qs.getVisibility() == 8)) {
            positionChild(this.qs, paddingStart, paddingTop, i4);
        }
        i3 = (i3 - i) - getPaddingEnd();
        if (this.mMenuView != null && this.mMenuView.getParent() == this) {
            positionChildInverse(this.mMenuView, i3, paddingTop, i4);
        }
        if (this.qb) {
            this.qB = 1;
            makeInOutAnimator(true).start();
            this.qb = false;
        }
    }

    public boolean isTitleOptional() {
        return this.qw;
    }

    public void setTitleOptional(boolean z) {
        if (z != this.qw) {
            requestLayout();
        }
        this.qw = z;
    }

    protected void cancelAnimation() {
        if (this.qA != null) {
            this.qA.cancel();
            this.qA = null;
        }
    }

    protected void endAnimation() {
        if (this.qA != null) {
            this.qA.end();
            this.qA = null;
        }
    }

    public float getAnimationProgress() {
        return this.qE;
    }

    public void setAnimationProgress(float f) {
        this.qE = f;
        notifyAnimationUpdate(this.qF, this.qE);
    }

    protected Animator makeInOutAnimator(boolean z) {
        if (z == this.qF && this.qA != null) {
            return new AnimatorSet();
        }
        float f;
        this.qF = z;
        ActionMenuView actionMenuView = this.mMenuView;
        int height = actionMenuView.getHeight();
        float translationY = actionMenuView.getTranslationY();
        float f2 = 1.0f;
        float f3 = 0.0f;
        if (z) {
            float f4 = ((float) height) + translationY;
            f = translationY;
            translationY = f4;
            f3 = 1.0f;
            f2 = 0.0f;
        } else {
            f = ((float) height) + translationY;
        }
        Animator ofFloat = ObjectAnimator.ofFloat(this, "Alpha", new float[]{f2, f3});
        long j = 0;
        if (!DeviceHelper.FEATURE_WHOLE_ANIM) {
            ofFloat.setDuration(0);
        }
        if (this.mSplitActionBar) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mMenuView, "TranslationY", new float[]{translationY, f});
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this, "AnimationProgress", new float[]{0.0f, 1.0f});
            Animator animatorSet = new AnimatorSet();
            animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2, ofFloat3});
            animatorSet.addListener(this.qr.withFinalVisibility(z));
            animatorSet.setInterpolator(new CubicEaseOutInterpolator());
            if (DeviceHelper.FEATURE_WHOLE_ANIM) {
                j = 300;
            }
            animatorSet.setDuration(j);
            this.qA = animatorSet;
            return animatorSet;
        }
        ofFloat.addListener(this.qr.withFinalVisibility(z));
        return ofFloat;
    }

    public void setButton(int i, CharSequence charSequence) {
        initTitle();
        int i2 = 0;
        Button button;
        if (i == EditActionMode.BUTTON1) {
            if (this.qt != null) {
                button = this.qt;
                if (TextUtils.isEmpty(charSequence)) {
                    i2 = 8;
                }
                button.setVisibility(i2);
                this.qt.setText(charSequence);
            }
            this.qx.setTitle(charSequence);
        } else if (i == EditActionMode.BUTTON2) {
            if (this.qu != null) {
                button = this.qu;
                if (TextUtils.isEmpty(charSequence)) {
                    i2 = 8;
                }
                button.setVisibility(i2);
                this.qu.setText(charSequence);
            }
            this.qy.setTitle(charSequence);
        }
    }

    public void setButton(int i, CharSequence charSequence, int i2) {
        initTitle();
        int i3 = 0;
        Button button;
        if (i == EditActionMode.BUTTON1) {
            if (this.qt != null) {
                button = this.qt;
                if (TextUtils.isEmpty(charSequence) && i2 == 0) {
                    i3 = 8;
                }
                button.setVisibility(i3);
                this.qt.setText(charSequence);
                this.qt.setBackgroundResource(i2);
            }
            this.qx.setTitle(charSequence);
        } else if (i == EditActionMode.BUTTON2) {
            if (this.qu != null) {
                button = this.qu;
                if (TextUtils.isEmpty(charSequence) && i2 == 0) {
                    i3 = 8;
                }
                button.setVisibility(i3);
                this.qu.setText(charSequence);
                this.qu.setBackgroundResource(i2);
            }
            this.qy.setTitle(charSequence);
        }
        if (TextUtils.isEmpty(charSequence) && i2 != 0) {
            c(i, i2);
        }
    }

    private void c(int i, int i2) {
        Button button = i == EditActionMode.BUTTON1 ? this.qt : i == EditActionMode.BUTTON2 ? this.qu : null;
        if (button != null) {
            if (com.miui.internal.R.drawable.action_mode_title_button_cancel_light == i2 || com.miui.internal.R.drawable.action_mode_title_button_cancel_dark == i2) {
                button.setContentDescription(getResources().getString(com.miui.internal.R.string.cancel_description));
            } else if (com.miui.internal.R.drawable.action_mode_title_button_confirm_light == i2 || com.miui.internal.R.drawable.action_mode_title_button_confirm_dark == i2) {
                button.setContentDescription(getResources().getString(com.miui.internal.R.string.confirm_description));
            } else if (com.miui.internal.R.drawable.action_mode_title_button_select_all_light == i2 || com.miui.internal.R.drawable.action_mode_title_button_select_all_dark == i2) {
                button.setContentDescription(getResources().getString(com.miui.internal.R.string.select_all_description));
            } else if (com.miui.internal.R.drawable.action_mode_title_button_deselect_all_light == i2 || com.miui.internal.R.drawable.action_mode_title_button_deselect_all_dark == i2) {
                button.setContentDescription(getResources().getString(com.miui.internal.R.string.deselect_all_description));
            } else if (com.miui.internal.R.drawable.action_mode_title_button_delete_light == i2 || com.miui.internal.R.drawable.action_mode_title_button_delete_dark == i2) {
                button.setContentDescription(getResources().getString(com.miui.internal.R.string.delete_description));
            }
        }
    }

    public void animateToVisibility(boolean z) {
        cancelAnimation();
        if (z) {
            setVisibility(0);
            this.qb = true;
            return;
        }
        makeInOutAnimator(z).start();
    }

    public void notifyAnimationStart(boolean z) {
        if (this.qD != null) {
            for (ActionModeAnimationListener onStart : this.qD) {
                onStart.onStart(z);
            }
        }
    }

    public void notifyAnimationUpdate(boolean z, float f) {
        if (this.qD != null) {
            for (ActionModeAnimationListener onUpdate : this.qD) {
                onUpdate.onUpdate(z, f);
            }
        }
    }

    public void notifyAnimationEnd(boolean z) {
        if (this.qD != null) {
            for (ActionModeAnimationListener onStop : this.qD) {
                onStop.onStop(z);
            }
        }
    }

    public void addAnimationListener(ActionModeAnimationListener actionModeAnimationListener) {
        if (actionModeAnimationListener != null) {
            if (this.qD == null) {
                this.qD = new ArrayList();
            }
            this.qD.add(actionModeAnimationListener);
        }
    }

    public void removeAnimationListener(ActionModeAnimationListener actionModeAnimationListener) {
        if (!(actionModeAnimationListener == null || this.qD == null)) {
            this.qD.remove(actionModeAnimationListener);
        }
    }
}
