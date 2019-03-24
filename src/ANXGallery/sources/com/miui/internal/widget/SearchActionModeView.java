package com.miui.internal.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Looper;
import android.os.MessageQueue;
import android.os.MessageQueue.IdleHandler;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import com.miui.internal.R;
import com.miui.internal.app.ActionBarImpl;
import com.miui.internal.util.DeviceHelper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import miui.util.ActionBarUtils;
import miui.view.ActionModeAnimationListener;
import miui.view.ViewPager;
import miui.view.animation.CubicEaseOutInterpolator;
import miui.view.inputmethod.InputMethodHelper;

public class SearchActionModeView extends FrameLayout implements AnimatorListener, IdleHandler, TextWatcher, OnClickListener, ActionModeView {
    private ActionBarContainer ci;
    private ActionBarView mActionBarView;
    private List<ActionModeAnimationListener> qD;
    private float qE;
    private boolean qF;
    private boolean qb;
    private View vI;
    private EditText vJ;
    private WeakReference<View> vK;
    private WeakReference<View> vL;
    private WeakReference<View> vM;
    private int[] vN = new int[2];
    private int vO;
    private int vP;
    private int vQ;
    private int vR;
    private int vS;
    private int vT;
    private int vU;
    private int vV;
    private int vW;
    private int vX;
    private int vY;
    private boolean vZ;
    private ObjectAnimator wa;
    private ActionBarContainer wb;
    private View wc;
    private boolean wd;
    private int we = Integer.MAX_VALUE;
    private int wf;

    class ActionBarAnimationProcessor implements ActionModeAnimationListener {
        ActionBarAnimationProcessor() {
        }

        public void onStart(boolean z) {
        }

        public void onUpdate(boolean z, float f) {
        }

        public void onStop(boolean z) {
            if (z) {
                View tabContainer = SearchActionModeView.this.getActionBarContainer().getTabContainer();
                if (tabContainer != null) {
                    tabContainer.setVisibility(8);
                }
            }
        }
    }

    class ContentViewAnimationProcessor implements ActionModeAnimationListener {
        ViewPager bL;

        ContentViewAnimationProcessor() {
        }

        public void onStart(boolean z) {
            if (z) {
                if (SearchActionModeView.this.we == Integer.MAX_VALUE) {
                    SearchActionModeView.this.getActionBarContainer().getLocationInWindow(SearchActionModeView.this.vN);
                    SearchActionModeView.this.we = SearchActionModeView.this.vN[1];
                }
                SearchActionModeView.this.vO = ((View) SearchActionModeView.this.vK.get()).getHeight() + SearchActionModeView.this.vT;
                SearchActionModeView.this.vP = -SearchActionModeView.this.vO;
                ((View) SearchActionModeView.this.vK.get()).getLocationInWindow(SearchActionModeView.this.vN);
                SearchActionModeView.this.vQ = SearchActionModeView.this.vN[1] - SearchActionModeView.this.we;
                SearchActionModeView.this.vR = SearchActionModeView.this.vP;
            } else {
                SearchActionModeView.this.setContentViewTranslation(SearchActionModeView.this.vT);
                SearchActionModeView.this.setContentViewPadding(0, 0);
            }
            this.bL = SearchActionModeView.this.getViewPager();
            if (this.bL != null) {
                this.bL.setBottomMarginProgress(z ? 0.0f : 1.0f);
            }
        }

        public void onUpdate(boolean z, float f) {
            if (!z) {
                f = 1.0f - f;
            }
            if (SearchActionModeView.this.vT > 0) {
                SearchActionModeView.this.setContentViewTranslation((int) (((float) SearchActionModeView.this.vT) * f));
            }
            ((View) SearchActionModeView.this.vK.get()).setAlpha(1.0f - f);
            ((View) SearchActionModeView.this.vL.get()).setTranslationY(((float) SearchActionModeView.this.vQ) + (((float) SearchActionModeView.this.vR) * f));
            SearchActionModeView.this.setTranslationY(((float) SearchActionModeView.this.vO) + (f * ((float) SearchActionModeView.this.vP)));
        }

