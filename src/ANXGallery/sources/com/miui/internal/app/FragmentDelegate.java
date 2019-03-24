package com.miui.internal.app;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window.Callback;
import com.miui.internal.view.SimpleWindowCallback;
import com.miui.internal.view.menu.MenuBuilder;
import com.miui.internal.widget.ActionBarContainer;
import com.miui.internal.widget.ActionBarContextView;
import com.miui.internal.widget.ActionBarOverlayLayout;
import com.miui.internal.widget.ActionBarView;
import miui.R;
import miui.app.ActionBar;
import miui.app.IFragment;
import miui.app.OnStatusBarChangeListener;
import miui.util.AttributeResolver;

public class FragmentDelegate extends ActionBarDelegateImpl {
    public static final int MENU_INVALIDATE = 1;
    private static final int df = 16;
    private Context ba;
    private final Callback cO = new SimpleWindowCallback() {
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return FragmentDelegate.this.onWindowStartingActionMode(callback);
        }

        public void onActionModeStarted(ActionMode actionMode) {
            ((IFragment) FragmentDelegate.this.dg).onActionModeStarted(actionMode);
        }

        public void onActionModeFinished(ActionMode actionMode) {
            ((IFragment) FragmentDelegate.this.dg).onActionModeFinished(actionMode);
        }

