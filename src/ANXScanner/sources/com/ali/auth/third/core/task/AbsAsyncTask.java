package com.ali.auth.third.core.task;

import android.os.AsyncTask;
import com.ali.auth.third.core.trace.SDKLogger;

public abstract class AbsAsyncTask<Params, Progress, Result> extends AsyncTask<Params, Progress, Result> {
    protected abstract Result asyncExecute(Params... paramsArr);

    protected abstract void doFinally();

    protected Result doInBackground(Params... paramsArr) {
        Result asyncExecute;
        try {
            asyncExecute = asyncExecute(paramsArr);
            return asyncExecute;
        } catch (Throwable th) {
            asyncExecute = th;
            SDKLogger.e("kernel", asyncExecute.getMessage(), asyncExecute);
            doWhenException(asyncExecute);
            return null;
        } finally {
            doFinally();
        }
    }

    protected abstract void doWhenException(Throwable th);
}
