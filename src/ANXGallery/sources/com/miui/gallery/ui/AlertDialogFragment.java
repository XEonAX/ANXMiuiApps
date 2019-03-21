package com.miui.gallery.ui;

import android.annotation.TargetApi;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.os.Bundle;
import com.miui.gallery.widget.GalleryDialogFragment;

@TargetApi(11)
public class AlertDialogFragment extends GalleryDialogFragment {
    private OnCancelListener mCancelListener;
    private CharSequence mCheckBoxMessage;
    private OnDismissListener mDismissListener;
    private boolean mIsChecked;
    private CharSequence mMessage;
    private OnClickListener mNegativeButtonListener;
    private CharSequence mNegativeButtonText;
    private OnClickListener mPositiveButtonListener;
    private CharSequence mPositiveButtonText;
    private CharSequence mTitle;

    public static final class Builder {
        private OnCancelListener mCancelListener;
        private boolean mCancelable = true;
        private CharSequence mCheckBoxMessage;
        private OnDismissListener mDismissListener;
        private boolean mIsChecked;
        private CharSequence mMessage;
        private OnClickListener mNegativeButtonListener;
        private CharSequence mNegativeButtonText;
        private OnClickListener mPositiveButtonListener;
        private CharSequence mPositiveButtonText;
        private CharSequence mTitle;

        public Builder setTitle(CharSequence title) {
            this.mTitle = title;
            return this;
        }

        public Builder setMessage(CharSequence message) {
            this.mMessage = message;
            return this;
        }

        public Builder setNegativeButton(CharSequence buttonText, OnClickListener listener) {
            this.mNegativeButtonText = buttonText;
            this.mNegativeButtonListener = listener;
            return this;
        }

        public Builder setPositiveButton(CharSequence buttonText, OnClickListener listener) {
            this.mPositiveButtonText = buttonText;
            this.mPositiveButtonListener = listener;
            return this;
        }

        public Builder setCancelable(boolean cancelable) {
            this.mCancelable = cancelable;
            return this;
        }

        public AlertDialogFragment create() {
            AlertDialogFragment dialog = new AlertDialogFragment();
            dialog.setTitle(this.mTitle);
            dialog.setMessage(this.mMessage);
            dialog.setCheckBox(this.mIsChecked, this.mCheckBoxMessage);
            dialog.setNegativeButton(this.mNegativeButtonText, this.mNegativeButtonListener);
            dialog.setPositiveButton(this.mPositiveButtonText, this.mPositiveButtonListener);
            dialog.setOnCancelListener(this.mCancelListener);
            dialog.setOnDismissListener(this.mDismissListener);
            dialog.setCancelable(this.mCancelable);
            return dialog;
        }
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        return new miui.app.AlertDialog.Builder(getActivity()).setTitle(this.mTitle).setMessage(this.mMessage).setCheckBox(this.mIsChecked, this.mCheckBoxMessage).setPositiveButton(this.mPositiveButtonText, this.mPositiveButtonListener).setNegativeButton(this.mNegativeButtonText, this.mNegativeButtonListener).create();
    }

    public void onCancel(DialogInterface dialog) {
        super.onCancel(dialog);
        if (this.mCancelListener != null) {
            this.mCancelListener.onCancel(dialog);
        }
    }

    public void onDismiss(DialogInterface dialog) {
        super.onDismiss(dialog);
        if (this.mDismissListener != null) {
            this.mDismissListener.onDismiss(dialog);
        }
    }

    void setTitle(CharSequence title) {
        this.mTitle = title;
    }

    void setMessage(CharSequence message) {
        this.mMessage = message;
    }

    void setCheckBox(boolean isChecked, CharSequence checkBoxMessage) {
        this.mIsChecked = isChecked;
        this.mCheckBoxMessage = checkBoxMessage;
    }

    void setNegativeButton(CharSequence buttonText, OnClickListener listener) {
        this.mNegativeButtonText = buttonText;
        this.mNegativeButtonListener = listener;
    }

    void setPositiveButton(CharSequence buttonText, OnClickListener listener) {
        this.mPositiveButtonText = buttonText;
        this.mPositiveButtonListener = listener;
    }

    void setOnCancelListener(OnCancelListener listener) {
        this.mCancelListener = listener;
    }

    void setOnDismissListener(OnDismissListener listener) {
        this.mDismissListener = listener;
    }
}