        public void onStop(boolean z) {
            float f = 1.0f;
            if (!z) {
                ((View) SearchActionModeView.this.vL.get()).setTranslationY(0.0f);
                ((View) SearchActionModeView.this.vK.get()).setAlpha(1.0f);
            }
            if (SearchActionModeView.this.vK.get() != null) {
                ((View) SearchActionModeView.this.vK.get()).setEnabled(z ^ 1);
            }
            if (SearchActionModeView.this.vT > 0) {
                SearchActionModeView.this.setContentViewTranslation(0);
                SearchActionModeView.this.setContentViewPadding(z ? SearchActionModeView.this.vT : 0, 0);
            }
            if (this.bL != null) {
                ViewPager viewPager = this.bL;
                if (!z) {
                    f = 0.0f;
                }
                viewPager.setBottomMarginProgress(f);
            }
            this.bL = null;
        }
    }

    class DimViewAnimationProcessor implements ActionModeAnimationListener {
        DimViewAnimationProcessor() {
        }

        public void onStart(boolean z) {
            if (z) {
                SearchActionModeView.this.wc.setOnClickListener(SearchActionModeView.this);
                SearchActionModeView.this.wc.setVisibility(0);
                SearchActionModeView.this.wc.setAlpha(0.0f);
            }
        }

        public void onUpdate(boolean z, float f) {
            if (!z) {
                f = 1.0f - f;
            }
            SearchActionModeView.this.wc.setAlpha(f);
            if (SearchActionModeView.this.bV()) {
                SearchActionModeView.this.wc.setTranslationY(((View) SearchActionModeView.this.vL.get()).getTranslationY());
            }
        }

        public void onStop(boolean z) {
            if (!z) {
                SearchActionModeView.this.wc.setVisibility(8);
                SearchActionModeView.this.wc.setAlpha(1.0f);
                SearchActionModeView.this.wc.setTranslationY(0.0f);
            } else if (SearchActionModeView.this.vJ.getText().length() > 0) {
                SearchActionModeView.this.wc.setVisibility(8);
            }
        }
    }

    class SearchViewAnimationProcessor implements ActionModeAnimationListener {
        SearchViewAnimationProcessor() {
        }

        public void onStart(boolean z) {
            if (z) {
                SearchActionModeView.this.vJ.getText().clear();
                SearchActionModeView.this.vJ.addTextChangedListener(SearchActionModeView.this);
            }
        }

        public void onUpdate(boolean z, float f) {
            if (!z) {
                f = 1.0f - f;
            }
            if (SearchActionModeView.this.vT > 0) {
                SearchActionModeView.this.setPadding(SearchActionModeView.this.getPaddingLeft(), (int) (((float) SearchActionModeView.this.vS) + (f * ((float) SearchActionModeView.this.vT))), SearchActionModeView.this.getPaddingRight(), SearchActionModeView.this.getPaddingBottom());
            }
        }

        public void onStop(boolean z) {
            if (!z) {
                SearchActionModeView.this.vJ.removeTextChangedListener(SearchActionModeView.this);
            }
        }
    }

    class SplitActionBarAnimationProcessor implements ActionModeAnimationListener {
        SplitActionBarAnimationProcessor() {
        }

        public void onStart(boolean z) {
        }

        public void onUpdate(boolean z, float f) {
            if (!z) {
                f = 1.0f - f;
            }
            View splitActionBarContainer = SearchActionModeView.this.getSplitActionBarContainer();
            if (splitActionBarContainer != null) {
                splitActionBarContainer.setTranslationY(f * ((float) splitActionBarContainer.getHeight()));
            }
        }

        public void onStop(boolean z) {
        }
    }

