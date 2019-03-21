package com.miui.gallery.picker.uri;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.widget.GalleryDialogFragment;

public class PrepareProgressDialog extends GalleryDialogFragment {
    private OnCancelListener mCancelListener;
    private int mMax;
    private int mProgress;
    private int mStage;

    public void setCancelListener(OnCancelListener cancelListener) {
        this.mCancelListener = cancelListener;
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        ProgressDialog dialog = new ProgressDialog(getActivity());
        dialog.setIndeterminate(true);
        dialog.setCancelable(true);
        int messageId = getDialogMessageId();
        if (messageId != 0) {
            dialog.setMessage(getActivity().getString(messageId, new Object[]{Integer.valueOf(this.mProgress), Integer.valueOf(this.mMax)}));
        }
        return dialog;
    }

    public void onCancel(DialogInterface dialog) {
        super.onCancel(dialog);
        if (this.mCancelListener != null) {
            this.mCancelListener.onCancel(dialog);
        }
    }

    public void updateProgress(int progress) {
        this.mProgress = progress;
        setDialogMessage();
    }

    public void setMax(int max) {
        this.mMax = max;
        setDialogMessage();
    }

    public void setStage(int stage) {
        this.mStage = stage;
        setDialogMessage();
    }

    public void setDialogMessage() {
        int messageId = getDialogMessageId();
        if (messageId != 0) {
            ProgressDialog dialog = (ProgressDialog) getDialog();
            if (dialog != null && dialog.isShowing()) {
                dialog.setMessage(getActivity().getString(messageId, new Object[]{Integer.valueOf(this.mProgress), Integer.valueOf(this.mMax)}));
            }
        }
    }

    public int getDialogMessageId() {
        switch (this.mStage) {
            case 0:
                return R.string.picker_download_progress_message;
            case 1:
                return R.string.picker_origin_request_progress_message;
            default:
                return 0;
        }
    }
}
