package com.miui.internal.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window.Callback;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.miui.internal.R;
import com.miui.internal.util.ContextHelper;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.view.menu.ContextMenuBuilder;
import com.miui.internal.view.menu.MenuBuilder;
import com.miui.internal.view.menu.MenuDialogHelper;
import com.miui.internal.view.menu.MenuPresenter;
import miui.app.ActionBar;
import miui.app.OnStatusBarChangeListener;
import miui.content.res.ThemeResources;
import miui.reflect.Method;
import miui.util.Log;
import miui.view.SearchActionMode;

public class ActionBarOverlayLayout extends FrameLayout {
    private static final String TAG = "ActionBarOverlayLayout";
    private ActionBar aR;
    private int aT;
    private View bg;
    protected ActionBarContainer mActionBarTop;
    protected ActionBarView mActionBarView;
    private ActionMode mActionMode;
    protected View mContentView;
    private ActionBarContextView pS;
    private Rect rA;
    private Rect rB;
    private Rect rC;
    private Rect rD;
    private ContextMenuBuilder rE;
    private MenuDialogHelper rF;
    private ContextMenuCallback rG;
    private OnStatusBarChangeListener rH;
    private ActionBarContainer re;
    private Callback rf;
    private boolean rg;
    private boolean rh;
    private boolean ri;
    private boolean rj;
    private Drawable rk;
    private Paint rl;
    private Bitmap rm;
    private Bitmap rn;
    private Bitmap ro;
    private Bitmap rp;
    private TypedValue rq;
    private TypedValue rr;
    private TypedValue rs;
    private TypedValue rt;
    private boolean ru;
    private Rect rv;
    private Rect rw;
    private Rect rz;

    private class ActionModeCallbackWrapper implements ActionMode.Callback {
        private ActionMode.Callback rI;

