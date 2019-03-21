package com.miui.gallery.widget;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import com.miui.gallery.util.Log;

public class GalleryDialogFragment extends DialogFragment {
    public void showAllowingStateLoss(FragmentManager manager, String tag) {
        try {
            show(manager, tag);
        } catch (IllegalStateException ignore) {
            Log.w("GalleryDialogFragment", "%s : showAllowingStateLoss ignore:%s", getClass().getSimpleName(), ignore);
        }
    }

    public void dismissSafely() {
        Dialog dialog = getDialog();
        if (dialog != null && dialog.isShowing()) {
            dismissAllowingStateLoss();
        }
    }
}
