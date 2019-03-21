package com.miui.gallery.widget.editwrapper;

import android.view.ActionMode;
import android.view.ActionMode.Callback;

public interface MultiChoiceModeListener extends Callback {
    void onAllItemsCheckedStateChanged(ActionMode actionMode, boolean z);

    void onItemCheckedStateChanged(ActionMode actionMode, int i, long j, boolean z);
}
