package com.miui.gallery.util.baby;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.AsyncTask;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

/* compiled from: CopyFaceAlbumItemsToBabyAlbumTask */
abstract class ProgressDialogTask extends AsyncTask<Void, Integer, Void> {
    private boolean mCancelable;
    protected Context mContext;
    private ProgressDialog mDialog;
    private int mMessageId;
    private int mProgressMax;
    private boolean mShowProgress;
    private int mTitleId;

    public static ProgressDialog showProgressDialog(Context context, int titleId, int messageId, int progressMax, boolean cancelable) {
        ProgressDialog dialog = new ProgressDialog(context);
        dialog.setTitle(titleId == 0 ? null : context.getResources().getString(titleId));
        dialog.setMessage(messageId == 0 ? null : context.getResources().getString(messageId));
        dialog.setCancelable(cancelable);
        dialog.setCanceledOnTouchOutside(false);
        if (cancelable) {
            dialog.setButton(-2, context.getString(17039360), (Message) null);
        }
        if (progressMax > 1) {
            dialog.setMax(progressMax);
            dialog.setProgressStyle(1);
        }
        dialog.show();
        return dialog;
    }

    public ProgressDialogTask(Context context, int progressMax, int titleId, int messageId, boolean cancelable, boolean showProgress) {
        this.mContext = context;
        this.mProgressMax = progressMax;
        this.mTitleId = titleId;
        this.mMessageId = messageId;
        this.mCancelable = cancelable;
        this.mShowProgress = showProgress;
    }

    protected void onPreExecute() {
        if (this.mShowProgress) {
            this.mDialog = showProgressDialog(this.mContext, this.mTitleId, this.mMessageId, this.mProgressMax, this.mCancelable);
            if (this.mCancelable) {
                Button cancelButton = this.mDialog.getButton(-2);
                if (cancelButton != null) {
                    cancelButton.setOnClickListener(new OnClickListener() {
                        public void onClick(View v) {
                            ProgressDialogTask.this.cancel(true);
                        }
                    });
                }
                this.mDialog.setOnCancelListener(new OnCancelListener() {
                    public void onCancel(DialogInterface dialog) {
                        ProgressDialogTask.this.cancel(true);
                    }
                });
            }
        }
    }

    protected void onProgressUpdate(Integer... values) {
        try {
            if (this.mDialog != null && this.mDialog.isShowing()) {
                this.mDialog.setProgress(values[0].intValue());
            }
        } catch (Exception e) {
        }
    }

    protected void onPostExecute(Void result) {
        dismissDialog();
    }

    protected void onCancelled() {
        dismissDialog();
    }

    public void dismissDialog() {
        try {
            if (this.mDialog != null && this.mDialog.isShowing()) {
                this.mDialog.dismiss();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected boolean isDialogShowing() {
        try {
            if (this.mDialog != null) {
                return this.mDialog.isShowing();
            }
        } catch (Exception e) {
        }
        return false;
    }
}
