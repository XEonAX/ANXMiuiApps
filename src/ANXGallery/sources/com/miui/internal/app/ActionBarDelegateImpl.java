package com.miui.internal.app;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.ActionMode;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.internal.R;
import com.miui.internal.variable.Android_View_Window_class.Factory;
import com.miui.internal.view.menu.ImmersionMenuPopupWindow;
import com.miui.internal.view.menu.ImmersionMenuPopupWindowImpl;
import com.miui.internal.view.menu.MenuBuilder;
import com.miui.internal.view.menu.MenuBuilder.Callback;
import com.miui.internal.view.menu.MenuPresenter;
import com.miui.internal.widget.ActionBarView;
import miui.app.ActionBar;

public abstract class ActionBarDelegateImpl implements a, Callback, MenuPresenter.Callback {
    private static final String TAG = "ActionBarDelegate";
    static final String aN = "android.support.UI_OPTIONS";
    static final String aO = "splitActionBarWhenNarrow";
    boolean aP;
    boolean aQ;
    private ActionBar aR;
    private MenuInflater aS;
    private int aT = 0;
    private ImmersionMenuPopupWindow aU;
    private boolean aV;
    private MenuBuilder aW;
    protected ActionBarView mActionBarView;
    protected ActionMode mActionMode;
    final Activity mActivity;
    protected boolean mFeatureIndeterminateProgress;
    protected boolean mFeatureProgress;
    protected int mImmersionLayoutResourceId;
    protected MenuBuilder mMenu;
    protected boolean mSubDecorInstalled;

    public abstract Context getThemedContext();

    protected abstract boolean onCreateImmersionMenu(MenuBuilder menuBuilder);

    protected abstract boolean onPrepareImmersionMenu(MenuBuilder menuBuilder);

    ActionBarDelegateImpl(Activity activity) {
        this.mActivity = activity;
    }

    public final ActionBar getActionBar() {
        if (!this.aP && !this.aQ) {
            this.aR = null;
        } else if (this.aR == null) {
            this.aR = createActionBar();
        }
        return this.aR;
    }