        public ActionModeCallbackWrapper(ActionMode.Callback callback) {
            this.rI = callback;
        }

        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.rI.onCreateActionMode(actionMode, menu);
        }

        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return this.rI.onPrepareActionMode(actionMode, menu);
        }

        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.rI.onActionItemClicked(actionMode, menuItem);
        }

        public void onDestroyActionMode(ActionMode actionMode) {
            this.rI.onDestroyActionMode(actionMode);
            if (ActionBarOverlayLayout.this.getCallback() != null) {
                ActionBarOverlayLayout.this.getCallback().onActionModeFinished(actionMode);
            }
            ActionBarOverlayLayout.this.mActionMode = null;
        }
    }

    public class ContentMaskAnimator implements AnimatorListener {
        private ObjectAnimator rK;
        private ObjectAnimator rL;
        private OnClickListener rM;

        private ContentMaskAnimator(OnClickListener onClickListener) {
            this.rM = onClickListener;
            this.rK = ObjectAnimator.ofFloat(ActionBarOverlayLayout.this.bg, "alpha", new float[]{0.0f, 1.0f});
            this.rK.addListener(this);
            this.rL = ObjectAnimator.ofFloat(ActionBarOverlayLayout.this.bg, "alpha", new float[]{1.0f, 0.0f});
            this.rL.addListener(this);
            if (!DeviceHelper.FEATURE_WHOLE_ANIM) {
                this.rK.setDuration(0);
                this.rL.setDuration(0);
            }
        }

        public Animator show() {
            return this.rK;
        }

        public Animator hide() {
            return this.rL;
        }

        public void onAnimationStart(Animator animator) {
            if (animator == this.rK) {
                ActionBarOverlayLayout.this.bg.setVisibility(0);
                ActionBarOverlayLayout.this.bg.bringToFront();
                ActionBarOverlayLayout.this.re.bringToFront();
                ActionBarOverlayLayout.this.bg.setOnClickListener(this.rM);
            }
        }

        public void onAnimationEnd(Animator animator) {
            if (ActionBarOverlayLayout.this.bg.getAlpha() == 0.0f) {
                ActionBarOverlayLayout.this.re.bringToFront();
                ActionBarOverlayLayout.this.bg.setOnClickListener(null);
                ActionBarOverlayLayout.this.bg.setVisibility(8);
            }
        }

        public void onAnimationCancel(Animator animator) {
            if (animator == this.rL) {
                ActionBarOverlayLayout.this.re.bringToFront();
                ActionBarOverlayLayout.this.bg.setOnClickListener(null);
            }
        }

        public void onAnimationRepeat(Animator animator) {
        }
    }

    private class ContextMenuCallback implements MenuBuilder.Callback, MenuPresenter.Callback {
        private MenuDialogHelper rN;

        private ContextMenuCallback() {
        }

        public void f(MenuBuilder menuBuilder) {
            if (getActivity() != null) {
                getActivity().onPanelClosed(6, menuBuilder.getRootMenu());
            }
        }

        Activity getActivity() {
            return ContextHelper.getActivityContextFromView(ActionBarOverlayLayout.this);
        }

        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            if (menuBuilder.getRootMenu() != menuBuilder) {
                f(menuBuilder);
            }
            if (z) {
                if (getActivity() != null) {
                    getActivity().onPanelClosed(6, menuBuilder);
                }
                ActionBarOverlayLayout.this.bn();
                if (this.rN != null) {
                    this.rN.dismiss();
                    this.rN = null;
                }
            }
        }

        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            if (menuBuilder == null) {
                return false;
            }
            menuBuilder.setCallback(this);
            this.rN = new MenuDialogHelper(menuBuilder);
            this.rN.show(null);
            return true;
        }

        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            if (getActivity() != null) {
                return getActivity().onMenuItemSelected(6, menuItem);
            }
            return false;
        }

        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }
    }

    private class SearchActionModeCallbackWrapper extends ActionModeCallbackWrapper implements SearchActionMode.Callback {
        public SearchActionModeCallbackWrapper(ActionMode.Callback callback) {
            super(callback);
        }
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.rh = true;
        this.rv = new Rect();
        this.rw = new Rect();
        this.rz = new Rect();
        this.rA = new Rect();
        this.rB = new Rect();
        this.rC = new Rect();
        this.rD = new Rect();
        this.rG = new ContextMenuCallback();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Window, i, 0);
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowFixedWidthMajor)) {
            this.rq = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowFixedWidthMajor, this.rq);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowFixedWidthMinor)) {
            this.rr = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowFixedWidthMinor, this.rr);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowFixedHeightMajor)) {
            this.rs = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowFixedHeightMajor, this.rs);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowFixedHeightMinor)) {
            this.rt = new TypedValue();
            obtainStyledAttributes.getValue(R.styleable.Window_windowFixedHeightMinor, this.rt);
        }
        this.rj = obtainStyledAttributes.getBoolean(miui.R.styleable.Window_contentAutoFitSystemWindow, false);
        if (this.rj) {
            this.rk = obtainStyledAttributes.getDrawable(miui.R.styleable.Window_contentHeaderBackground);
        }
        obtainStyledAttributes.recycle();
    }

    public boolean showContextMenuForChild(View view) {
        if (this.rE == null) {
            this.rE = new ContextMenuBuilder(getContext());
            this.rE.setCallback(this.rG);
        } else {
            this.rE.clear();
        }
        this.rF = this.rE.show(view, view.getWindowToken());
        if (this.rF == null) {
            return super.showContextMenuForChild(view);
        }
        this.rF.setPresenterCallback(this.rG);
        return true;
    }

    protected boolean fitSystemWindows(Rect rect) {
        int a;
        if (this.rH != null) {
            this.rH.onStatusBarHeightChange(rect.top);
        }
        this.rA.set(rect);
        int i;
        if (isRootSubDecor() || (bl() && this.rA.bottom == bm())) {
            i = 0;
        } else {
            this.rA.bottom = 0;
            i = 1;
        }
        if (this.mActionBarTop != null) {
            if (isTranslucentStatus()) {
                this.mActionBarTop.setPendingInsets(rect);
            }
            View view = this.mActionBarTop;
            Rect rect2 = this.rA;
            boolean z = isRootSubDecor() && !isTranslucentStatus();
            a = a(view, rect2, true, z, false, true);
        } else {
            a = 0;
        }
        if (this.re != null) {
            this.rD.set(this.rA);
            a |= a(this.re, this.rA, true, false, true, true);
        }
        if (!isRootSubDecor() && i == 0) {
            this.rA.bottom = 0;
        }
        a(this.rA, this.rv);
        if (!this.rw.equals(this.rv)) {
            this.rw.set(this.rv);
            a = 1;
        }
        if (a != 0) {
            requestLayout();
        }
        return isRootSubDecor();
    }

    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        windowInsets = super.onApplyWindowInsets(windowInsets);
        if (windowInsets.isConsumed() || !isRootSubDecor() || VERSION.SDK_INT < 28) {
            return windowInsets;
        }
        try {
            return (WindowInsets) Method.of(WindowInsets.class, "consumeDisplayCutout", "()Landroid/view/WindowInsets;").invokeObject(WindowInsets.class, windowInsets, new Object[0]);
        } catch (Exception e) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("onApplyWindowInsets, consumeDisplayCutout failed, ");
            stringBuilder.append(e);
            Log.w(str, stringBuilder.toString());
            return windowInsets;
        }
    }

    private void a(Rect rect, Rect rect2) {
        boolean isRootSubDecor = isRootSubDecor();
        boolean isTranslucentStatus = isTranslucentStatus();
        rect2.set(rect);
        if ((!isRootSubDecor || isTranslucentStatus) && !this.rj) {
            rect2.top = 0;
        }
    }

    private boolean a(View view, Rect rect, boolean z, boolean z2, boolean z3, boolean z4) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!z || layoutParams.leftMargin == rect.left) {
            z = false;
        } else {
            layoutParams.leftMargin = rect.left;
            z = true;
        }
        if (z2 && layoutParams.topMargin != rect.top) {
            layoutParams.topMargin = rect.top;
            z = true;
        }
        if (z4 && layoutParams.rightMargin != rect.right) {
            layoutParams.rightMargin = rect.right;
            z = true;
        }
        if (!z3 || layoutParams.bottomMargin == rect.bottom) {
            return z;
        }
        layoutParams.bottomMargin = rect.bottom;
        return true;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        requestFitSystemWindows();
    }

    public void requestFitSystemWindows() {
        super.requestFitSystemWindows();
        this.ri = true;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        bk();
    }

    protected void onMeasure(int i, int i2) {
        LayoutParams layoutParams;
        int i3;
        int i4;
        View childAt;
        int n = n(i);
        int o = o(i2);
        View view = this.mContentView;
        View view2 = this.bg;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < getChildCount(); i8++) {
            View childAt2 = getChildAt(i8);
            if (!(childAt2 == view || childAt2 == view2 || childAt2.getVisibility() == 8)) {
                View view3 = childAt2;
                measureChildWithMargins(childAt2, n, 0, o, 0);
                layoutParams = (LayoutParams) view3.getLayoutParams();
                int max = Math.max(i5, (view3.getMeasuredWidth() + layoutParams.leftMargin) + layoutParams.rightMargin);
                i6 = Math.max(i6, (view3.getMeasuredHeight() + layoutParams.topMargin) + layoutParams.bottomMargin);
                i5 = max;
                i7 = combineMeasuredStates(i7, view3.getMeasuredState());
            }
        }
        if (this.mActionBarTop == null || this.mActionBarTop.getVisibility() != 0) {
            i3 = 0;
        } else {
            i3 = this.mActionBarTop.getMeasuredHeight();
        }
        if (this.mActionBarView == null || !this.mActionBarView.isSplitActionBar()) {
            i4 = 0;
        } else {
            i4 = getBottomInset();
        }
        if (isTranslucentStatus() && this.rj) {
            if (this.rk != null) {
                this.rk.setBounds(0, 0, getRight() - getLeft(), this.rv.top);
            } else {
                ViewGroup viewGroup = (ViewGroup) findViewById(16908290);
                if (viewGroup != null && viewGroup.getChildCount() == 1) {
                    childAt = viewGroup.getChildAt(0);
                    if (i3 <= 0) {
                        childAt.setPadding(childAt.getPaddingLeft(), this.rA.top, childAt.getPaddingRight(), childAt.getPaddingBottom());
                    } else {
                        childAt.setPadding(childAt.getPaddingLeft(), 0, childAt.getPaddingRight(), childAt.getPaddingBottom());
                    }
                }
            }
        }
        this.rC.set(this.rA);
        this.rz.set(this.rv);
        if (isTranslucentStatus() && i3 > 0) {
            this.rz.top = 0;
        }
        Rect rect;
        if (this.rg) {
            if (!isTranslucentStatus()) {
                rect = this.rC;
                rect.top += i3;
            } else if (i3 > 0) {
                this.rC.top = i3;
            }
            rect = this.rC;
            rect.bottom += i4;
        } else {
            rect = this.rz;
            rect.top += i3;
            rect = this.rz;
            rect.bottom += i4;
        }
        if (bl()) {
            if (getResources().getConfiguration().orientation == 1) {
                this.rz.bottom = 0;
            } else {
                this.rz.right = 0;
                this.rz.left = 0;
                if (DeviceHelper.IS_TABLET) {
                    this.rz.bottom = 0;
                }
            }
        }
        a(view, this.rz, true, true, true, true);
        if (!this.rB.equals(this.rC) || this.ri) {
            this.rB.set(this.rC);
            super.fitSystemWindows(this.rC);
            this.ri = false;
        }
        measureChildWithMargins(view, n, 0, o, 0);
        layoutParams = (LayoutParams) view.getLayoutParams();
        i3 = Math.max(i5, (view.getMeasuredWidth() + layoutParams.leftMargin) + layoutParams.rightMargin);
        i5 = Math.max(i6, (view.getMeasuredHeight() + layoutParams.topMargin) + layoutParams.bottomMargin);
        int combineMeasuredStates = combineMeasuredStates(i7, view.getMeasuredState());
        if (view2 != null && view2.getVisibility() == 0) {
            childAt = view2;
            a(childAt, this.rD, true, false, true, true);
            measureChildWithMargins(childAt, n, 0, o, 0);
        }
        setMeasuredDimension(resolveSizeAndState(Math.max(i3 + (getPaddingLeft() + getPaddingRight()), getSuggestedMinimumWidth()), n, combineMeasuredStates), resolveSizeAndState(Math.max(i5 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight()), o, combineMeasuredStates << 16));
        this.ru = bj();
        if (this.ru && this.rl == null) {
            this.rl = new Paint();
            this.rl.setAntiAlias(true);
            this.rl.setXfermode(new PorterDuffXfermode(Mode.DST_OUT));
            Resources resources = getResources();
            this.rm = BitmapFactory.decodeResource(resources, R.drawable.floating_window_mask_1);
            this.rn = BitmapFactory.decodeResource(resources, R.drawable.floating_window_mask_2);
            this.ro = BitmapFactory.decodeResource(resources, R.drawable.floating_window_mask_3);
            this.rp = BitmapFactory.decodeResource(resources, R.drawable.floating_window_mask_4);
        }
    }

    private int n(int i) {
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        if (mode != Integer.MIN_VALUE) {
            return i;
        }
        int i2;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        int i3 = 0;
        if (displayMetrics.widthPixels < displayMetrics.heightPixels) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        TypedValue typedValue = i2 != 0 ? this.rr : this.rq;
        if (typedValue == null || typedValue.type == 0) {
            return i;
        }
        if (typedValue.type == 5) {
            i3 = (int) typedValue.getDimension(displayMetrics);
        } else if (typedValue.type == 6) {
            i3 = (int) typedValue.getFraction((float) displayMetrics.widthPixels, (float) displayMetrics.widthPixels);
        }
        if (i3 > 0) {
            return MeasureSpec.makeMeasureSpec(Math.min(i3, size), 1073741824);
        }
        return i;
    }

    private int o(int i) {
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        if (mode != Integer.MIN_VALUE) {
            return i;
        }
        int i2;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        int i3 = 0;
        if (displayMetrics.widthPixels < displayMetrics.heightPixels) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        TypedValue typedValue = i2 != 0 ? this.rs : this.rt;
        if (typedValue == null || typedValue.type == 0) {
            return i;
        }
        if (typedValue.type == 5) {
            i3 = (int) typedValue.getDimension(displayMetrics);
        } else if (typedValue.type == 6) {
            i3 = (int) typedValue.getFraction((float) displayMetrics.heightPixels, (float) displayMetrics.heightPixels);
        }
        if (i3 > 0) {
            return MeasureSpec.makeMeasureSpec(Math.min(i3, size), 1073741824);
        }
        return i;
    }

    protected void dispatchDraw(Canvas canvas) {
        if (this.rj && this.rk != null) {
            this.rk.setBounds(0, 0, getRight() - getLeft(), this.rv.top);
            this.rk.draw(canvas);
        }
        if (this.ru) {
            canvas.saveLayer(0.0f, 0.0f, (float) getWidth(), (float) getHeight(), null, 31);
            super.dispatchDraw(canvas);
            canvas.drawBitmap(this.rm, 0.0f, 0.0f, this.rl);
            canvas.drawBitmap(this.rn, (float) (getWidth() - this.rn.getWidth()), 0.0f, this.rl);
            canvas.drawBitmap(this.ro, 0.0f, (float) (getHeight() - this.ro.getHeight()), this.rl);
            canvas.drawBitmap(this.rp, (float) (getWidth() - this.rp.getWidth()), (float) (getHeight() - this.rp.getHeight()), this.rl);
            canvas.restore();
            return;
        }
        super.dispatchDraw(canvas);
    }

    private boolean bj() {
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        return (iArr[0] == 0 || iArr[1] == 0 || iArr[0] + getMeasuredWidth() == displayMetrics.widthPixels || iArr[1] + getMeasuredHeight() == displayMetrics.heightPixels) ? false : true;
    }

    protected int getBottomInset() {
        return this.re != null ? this.re.bc() : 0;
    }

    public ActionBar getActionBar() {
        return this.aR;
    }

    public void setActionBar(ActionBar actionBar) {
        this.aR = actionBar;
    }

    public void setOverlayMode(boolean z) {
        this.rg = z;
    }

    public View getContentView() {
        return this.mContentView;
    }

    public ContentMaskAnimator getContentMaskAnimator(OnClickListener onClickListener) {
        return new ContentMaskAnimator(onClickListener);
    }

    public ActionBarView getActionBarView() {
        return this.mActionBarView;
    }

    public Callback getCallback() {
        return this.rf;
    }

    public void setCallback(Callback callback) {
        this.rf = callback;
    }

    public void setTranslucentStatus(int i) {
        if (this.aT != i) {
            this.aT = i;
            requestFitSystemWindows();
        }
    }

    private void bk() {
        if (this.mContentView == null) {
            this.mContentView = findViewById(16908290);
            this.bg = findViewById(R.id.content_mask);
            if (DeviceHelper.IS_OLED && this.bg != null) {
                this.bg.setBackground(getContext().getResources().getDrawable(R.drawable.window_content_mask_oled, getContext().getTheme()));
            }
            this.mActionBarTop = (ActionBarContainer) findViewById(R.id.action_bar_container);
            if (this.mActionBarTop != null) {
                this.pS = (ActionBarContextView) this.mActionBarTop.findViewById(R.id.action_context_bar);
                this.mActionBarView = (ActionBarView) this.mActionBarTop.findViewById(R.id.action_bar);
            }
            this.re = (ActionBarContainer) findViewById(R.id.split_action_bar);
        }
    }

    public boolean isRootSubDecor() {
        return this.rh;
    }

    public boolean isTranslucentStatus() {
        int windowSystemUiVisibility = getWindowSystemUiVisibility();
        boolean z = (windowSystemUiVisibility & 256) != 0;
        boolean z2 = (windowSystemUiVisibility & 1024) != 0;
        boolean z3 = this.aT != 0;
        if ((z && z2) || z3) {
            return true;
        }
        return false;
    }

    private boolean bl() {
        return (getWindowSystemUiVisibility() & 512) != 0;
    }

    private int bm() {
        Resources resources = getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", ThemeResources.FRAMEWORK_PACKAGE);
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public void setRootSubDecor(boolean z) {
        this.rh = z;
    }

    /* JADX WARNING: Missing block: B:15:0x0033, code:
            if (r2.mActionBarView.hideOverflowMenu() != false) goto L_0x0037;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z = true;
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        if (a(keyEvent)) {
            if (this.mActionMode != null) {
                if (this.pS == null || !this.pS.hideOverflowMenu()) {
                    this.mActionMode.finish();
                    this.mActionMode = null;
                }
            } else if (this.mActionBarView != null) {
            }
            return z;
        }
        z = false;
        return z;
    }

    private boolean a(KeyEvent keyEvent) {
        return keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1;
    }

    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return startActionMode(view, callback);
    }

    public ActionMode startActionMode(ActionMode.Callback callback) {
        if (this.mActionMode != null) {
            this.mActionMode.finish();
        }
        ActionMode actionMode = null;
        this.mActionMode = null;
        if (getCallback() != null) {
            actionMode = getCallback().onWindowStartingActionMode(b(callback));
        }
        if (actionMode != null) {
            this.mActionMode = actionMode;
        }
        if (!(this.mActionMode == null || getCallback() == null)) {
            getCallback().onActionModeStarted(this.mActionMode);
        }
        return this.mActionMode;
    }

    public ActionMode startActionMode(View view, ActionMode.Callback callback) {
        if (!(view instanceof ActionBarOverlayLayout)) {
            return startActionMode(callback);
        }
        if (this.mActionMode != null) {
            this.mActionMode.finish();
        }
        this.mActionMode = view.startActionMode(b(callback));
        return this.mActionMode;
    }

    private ActionModeCallbackWrapper b(ActionMode.Callback callback) {
        if (callback instanceof SearchActionMode.Callback) {
            return new SearchActionModeCallbackWrapper(callback);
        }
        return new ActionModeCallbackWrapper(callback);
    }

    private void bn() {
        if (this.rF != null) {
            this.rF.dismiss();
            this.rE = null;
        }
    }

    public void setOnStatusBarChangeListener(OnStatusBarChangeListener onStatusBarChangeListener) {
        this.rH = onStatusBarChangeListener;
    }
}
