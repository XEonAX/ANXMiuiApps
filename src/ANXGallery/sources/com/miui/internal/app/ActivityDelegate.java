package com.miui.internal.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.miui.internal.R;
import com.miui.internal.variable.Android_View_Window_class.Factory;
import com.miui.internal.view.menu.MenuBuilder;
import com.miui.internal.view.menu.MenuBuilder.Callback;
import com.miui.internal.view.menu.MenuPresenter;
import com.miui.internal.widget.ActionBarContainer;
import com.miui.internal.widget.ActionBarContextView;
import com.miui.internal.widget.ActionBarOverlayLayout;
import com.miui.internal.widget.ActionBarView;
import miui.app.ActionBar;
import miui.app.OnStatusBarChangeListener;
import miui.content.res.ThemeResources;
import miui.extension.ExtensionManager;
import miui.extension.target.ActivityTarget;
import miui.reflect.Method;
import miui.util.AppConstants;
import miui.util.AttributeResolver;

public class ActivityDelegate extends ActionBarDelegateImpl implements Callback, MenuPresenter.Callback {
    private static final String cc = "miui:ActionBar";
    private static final Method cd = Method.of(Activity.class, "onCreatePanelMenu", "(ILandroid/view/Menu;)Z");
    private static final Method ce = Method.of(Activity.class, "onPreparePanel", "(ILandroid/view/View;Landroid/view/Menu;)Z");
    private static final Method cf = Method.of(Activity.class, "onMenuItemSelected", "(ILandroid/view/MenuItem;)Z");
    private final Class<? extends Activity> cg;
    private ActionBarOverlayLayout ch;
    private ActionBarContainer ci;
    private final Runnable cj = new Runnable() {
        public void run() {
            Menu createMenu = ActivityDelegate.this.createMenu();
            if (!ActivityDelegate.this.isImmersionMenuEnabled() && ActivityDelegate.this.a(0, createMenu) && ActivityDelegate.this.a(0, null, createMenu)) {
                ActivityDelegate.this.setMenu(createMenu);
            } else {
                ActivityDelegate.this.setMenu(null);
            }
        }
    };

    public ActivityDelegate(Activity activity, Class<? extends Activity> cls) {
        super(activity);
        this.cg = cls;
    }

    public static int getDecorViewLayoutRes(Window window) {
        int i;
        Context context = window.getContext();
        if (!AttributeResolver.resolveBoolean(context, R.attr.windowActionBar, false)) {
            i = R.layout.screen_simple;
        } else if (AttributeResolver.resolveBoolean(context, R.attr.windowActionBarMovable, false)) {
            i = R.layout.screen_action_bar_movable;
        } else {
            i = R.layout.screen_action_bar;
        }
        int resolve = AttributeResolver.resolve(context, miui.R.attr.startingWindowOverlay);
        if (resolve > 0 && s() && b(context)) {
            i = resolve;
        }
        if (!window.isFloating() && (window.getCallback() instanceof Dialog)) {
            Factory.getInstance().get().setTranslucentStatus(window, AttributeResolver.resolveInt(context, R.attr.windowTranslucentStatus, 0));
        }
        return i;
    }

    private static boolean s() {
        return ThemeResources.FRAMEWORK_PACKAGE.equals(AppConstants.getCurrentApplication().getApplicationInfo().packageName);
    }

    private static boolean b(Context context) {
        return AttributeResolver.resolveBoolean(context, miui.R.attr.windowActionBar, true);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        installSubDecor();
        ExtensionManager.getInstance().invoke(ActivityTarget.TARGET, ActivityTarget.ACTION_ON_CREATE, this.mActivity, bundle);
    }

    public ActionBar createActionBar() {
        return new ActionBarImpl(this.mActivity);
    }

    public void onStop() {
        dismissImmersionMenu(false);
        ActionBarImpl actionBarImpl = (ActionBarImpl) getActionBar();
        if (actionBarImpl != null) {
            actionBarImpl.setShowHideAnimationEnabled(false);
        }
    }

    public void onPostResume() {
        ActionBarImpl actionBarImpl = (ActionBarImpl) getActionBar();
        if (actionBarImpl != null) {
            actionBarImpl.setShowHideAnimationEnabled(true);
        }
    }

