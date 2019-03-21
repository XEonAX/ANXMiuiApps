package com.miui.gallery.ui;

import android.app.Activity;
import android.os.AsyncTask;

public class ProcessTask<Params, Result> extends AsyncTask<Params, Void, Result> {
    private OnCompleteListener<Result> mCompleteListener;
    private ProcessCallback<Params, Result> mProcessCallback;
    private ProgressDialogFragment mProgressDialog;

    public interface ProcessCallback<P, R> {
        R doProcess(P[] pArr);
    }

    public interface OnCompleteListener<R> {
        void onCompleteProcess(R r);
    }

    public ProcessTask(ProcessCallback<Params, Result> processCallback) {
        this(processCallback, null);
    }

    public ProcessTask(ProcessCallback<Params, Result> processCallback, OnCompleteListener<Result> completeListener) {
        if (processCallback == null) {
            throw new IllegalArgumentException("Null processCallback is not accepted!");
        }
        this.mProcessCallback = processCallback;
        this.mCompleteListener = completeListener;
    }

    public void showProgress(Activity activity, String title) {
        if (activity != null) {
            this.mProgressDialog = new ProgressDialogFragment();
            this.mProgressDialog.setIndeterminate(true);
            this.mProgressDialog.setMessage(title);
            this.mProgressDialog.setCancelable(false);
            this.mProgressDialog.showAllowingStateLoss(activity.getFragmentManager(), "ProcessTask");
        }
    }

    protected Result doInBackground(Params... params) {
        return this.mProcessCallback.doProcess(params);
    }

    protected void onPostExecute(Result result) {
        super.onPostExecute(result);
        if (this.mCompleteListener != null) {
            this.mCompleteListener.onCompleteProcess(result);
        }
        if (this.mProgressDialog != null && this.mProgressDialog.getFragmentManager() != null) {
            this.mProgressDialog.dismissAllowingStateLoss();
        }
    }

    public void setCompleteListener(OnCompleteListener completeListener) {
        this.mCompleteListener = completeListener;
    }
}
