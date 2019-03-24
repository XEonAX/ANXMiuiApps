package miui.app;

import android.content.Context;
import android.os.Bundle;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;

public interface IFragment extends IImmersionMenu {
    Context getThemedContext();

    void onActionModeFinished(ActionMode actionMode);

    void onActionModeStarted(ActionMode actionMode);

    boolean onCreateOptionsMenu(Menu menu);

    boolean onCreatePanelMenu(int i, Menu menu);

    View onInflateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle);

    void onPreparePanel(int i, View view, Menu menu);

    void setThemeRes(int i);

    ActionMode startActionMode(Callback callback);
}