    protected void installSubDecor() {
        if (!this.mSubDecorInstalled) {
            this.mSubDecorInstalled = true;
            TypedArray obtainStyledAttributes = this.mActivity.obtainStyledAttributes(miui.R.styleable.Window);
            if (obtainStyledAttributes.getInt(miui.R.styleable.Window_windowLayoutMode, 0) == 1) {
                this.mActivity.getWindow().setGravity(80);
            }
            if (obtainStyledAttributes.hasValue(miui.R.styleable.Window_windowActionBar)) {
                if (obtainStyledAttributes.getBoolean(miui.R.styleable.Window_windowActionBar, false)) {
                    requestWindowFeature(8);
                }
                if (obtainStyledAttributes.getBoolean(miui.R.styleable.Window_windowActionBarOverlay, false)) {
                    requestWindowFeature(9);
                }
                setTranslucentStatus(obtainStyledAttributes.getInt(R.styleable.Window_windowTranslucentStatus, 0));
                ViewGroup viewGroup = (ViewGroup) ((ViewGroup) this.mActivity.getWindow().getDecorView()).getChildAt(0);
                if (viewGroup instanceof ActionBarOverlayLayout) {
                    this.ch = (ActionBarOverlayLayout) viewGroup;
                } else {
                    this.ch = (ActionBarOverlayLayout) viewGroup.getChildAt(0);
                }
                this.ch.setCallback(this.mActivity);
                this.ch.setTranslucentStatus(getTranslucentStatus());
                if (this.aP) {
                    boolean z;
                    this.ci = (ActionBarContainer) this.ch.findViewById(R.id.action_bar_container);
                    this.ch.setOverlayMode(this.aQ);
                    this.mActionBarView = (ActionBarView) this.ch.findViewById(R.id.action_bar);
                    this.mActionBarView.setWindowCallback(this.mActivity);
                    if (this.mFeatureProgress) {
                        this.mActionBarView.initProgress();
                    }
                    if (this.mFeatureIndeterminateProgress) {
                        this.mActionBarView.initIndeterminateProgress();
                    }
                    this.mImmersionLayoutResourceId = obtainStyledAttributes.getResourceId(R.styleable.Window_immersionMenuLayout, 0);
                    if (isImmersionMenuEnabled()) {
                        this.mActionBarView.initImmersionMore(this.mImmersionLayoutResourceId, this);
                    }
                    if (this.mActionBarView.getCustomNavigationView() != null) {
                        this.mActionBarView.setDisplayOptions(this.mActionBarView.getDisplayOptions() | 16);
                    }
                    boolean equals = "splitActionBarWhenNarrow".equals(getUiOptionsFromMetadata());
                    if (equals) {
                        z = this.mActivity.getResources().getBoolean(R.bool.abc_split_action_bar_is_narrow);
                    } else {
                        z = obtainStyledAttributes.getBoolean(miui.R.styleable.Window_windowSplitActionBar, false);
                    }
                    ActionBarContainer actionBarContainer = (ActionBarContainer) this.ch.findViewById(R.id.split_action_bar);
                    if (actionBarContainer != null) {
                        this.mActionBarView.setSplitView(actionBarContainer);
                        this.mActionBarView.setSplitActionBar(z);
                        this.mActionBarView.setSplitWhenNarrow(equals);
                        ActionBarContextView actionBarContextView = (ActionBarContextView) this.ch.findViewById(R.id.action_context_bar);
                        actionBarContainer.setActionBarContextView(actionBarContextView);
                        actionBarContextView.setSplitView(actionBarContainer);
                        actionBarContextView.setSplitActionBar(z);
                        actionBarContextView.setSplitWhenNarrow(equals);
                    }
                    this.mActivity.getWindow().getDecorView().post(this.cj);
                }
                if (obtainStyledAttributes.getBoolean(R.styleable.Window_immersionMenuEnabled, false)) {
                    setImmersionMenuEnabled(true);
                }
                obtainStyledAttributes.recycle();
                return;
            }
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a miui theme (or descendant) with this activity.");
        }
    }

