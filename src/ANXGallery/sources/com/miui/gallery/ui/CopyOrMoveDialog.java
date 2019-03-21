package com.miui.gallery.ui;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.util.Log;
import com.miui.gallery.widget.GalleryDialogFragment;
import miui.app.AlertDialog;
import miui.app.AlertDialog.Builder;

public class CopyOrMoveDialog extends GalleryDialogFragment {
    private AlertDialog mDialog;
    private OnClickListener mItemClickListener = new OnClickListener() {
        public void onClick(DialogInterface dialog, int which) {
            if (which <= 2 && CopyOrMoveDialog.this.mOnOperationSelectedListener != null) {
                Log.d("CopyOrMoveDialog", "Creation select : %d", Integer.valueOf(which));
                CopyOrMoveDialog.this.mOnOperationSelectedListener.onOperationSelected(which);
            }
        }
    };
    private OnOperationSelectedListener mOnOperationSelectedListener;

    public interface OnOperationSelectedListener {
        void onOperationSelected(int i);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    public void setOnOperationSelectedListener(OnOperationSelectedListener onOperationSelectedListener) {
        this.mOnOperationSelectedListener = onOperationSelectedListener;
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Builder builder = new Builder(getActivity());
        builder.setTitle(R.string.select_image_operation).setItems(R.array.menu_copy_or_move, this.mItemClickListener);
        this.mDialog = builder.create();
        this.mDialog.setCanceledOnTouchOutside(false);
        return this.mDialog;
    }
}