        public boolean onMenuItemSelected(int i, MenuItem menuItem) {
            return FragmentDelegate.this.onMenuItemSelected(i, menuItem);
        }
    };
    private final Runnable cj = new Runnable() {
        public void run() {
            int i = 1;
            if ((FragmentDelegate.this.dj & 1) == 1) {
                FragmentDelegate.this.mMenu = null;
            }
            if (FragmentDelegate.this.mMenu == null) {
                FragmentDelegate.this.mMenu = FragmentDelegate.this.createMenu();
                i = FragmentDelegate.this.onCreatePanelMenu(0, FragmentDelegate.this.mMenu);
            }
            if (i != 0) {
                i = FragmentDelegate.this.onPreparePanel(0, null, FragmentDelegate.this.mMenu);
            }
            if (i != 0) {
                FragmentDelegate.this.setMenu(FragmentDelegate.this.mMenu);
            } else {
                FragmentDelegate.this.setMenu(null);
                FragmentDelegate.this.mMenu = null;
            }
            FragmentDelegate.a(FragmentDelegate.this, -18);
        }
    };
    private Fragment dg;
    private View dh;
    private int di;
    private byte dj;
    private MenuBuilder mMenu;

    public FragmentDelegate(Fragment fragment) {
        super(fragment.getActivity());
        this.dg = fragment;
    }

    public ActionBar createActionBar() {
        return new ActionBarImpl(this.dg);
    }

    public View onCreateView(ViewGroup viewGroup, Bundle bundle) {
        TypedArray obtainStyledAttributes = getThemedContext().obtainStyledAttributes(R.styleable.Window);
        if (obtainStyledAttributes.hasValue(R.styleable.Window_windowActionBar)) {
            if (obtainStyledAttributes.getBoolean(R.styleable.Window_windowActionBar, false)) {
                requestWindowFeature(8);
            }
            if (obtainStyledAttributes.getBoolean(R.styleable.Window_windowActionBarOverlay, false)) {
                requestWindowFeature(9);
            }
            setTranslucentStatus(obtainStyledAttributes.getInt(com.miui.internal.R.styleable.Window_windowTranslucentStatus, 0));
            setImmersionMenuEnabled(obtainStyledAttributes.getBoolean(com.miui.internal.R.styleable.Window_immersionMenuEnabled, false));
            this.mImmersionLayoutResourceId = obtainStyledAttributes.getResourceId(com.miui.internal.R.styleable.Window_immersionMenuLayout, 0);
            obtainStyledAttributes.recycle();
            LayoutInflater from = LayoutInflater.from(getThemedContext());
            if (this.aP) {
                a(getThemedContext(), viewGroup, from);
                ViewParent viewParent = (ViewGroup) this.dh.findViewById(16908290);
                View onInflateView = ((IFragment) this.dg).onInflateView(from, viewParent, bundle);
                if (!(onInflateView == null || onInflateView.getParent() == viewParent)) {
                    if (onInflateView.getParent() != null) {
                        ((ViewGroup) onInflateView.getParent()).removeView(onInflateView);
                    }
                    viewParent.removeAllViews();
                    viewParent.addView(onInflateView);
                }
            } else {
                this.dh = ((IFragment) this.dg).onInflateView(from, viewGroup, bundle);
            }
            return this.dh;
        }
        obtainStyledAttributes.recycle();
        throw new IllegalStateException("You need to use a miui theme (or descendant) with this fragment.");
    }

    final void a(Context context, ViewGroup viewGroup, LayoutInflater layoutInflater) {
        if (!this.mSubDecorInstalled) {
            boolean z;
            this.mSubDecorInstalled = true;
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) layoutInflater.inflate(com.miui.internal.R.layout.screen_action_bar, viewGroup, false);
            actionBarOverlayLayout.setCallback(this.cO);
            actionBarOverlayLayout.setRootSubDecor(false);
            actionBarOverlayLayout.setOverlayMode(this.aQ);
            actionBarOverlayLayout.setTranslucentStatus(getTranslucentStatus());
            if (this.di != 0) {
                actionBarOverlayLayout.setBackground(AttributeResolver.resolveDrawable(context, 16842836));
            }
            this.mActionBarView = (ActionBarView) actionBarOverlayLayout.findViewById(com.miui.internal.R.id.action_bar);
            this.mActionBarView.setWindowCallback(this.cO);
            if (this.mFeatureProgress) {
                this.mActionBarView.initProgress();
            }
            if (this.mFeatureIndeterminateProgress) {
                this.mActionBarView.initIndeterminateProgress();
            }
            if (isImmersionMenuEnabled()) {
                this.mActionBarView.initImmersionMore(this.mImmersionLayoutResourceId, this);
            }
            boolean equals = "splitActionBarWhenNarrow".equals(getUiOptionsFromMetadata());
            if (equals) {
                z = context.getResources().getBoolean(com.miui.internal.R.bool.abc_split_action_bar_is_narrow);
            } else {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(R.styleable.Window);
                boolean z2 = obtainStyledAttributes.getBoolean(R.styleable.Window_windowSplitActionBar, false);
                obtainStyledAttributes.recycle();
                z = z2;
            }
            ActionBarContainer actionBarContainer = (ActionBarContainer) actionBarOverlayLayout.findViewById(com.miui.internal.R.id.split_action_bar);
            if (actionBarContainer != null) {
                this.mActionBarView.setSplitView(actionBarContainer);
                this.mActionBarView.setSplitActionBar(z);
                this.mActionBarView.setSplitWhenNarrow(equals);
                ActionBarContextView actionBarContextView = (ActionBarContextView) actionBarOverlayLayout.findViewById(com.miui.internal.R.id.action_context_bar);
                actionBarContainer.setActionBarContextView(actionBarContextView);
                actionBarContextView.setSplitView(actionBarContainer);
                actionBarContextView.setSplitActionBar(z);
                actionBarContextView.setSplitWhenNarrow(equals);
            }
            updateOptionsMenu(1);
            invalidateOptionsMenu();
            this.dh = actionBarOverlayLayout;
        } else if (this.dh.getParent() != null && (this.dh.getParent() instanceof ViewGroup)) {
            ViewGroup viewGroup2 = (ViewGroup) this.dh.getParent();
            if (viewGroup2.getChildCount() == 0) {
                viewGroup2.endViewTransition(this.dh);
            }
        }
    }

    public View getView() {
        return this.dh;
    }

    public View onCreatePanelView(int i) {
        return null;
    }

    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i == 0) {
            return ((IFragment) this.dg).onCreatePanelMenu(i, menu);
        }
        return false;
    }

    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (i == 0) {
            return this.dg.onOptionsItemSelected(menuItem);
        }
        return false;
    }

    public boolean onPreparePanel(int i, View view, Menu menu) {
        if (i != 0) {
            return false;
        }
        ((IFragment) this.dg).onPreparePanel(i, null, menu);
        return true;
    }

    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        return onMenuItemSelected(0, menuItem);
    }

    public void invalidateOptionsMenu() {
        Activity activity = this.dg.getActivity();
        if (activity != null && (this.dj & 16) == 0) {
            this.dj = (byte) (this.dj | 16);
            activity.getWindow().getDecorView().post(this.cj);
        }
    }

    public void updateOptionsMenu(int i) {
        this.dj = (byte) ((i & 1) | this.dj);
    }

    public ActionMode startActionMode(ActionMode.Callback callback) {
        return this.dh.startActionMode(callback);
    }

    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        if (getActionBar() != null) {
            return ((ActionBarImpl) getActionBar()).startActionMode(callback);
        }
        return null;
    }

    public void setExtraThemeRes(int i) {
        this.di = i;
    }

    public Context getThemedContext() {
        if (this.ba == null) {
            this.ba = this.mActivity;
            if (this.di != 0) {
                this.ba = new ContextThemeWrapper(this.ba, this.di);
            }
        }
        return this.ba;
    }

    protected boolean onCreateImmersionMenu(MenuBuilder menuBuilder) {
        if (this.dg instanceof IFragment) {
            return ((IFragment) this.dg).onCreateOptionsMenu(menuBuilder);
        }
        return false;
    }

    protected boolean onPrepareImmersionMenu(MenuBuilder menuBuilder) {
        if (!(this.dg instanceof IFragment)) {
            return false;
        }
        this.dg.onPrepareOptionsMenu(menuBuilder);
        return true;
    }

    public void setOnStatusBarChangeListener(OnStatusBarChangeListener onStatusBarChangeListener) {
        if (this.dh != null && (this.dh instanceof ActionBarOverlayLayout)) {
            ((ActionBarOverlayLayout) this.dh).setOnStatusBarChangeListener(onStatusBarChangeListener);
        }
    }
}
