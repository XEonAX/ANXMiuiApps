package com.miui.gallery.widget.editwrapper;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;

public class SimpleMultiChoiceModeListener implements MultiChoiceModeListener {
    public void onAllItemsCheckedStateChanged(ActionMode mode, boolean checked) {
    }

    public void onItemCheckedStateChanged(ActionMode mode, int position, long id, boolean checked) {
    }

    public boolean onCreateActionMode(ActionMode mode, Menu menu) {
        return false;
    }

    public boolean onPrepareActionMode(ActionMode mode, Menu menu) {
        return false;
    }

    public boolean onActionItemClicked(ActionMode mode, MenuItem item) {
        return false;
    }

    public void onDestroyActionMode(ActionMode mode) {
    }
}
