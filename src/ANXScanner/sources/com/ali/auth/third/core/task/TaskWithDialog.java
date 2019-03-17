package com.ali.auth.third.core.task;

import android.app.Activity;

public abstract class TaskWithDialog<Params, Progress, Result> extends AbsAsyncTask<Params, Progress, Result> {
    protected Activity activity;

    public TaskWithDialog(Activity activity) {
        this.activity = activity;
    }

    protected void doFinally() {
    }

    protected void onPreExecute() {
    }
}