    public void onTitleChanged(CharSequence charSequence) {
        if (this.mActionBarView != null) {
            this.mActionBarView.setWindowTitle(charSequence);
        }
    }

    public View onCreatePanelView(int i) {
        if (i == 0 && !isImmersionMenuEnabled()) {
            MenuBuilder menuBuilder = this.mMenu;
            boolean z = true;
            if (this.mActionMode == null) {
                if (menuBuilder == null) {
                    menuBuilder = createMenu();
                    setMenu(menuBuilder);
                    menuBuilder.stopDispatchingItemsChanged();
                    z = a(0, (Menu) menuBuilder);
                }
                if (z) {
                    menuBuilder.stopDispatchingItemsChanged();
                    z = a(0, null, (Menu) menuBuilder);
                }
            } else if (menuBuilder == null) {
                z = false;
            }
            if (z) {
                menuBuilder.startDispatchingItemsChanged();
            } else {
                setMenu(null);
            }
        }
        return null;
    }

    public boolean onCreatePanelMenu(int i, Menu menu) {
        return i != 0 && a(i, menu);
    }

    public boolean onPreparePanel(int i, View view, Menu menu) {
        return i != 0 && a(i, view, menu);
    }

    public void onSaveInstanceState(Bundle bundle) {
        if (this.ci != null) {
            SparseArray sparseArray = new SparseArray();
            this.ci.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray(cc, sparseArray);
        }
    }

    public void onRestoreInstanceState(Bundle bundle) {
        if (this.ci != null) {
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(cc);
            if (sparseParcelableArray != null) {
                this.ci.restoreHierarchyState(sparseParcelableArray);
            }
        }
    }

    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (!(a(i, menuItem) || i != 0 || menuItem.getItemId() != 16908332 || getActionBar() == null || (getActionBar().getDisplayOptions() & 4) == 0)) {
            boolean onNavigateUp;
            if (this.mActivity.getParent() == null) {
                onNavigateUp = this.mActivity.onNavigateUp();
            } else {
                onNavigateUp = this.mActivity.getParent().onNavigateUpFromChild(this.mActivity);
            }
            if (!onNavigateUp) {
                this.mActivity.finish();
            }
        }
        return true;
    }

    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        return this.mActivity.onMenuItemSelected(0, menuItem);
    }

    public void invalidateOptionsMenu() {
        this.cj.run();
    }

    public ActionMode startActionMode(ActionMode.Callback callback) {
        return this.ch.startActionMode(callback);
    }

    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        if (getActionBar() != null) {
            return ((ActionBarImpl) getActionBar()).startActionMode(callback);
        }
        return null;
    }

    public void onActionModeStarted(ActionMode actionMode) {
        this.mActionMode = actionMode;
    }

    public void onActionModeFinished(ActionMode actionMode) {
        this.mActionMode = null;
    }

    public boolean onBackPressed() {
        if (this.mActionMode != null) {
            this.mActionMode.finish();
            return true;
        } else if (this.mActionBarView == null || !this.mActionBarView.hasExpandedActionView()) {
            return false;
        } else {
            this.mActionBarView.collapseActionView();
            return true;
        }
    }

    private boolean a(int i, Menu menu) {
        return cd.invokeBoolean(this.cg, getActivity(), Integer.valueOf(i), menu);
    }

    private boolean a(int i, View view, Menu menu) {
        return ce.invokeBoolean(this.cg, getActivity(), Integer.valueOf(i), view, menu);
    }

    private boolean a(int i, MenuItem menuItem) {
        return cf.invokeBoolean(this.cg, getActivity(), Integer.valueOf(i), menuItem);
    }

    protected boolean onCreateImmersionMenu(MenuBuilder menuBuilder) {
        return this.mActivity.onCreateOptionsMenu(menuBuilder);
    }

    protected boolean onPrepareImmersionMenu(MenuBuilder menuBuilder) {
        return this.mActivity.onPrepareOptionsMenu(menuBuilder);
    }

    public void setOnStatusBarChangeListener(OnStatusBarChangeListener onStatusBarChangeListener) {
        if (this.ch != null) {
            this.ch.setOnStatusBarChangeListener(onStatusBarChangeListener);
        }
    }

    public Context getThemedContext() {
        return this.mActivity;
    }
}
