package com.miui.gallery.editor.photo.app;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.miui.gallery.widget.GalleryDialogFragment;

public class AlertDialogFragment extends GalleryDialogFragment {
    private Callbacks mCallbacks;
    private OnClickListener mOnClickListener = new OnClickListener() {
        public void onClick(DialogInterface dialog, int which) {
            if (dialog != AlertDialogFragment.this.getDialog()) {
                throw new IllegalStateException("click event is not from current fragment, maybe listener not detached");
            } else if (AlertDialogFragment.this.mCallbacks != null) {
                AlertDialogFragment.this.mCallbacks.onClick(AlertDialogFragment.this, which);
            }
        }
    };

    public static class Builder {
        private boolean mCancellable;
        private int mMessageId;
        private int mNegativeId;
        private int mPositiveId;

        public Builder setMessage(int msg) {
            this.mMessageId = msg;
            return this;
        }

        public Builder setPositiveButton(int positive) {
            this.mPositiveId = positive;
            return this;
        }

        public Builder setNegativeButton(int negative) {
            this.mNegativeId = negative;
            return this;
        }

        public Builder setCancellable(boolean cancellable) {
            this.mCancellable = cancellable;
            return this;
        }

        public AlertDialogFragment build() {
            Bundle arguments = new Bundle();
            if (this.mMessageId != 0) {
                arguments.putInt("AlertDialogFragment:message_resource", this.mMessageId);
            }
            if (this.mPositiveId != 0) {
                arguments.putInt("AlertDialogFragment:positive_resource", this.mPositiveId);
            }
            if (this.mNegativeId != 0) {
                arguments.putInt("AlertDialogFragment:negative_resource", this.mNegativeId);
            }
            AlertDialogFragment dialog = new AlertDialogFragment();
            dialog.setCancelable(this.mCancellable);
            dialog.setArguments(arguments);
            return dialog;
        }
    }

    public interface Callbacks {
        void onCancel(AlertDialogFragment alertDialogFragment);

        void onClick(AlertDialogFragment alertDialogFragment, int i);

        void onDismiss(AlertDialogFragment alertDialogFragment);
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getActivity());
        Bundle args = getArguments();
        int res = args.getInt("AlertDialogFragment:message_resource");
        if (res != 0) {
            builder.setMessage(res);
        }
        res = args.getInt("AlertDialogFragment:negative_resource");
        if (res != 0) {
            builder.setNegativeButton(res, this.mOnClickListener);
        }
        res = args.getInt("AlertDialogFragment:positive_resource");
        if (res != 0) {
            builder.setPositiveButton(res, this.mOnClickListener);
        }
        return builder.create();
    }

    public void onCancel(DialogInterface dialog) {
        super.onCancel(dialog);
        if (this.mCallbacks != null) {
            this.mCallbacks.onCancel(this);
        }
    }

    public void onDismiss(DialogInterface dialog) {
        super.onDismiss(dialog);
        if (this.mCallbacks != null) {
            this.mCallbacks.onDismiss(this);
        }
    }

    public final void setCallbacks(Callbacks callbacks) {
        this.mCallbacks = callbacks;
    }

    public void onDetach() {
        super.onDetach();
        this.mCallbacks = null;
    }
}
