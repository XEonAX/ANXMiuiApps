package com.miui.gallery.ui;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.widget.GalleryDialogFragment;

public class ConfirmDialog extends GalleryDialogFragment {
    private ConfirmDialogInterface mConfirmDialogInterface;

    public interface ConfirmDialogInterface {
        void onCancel(DialogFragment dialogFragment);

        void onConfirm(DialogFragment dialogFragment);
    }

    public static void showConfirmDialog(FragmentManager fragmentManager, String title, String message, String negativeButtonText, String positiveButtonText, ConfirmDialogInterface confirmDialogInterface) {
        Bundle data = new Bundle();
        if (!TextUtils.isEmpty(title)) {
            data.putString("title", title);
        }
        data.putString("msg", message);
        data.putString("negativeButton", negativeButtonText);
        data.putString("positiveButton", positiveButtonText);
        ConfirmDialog confirmDialog = new ConfirmDialog();
        confirmDialog.setArguments(data);
        confirmDialog.setConfirmDialogInterface(confirmDialogInterface);
        confirmDialog.showAllowingStateLoss(fragmentManager, "ConfirmDialog");
    }

    public void setConfirmDialogInterface(ConfirmDialogInterface confirmDialogInterface) {
        this.mConfirmDialogInterface = confirmDialogInterface;
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Bundle data = getArguments();
        Builder builder = new Builder(getActivity()).setCancelable(true).setIconAttribute(16843605).setMessage(data.getString("msg")).setNegativeButton(data.getString("negativeButton"), new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                if (ConfirmDialog.this.mConfirmDialogInterface != null) {
                    ConfirmDialog.this.mConfirmDialogInterface.onCancel(ConfirmDialog.this);
                }
                ConfirmDialog.this.dismissAllowingStateLoss();
            }
        }).setPositiveButton(data.getString("positiveButton"), new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                if (ConfirmDialog.this.mConfirmDialogInterface != null) {
                    ConfirmDialog.this.mConfirmDialogInterface.onConfirm(ConfirmDialog.this);
                }
                ConfirmDialog.this.dismissAllowingStateLoss();
            }
        });
        String title = data.getString("title");
        if (!TextUtils.isEmpty(title)) {
            builder.setTitle(title);
        }
        Dialog dialog = builder.create();
        dialog.setCanceledOnTouchOutside(false);
        return dialog;
    }

    public void onCancel(DialogInterface dialog) {
        super.onCancel(dialog);
        if (this.mConfirmDialogInterface != null) {
            this.mConfirmDialogInterface.onCancel(this);
        }
    }
}