    public SearchActionModeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setAlpha(0.0f);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public void animateToVisibility(boolean z) {
        if (this.qF == z) {
            this.qb = false;
            return;
        }
        pollViews();
        this.qF = z;
        this.wa = makeAnimation();
        createAnimationListeners();
        if (z) {
            setOverlayMode(true);
        }
        notifyAnimationStart(z);
        if (bV()) {
            requestLayout();
            this.qb = true;
        } else {
            this.wa.start();
        }
        if (!this.qF) {
            ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.vJ.getWindowToken(), 0);
        }
    }

    public void setOnBackClickListener(OnClickListener onClickListener) {
        this.vI.setOnClickListener(onClickListener);
    }

    public void setAnchorView(View view) {
        if (view != null) {
            this.vK = new WeakReference(view);
        }
    }

    public void setAnimateView(View view) {
        if (view != null) {
            this.vL = new WeakReference(view);
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

    public void setResultView(View view) {
        if (view != null) {
            this.vM = new WeakReference(view);
            LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof MarginLayoutParams) {
                MarginLayoutParams marginLayoutParams = (MarginLayoutParams) layoutParams;
                this.vV = marginLayoutParams.topMargin;
                this.vW = marginLayoutParams.bottomMargin;
                this.vZ = true;
            }
        }
    }

    public EditText getSearchInput() {
        return this.vJ;
    }

    public void closeMode() {
        if (this.wa != null) {
            this.wa.cancel();
        }
    }

    public void killMode() {
        finishAnimation();
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this);
        }
        this.ci = null;
        this.mActionBarView = null;
        if (this.qD != null) {
            this.qD.clear();
            this.qD = null;
        }
        this.wb = null;
    }

    public float getAnimationProgress() {
        return this.qE;
    }

    public void setAnimationProgress(float f) {
        this.qE = f;
        notifyAnimationUpdate(this.qF, this.qE);
    }

    protected void finishAnimation() {
        if (this.wa != null) {
            this.wa.cancel();
            this.wa = null;
        }
    }

    protected ObjectAnimator makeAnimation() {
        if (this.wa != null) {
            this.wa.cancel();
            this.wa = null;
            bT();
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "AnimationProgress", new float[]{0.0f, 1.0f});
        ofFloat.addListener(this);
        ofFloat.setDuration(DeviceHelper.FEATURE_WHOLE_ANIM ? 300 : 0);
        ofFloat.setInterpolator(new CubicEaseOutInterpolator());
        return ofFloat;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.vI = findViewById(R.id.search_btn_cancel);
        this.vJ = (EditText) findViewById(16908297);
        this.vS = getPaddingTop();
        View contentView = getContentView();
        if (contentView != null) {
            this.vX = contentView.getPaddingTop();
            this.vY = contentView.getPaddingBottom();
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.qb) {
            if (this.qF && bV()) {
                ((View) this.vL.get()).setTranslationY((float) this.vQ);
            }
            bS();
            this.qb = false;
        }
    }

    protected ActionBarContainer getActionBarContainer() {
        if (this.ci == null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) ActionBarUtils.getActionBarOverlayLayout(this);
            if (actionBarOverlayLayout != null) {
                for (int i = 0; i < actionBarOverlayLayout.getChildCount(); i++) {
                    View childAt = actionBarOverlayLayout.getChildAt(i);
                    if (childAt.getId() == R.id.action_bar_container && (childAt instanceof ActionBarContainer)) {
                        this.ci = (ActionBarContainer) childAt;
                        break;
                    }
                }
            }
            if (this.ci != null) {
                this.wf = ((MarginLayoutParams) this.ci.getLayoutParams()).topMargin;
                if (this.wf > 0) {
                    setPadding(getPaddingLeft(), this.vS + this.wf, getPaddingRight(), getPaddingBottom());
                }
            }
        }
        return this.ci;
    }

    protected ActionBarContainer getSplitActionBarContainer() {
        if (this.wb == null) {
            ViewGroup actionBarOverlayLayout = ActionBarUtils.getActionBarOverlayLayout(this);
            if (actionBarOverlayLayout != null) {
                for (int i = 0; i < actionBarOverlayLayout.getChildCount(); i++) {
                    View childAt = actionBarOverlayLayout.getChildAt(i);
                    if (childAt.getId() == R.id.split_action_bar && (childAt instanceof ActionBarContainer)) {
                        this.wb = (ActionBarContainer) childAt;
                        break;
                    }
                }
            }
        }
        return this.wb;
    }

    protected ActionBarView getActionBarView() {
        if (this.mActionBarView == null) {
            ViewGroup actionBarOverlayLayout = ActionBarUtils.getActionBarOverlayLayout(this);
            if (actionBarOverlayLayout != null) {
                this.mActionBarView = (ActionBarView) actionBarOverlayLayout.findViewById(R.id.action_bar);
            }
        }
        return this.mActionBarView;
    }

    protected View getDimView() {
        if (this.wc == null) {
            ViewGroup actionBarOverlayLayout = ActionBarUtils.getActionBarOverlayLayout(this);
            if (actionBarOverlayLayout != null) {
                this.wc = actionBarOverlayLayout.findViewById(R.id.content_mask);
            }
        }
        return this.wc;
    }

    protected void pollViews() {
        getActionBarView();
        getActionBarContainer();
        getSplitActionBarContainer();
    }

    protected void setOverlayMode(boolean z) {
        ((ActionBarOverlayLayout) ActionBarUtils.getActionBarOverlayLayout(this)).setOverlayMode(z);
    }

    protected ViewPager getViewPager() {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) ActionBarUtils.getActionBarOverlayLayout(this);
        if (((ActionBarImpl) actionBarOverlayLayout.getActionBar()).isFragmentViewPagerMode()) {
            return (ViewPager) actionBarOverlayLayout.findViewById(R.id.view_pager);
        }
        return null;
    }

    protected void setResultViewMargin(boolean z) {
        if (this.vM != null && this.vZ) {
            int height;
            int i;
            if (z) {
                height = (getHeight() - this.vT) - this.wf;
                i = 0;
            } else {
                height = this.vV;
                i = this.vW;
            }
            MarginLayoutParams marginLayoutParams = (MarginLayoutParams) ((View) this.vM.get()).getLayoutParams();
            marginLayoutParams.topMargin = height;
            marginLayoutParams.bottomMargin = i;
        }
    }

    public void onAnimationStart(Animator animator) {
        this.wd = false;
        if (this.qF) {
            setAlpha(1.0f);
            return;
        }
        View tabContainer = getActionBarContainer().getTabContainer();
        if (tabContainer != null) {
            tabContainer.setVisibility(0);
        }
    }

    public void onAnimationEnd(Animator animator) {
        if (!this.wd) {
            this.wa = null;
            notifyAnimationEnd(this.qF);
            if (this.qF) {
                InputMethodHelper.getInstance().showKeyBoard(this.vJ);
            } else {
                InputMethodHelper.getInstance().hideKeyBoard(this.vJ);
            }
            if (DeviceHelper.FEATURE_WHOLE_ANIM) {
                setResultViewMargin(this.qF);
            } else {
                post(new Runnable() {
                    public void run() {
                        SearchActionModeView.this.setResultViewMargin(SearchActionModeView.this.qF);
                    }
                });
            }
            setContentViewTranslation(0);
            setContentViewPadding(this.qF ? this.vT : 0, 0);
            if (!this.qF) {
                setOverlayMode(false);
                setAlpha(0.0f);
                killMode();
            }
        }
    }

    public void onAnimationCancel(Animator animator) {
        this.wd = true;
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void initForMode(ActionMode actionMode) {
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.vU = charSequence == null ? 0 : charSequence.length();
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        int i;
        if (editable == null) {
            i = 0;
        } else {
            i = editable.length();
        }
        if (i == 0) {
            if (this.wc != null) {
                this.wc.setVisibility(0);
            }
            InputMethodHelper.getInstance().showKeyBoard(this.vJ);
        } else if (this.vU == 0 && this.wc != null) {
            this.wc.setVisibility(8);
        }
    }

    public void onClick(View view) {
        if (view.getId() == R.id.content_mask) {
            this.vI.performClick();
        }
    }

    protected void setContentViewTranslation(int i) {
        View contentView = getContentView();
        if (contentView != null) {
            contentView.setTranslationY((float) i);
        }
    }

    protected void setContentViewPadding(int i, int i2) {
        View contentView = getContentView();
        if (contentView != null) {
            contentView.setPadding(contentView.getPaddingLeft(), i + this.vX, contentView.getPaddingRight(), i2 + this.vY);
        }
    }

    private View getContentView() {
        ViewGroup actionBarOverlayLayout = ActionBarUtils.getActionBarOverlayLayout(this);
        if (actionBarOverlayLayout != null) {
            return actionBarOverlayLayout.findViewById(16908290);
        }
        return null;
    }

    public boolean queueIdle() {
        this.wa.start();
        return false;
    }

    private void bS() {
        bT();
        bU().addIdleHandler(this);
    }

    private void bT() {
        bU().removeIdleHandler(this);
    }

    private MessageQueue bU() {
        return Looper.myQueue();
    }

    protected void createAnimationListeners() {
        if (this.qD == null) {
            this.qD = new ArrayList();
        }
        this.qD.add(new SearchViewAnimationProcessor());
        if (bV()) {
            this.qD.add(new ContentViewAnimationProcessor());
            this.qD.add(new ActionBarAnimationProcessor());
            this.qD.add(new SplitActionBarAnimationProcessor());
        }
        if (getDimView() != null) {
            this.qD.add(new DimViewAnimationProcessor());
        }
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

    public void setStatusBarPaddingTop(int i) {
        this.vT = i;
    }

    private boolean bV() {
        return (this.vK == null || this.vL == null) ? false : true;
    }
}
