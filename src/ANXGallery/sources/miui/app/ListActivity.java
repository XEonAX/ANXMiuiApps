package miui.app;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.miui.internal.app.ActivityDelegate;

public class ListActivity extends android.app.ListActivity implements IActivity {
    private ActivityDelegate wQ = new ActivityDelegate(this, android.app.ListActivity.class);

    public ActionBar getActionBar() {
        return this.wQ.getActionBar();
    }

    public MenuInflater getMenuInflater() {
        return this.wQ.getMenuInflater();
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.wQ.onCreate(bundle);
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.wQ.onConfigurationChanged(configuration);
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.wQ.onSaveInstanceState(bundle);
    }

    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.wQ.onRestoreInstanceState(bundle);
    }

    protected void onStop() {
        super.onStop();
        this.wQ.onStop();
    }

    protected void onPostResume() {
        super.onPostResume();
        this.wQ.onPostResume();
    }

    public View onCreatePanelView(int i) {
        if (i == 0) {
            return this.wQ.onCreatePanelView(i);
        }
        return super.onCreatePanelView(i);
    }

    protected void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        this.wQ.onTitleChanged(charSequence);
    }

    public void invalidateOptionsMenu() {
        this.wQ.invalidateOptionsMenu();
    }

    public boolean requestExtraWindowFeature(int i) {
        return this.wQ.requestWindowFeature(i);
    }

    public ActionMode startActionMode(Callback callback) {
        return this.wQ.startActionMode(callback);
    }

    public ActionMode onWindowStartingActionMode(Callback callback) {
        return this.wQ.onWindowStartingActionMode(callback);
    }

    public void onActionModeStarted(ActionMode actionMode) {
        this.wQ.onActionModeStarted(actionMode);
    }

    public void onActionModeFinished(ActionMode actionMode) {
        this.wQ.onActionModeFinished(actionMode);
    }

    public boolean onCreatePanelMenu(int i, Menu menu) {
        return this.wQ.onCreatePanelMenu(i, menu);
    }

    public boolean onPreparePanel(int i, View view, Menu menu) {
        return this.wQ.onPreparePanel(i, view, menu);
    }

    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        return this.wQ.onMenuItemSelected(i, menuItem);
    }

    public void onBackPressed() {
        if (!this.wQ.onBackPressed()) {
            super.onBackPressed();
        }
    }

    public void setImmersionMenuEnabled(boolean z) {
        this.wQ.setImmersionMenuEnabled(z);
    }

    public void showImmersionMenu() {
        this.wQ.showImmersionMenu();
    }

    public void showImmersionMenu(View view, ViewGroup viewGroup) {
        this.wQ.showImmersionMenu(view, viewGroup);
    }

    public void dismissImmersionMenu(boolean z) {
        this.wQ.dismissImmersionMenu(z);
    }

    public void setTranslucentStatus(int i) {
        this.wQ.setTranslucentStatus(i);
    }

    public int getTranslucentStatus() {
        return this.wQ.getTranslucentStatus();
    }

    protected void onDestroy() {
        super.onDestroy();
        this.wQ.dismissImmersionMenu(false);
    }
}
