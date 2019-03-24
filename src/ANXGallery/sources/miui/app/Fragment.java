package miui.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.internal.app.FragmentDelegate;

public class Fragment extends android.app.Fragment implements IFragment {
    private FragmentDelegate xd;
    private boolean xe = true;
    private boolean xf = true;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.xd = new FragmentDelegate(this);
        this.xd.onCreate(bundle);
    }

    public void onStop() {
        super.onStop();
        this.xd.onStop();
    }

    public void onResume() {
        super.onResume();
        this.xd.onPostResume();
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.xd.onCreateView(viewGroup, bundle);
    }

    public View getView() {
        return this.xd.getView();
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.xd.onConfigurationChanged(configuration);
    }

    public ActionBar getActionBar() {
        return this.xd.getActionBar();
    }

    public MenuInflater getMenuInflater() {
        return this.xd.getMenuInflater();
    }

    public ActionMode startActionMode(Callback callback) {
        return this.xd.startActionMode(callback);
    }

    public void setThemeRes(int i) {
        this.xd.setExtraThemeRes(i);
    }

    public Context getThemedContext() {
        return this.xd.getThemedContext();
    }

    public void setHasOptionsMenu(boolean z) {
        super.setHasOptionsMenu(z);
        if (this.xe != z) {
            this.xe = z;
            if (this.xe && this.xd != null && !this.xd.isImmersionMenuEnabled() && !isHidden() && isAdded()) {
                this.xd.invalidateOptionsMenu();
            }
        }
    }

    public void setMenuVisibility(boolean z) {
        super.setMenuVisibility(z);
        if (this.xf != z) {
            this.xf = z;
            if (!isHidden() && isAdded() && this.xd != null) {
                this.xd.invalidateOptionsMenu();
            }
        }
    }

    public boolean requestWindowFeature(int i) {
        return this.xd.requestWindowFeature(i);
    }

    public void invalidateOptionsMenu() {
        if (this.xd != null) {
            this.xd.updateOptionsMenu(1);
            if (!isHidden() && this.xe && !this.xd.isImmersionMenuEnabled() && this.xf && isAdded()) {
                this.xd.invalidateOptionsMenu();
            }
        }
    }

    public void updateOptionsMenuContent() {
        if (this.xd != null && !isHidden() && this.xe && !this.xd.isImmersionMenuEnabled() && this.xf && isAdded()) {
            this.xd.invalidateOptionsMenu();
        }
    }

    public final void onActionModeStarted(ActionMode actionMode) {
    }

    public final void onActionModeFinished(ActionMode actionMode) {
    }

    public boolean onCreatePanelMenu(int i, Menu menu) {
        boolean z = false;
        if (i != 0) {
            return false;
        }
        if (this.xe && !this.xd.isImmersionMenuEnabled() && this.xf && !isHidden() && isAdded()) {
            z = onCreateOptionsMenu(menu);
        }
        return z;
    }

    public void onPreparePanel(int i, View view, Menu menu) {
        if (i == 0 && this.xe && !this.xd.isImmersionMenuEnabled() && this.xf && !isHidden() && isAdded()) {
            onPrepareOptionsMenu(menu);
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        return true;
    }

    public View onInflateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return null;
    }

    public final void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (!(z || this.xd == null)) {
            this.xd.invalidateOptionsMenu();
        }
        onVisibilityChanged(z ^ 1);
    }

    public void onVisibilityChanged(boolean z) {
    }

    public void setImmersionMenuEnabled(boolean z) {
        this.xd.setImmersionMenuEnabled(z);
    }

    public void showImmersionMenu() {
        this.xd.showImmersionMenu();
    }

    public void showImmersionMenu(View view, ViewGroup viewGroup) {
        this.xd.showImmersionMenu(view, viewGroup);
    }

    public void dismissImmersionMenu(boolean z) {
        this.xd.dismissImmersionMenu(z);
    }

    public void onDestroy() {
        super.onDestroy();
        this.xd.dismissImmersionMenu(false);
    }

    public void setOnStatusBarChangeListener(OnStatusBarChangeListener onStatusBarChangeListener) {
        this.xd.setOnStatusBarChangeListener(onStatusBarChangeListener);
    }
}