    public MenuInflater getMenuInflater() {
        if (this.aS == null) {
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                this.aS = new MenuInflater(actionBar.getThemedContext());
            } else {
                this.aS = new MenuInflater(this.mActivity);
            }
        }
        return this.aS;
    }

    public void onCreate(Bundle bundle) {
    }

    protected final String getUiOptionsFromMetadata() {
        String str = null;
        try {
            ActivityInfo activityInfo = this.mActivity.getPackageManager().getActivityInfo(this.mActivity.getComponentName(), 128);
            if (activityInfo.metaData != null) {
                str = activityInfo.metaData.getString(aN);
            }
            return str;
        } catch (NameNotFoundException e) {
            String str2 = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("getUiOptionsFromMetadata: Activity '");
            stringBuilder.append(this.mActivity.getClass().getSimpleName());
            stringBuilder.append("' not in manifest");
            Log.e(str2, stringBuilder.toString());
            return null;
        }
    }

    protected final Context getActionBarThemedContext() {
        Context context = this.mActivity;
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            return actionBar.getThemedContext();
        }
        return context;
    }

    public Activity getActivity() {
        return this.mActivity;
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (this.aP && this.mSubDecorInstalled) {
            ((ActionBarImpl) getActionBar()).onConfigurationChanged(configuration);
        }
    }

    public void onStop() {
        dismissImmersionMenu(false);
        if (this.aP && this.mSubDecorInstalled) {
            ActionBarImpl actionBarImpl = (ActionBarImpl) getActionBar();
            if (actionBarImpl != null) {
                actionBarImpl.setShowHideAnimationEnabled(false);
            }
        }
    }

    public void onPostResume() {
        if (this.aP && this.mSubDecorInstalled) {
            ActionBarImpl actionBarImpl = (ActionBarImpl) getActionBar();
            if (actionBarImpl != null) {
                actionBarImpl.setShowHideAnimationEnabled(true);
            }
        }
    }

    public boolean requestWindowFeature(int i) {
        if (i == 2) {
            this.mFeatureProgress = true;
            return true;
        } else if (i != 5) {
            switch (i) {
                case 8:
                    this.aP = true;
                    return true;
                case 9:
                    this.aQ = true;
                    return true;
                default:
                    return this.mActivity.requestWindowFeature(i);
            }
        } else {
            this.mFeatureIndeterminateProgress = true;
            return true;
        }
    }

    public ActionMode startActionMode(ActionMode.Callback callback) {
        return null;
    }

    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return null;
    }

    public void onActionModeStarted(ActionMode actionMode) {
    }

    public void onActionModeFinished(ActionMode actionMode) {
    }

    protected void reopenMenu(MenuBuilder menuBuilder, boolean z) {
        if (this.mActionBarView == null || !this.mActionBarView.isOverflowReserved()) {
            menuBuilder.close();
            return;
        }
        if (this.mActionBarView.isOverflowMenuShowing() && z) {
            this.mActionBarView.hideOverflowMenu();
        } else if (this.mActionBarView.getVisibility() == 0) {
            this.mActionBarView.showOverflowMenu();
        }
    }

    protected void setMenu(MenuBuilder menuBuilder) {
        if (menuBuilder != this.mMenu) {
            this.mMenu = menuBuilder;
            if (this.mActionBarView != null) {
                this.mActionBarView.setMenu(menuBuilder, this);
            }
        }
    }

    protected MenuBuilder createMenu() {
        MenuBuilder menuBuilder = new MenuBuilder(getActionBarThemedContext());
        menuBuilder.setCallback(this);
        return menuBuilder;
    }

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        this.mActivity.closeOptionsMenu();
    }

    public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
        return false;
    }

    public void onMenuModeChange(MenuBuilder menuBuilder) {
        reopenMenu(menuBuilder, true);
    }

    public void setTranslucentStatus(int i) {
        int integer = this.mActivity.getResources().getInteger(R.integer.window_translucent_status);
        if (integer >= 0 && integer <= 2) {
            i = integer;
        }
        if (this.aT != i && Factory.getInstance().get().setTranslucentStatus(this.mActivity.getWindow(), i)) {
            this.aT = i;
        }
    }

    public int getTranslucentStatus() {
        return this.aT;
    }

    public void setImmersionMenuEnabled(boolean z) {
        this.aV = z;
        if (this.mSubDecorInstalled && this.aP) {
            if (!z) {
                this.mActionBarView.hideImmersionMore();
            } else if (!this.mActionBarView.showImmersionMore()) {
                this.mActionBarView.initImmersionMore(this.mImmersionLayoutResourceId, this);
            }
            invalidateOptionsMenu();
        }
    }

    public boolean isImmersionMenuEnabled() {
        return this.aV;
    }

    public void showImmersionMenu() {
        if (this.mActionBarView != null) {
            View findViewById = this.mActionBarView.findViewById(R.id.more);
            if (findViewById != null) {
                showImmersionMenu(findViewById, this.mActionBarView);
                return;
            }
        }
        throw new IllegalStateException("Can't find anchor view in actionbar. Do you use default actionbar and immersion menu is enabled?");
    }

    public void showImmersionMenu(View view, ViewGroup viewGroup) {
        if (!this.aV) {
            Log.w(TAG, "Try to show immersion menu when immersion menu disabled");
        } else if (view != null) {
            if (this.aW == null) {
                this.aW = createMenu();
                onCreateImmersionMenu(this.aW);
            }
            if (onPrepareImmersionMenu(this.aW) && this.aW.hasVisibleItems()) {
                if (this.aU == null) {
                    this.aU = new ImmersionMenuPopupWindowImpl(this, this.aW);
                } else {
                    this.aU.update(this.aW);
                }
                if (!this.aU.isShowing()) {
                    this.aU.show(view, viewGroup);
                }
            }
        } else {
            throw new IllegalArgumentException("You must specify a valid anchor view");
        }
    }

    public void dismissImmersionMenu(boolean z) {
        if (this.aU != null) {
            this.aU.dismiss(z);
        }
    }
}
