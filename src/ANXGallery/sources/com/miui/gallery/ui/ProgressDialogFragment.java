package com.miui.gallery.ui;

import android.app.Dialog;
import android.os.Bundle;
import com.miui.gallery.widget.GalleryDialogFragment;
import miui.app.ProgressDialog;

public class ProgressDialogFragment extends GalleryDialogFragment {
    private boolean mIndeterminate;
    private CharSequence mMessage;
    private CharSequence mTitle;

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        ProgressDialog dialog = new ProgressDialog(getActivity());
        dialog.setIndeterminate(this.mIndeterminate);
        dialog.setTitle(this.mTitle);
        dialog.setMessage(this.mMessage);
        return dialog;
    }

    public void setIndeterminate(boolean indeterminate) {
        this.mIndeterminate = indeterminate;
    }

    public void setTitle(CharSequence title) {
        this.mTitle = title;
    }

    public void setMessage(CharSequence message) {
        this.mMessage = message;
    }
}
