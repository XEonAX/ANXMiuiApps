package com.miui.gallery.loader;

import android.content.AsyncTaskLoader;
import android.content.Context;
import com.miui.gallery.model.BaseDataSet;

public abstract class BaseLoader extends AsyncTaskLoader<BaseDataSet> {
    protected BaseDataSet mDataSet;

    public BaseLoader(Context context) {
        super(context);
    }

    public final void deliverResult(BaseDataSet data) {
        if (!isReset()) {
            BaseDataSet oldSet = this.mDataSet;
            this.mDataSet = data;
            if (isStarted()) {
                super.deliverResult(data);
            }
            if (oldSet != null && oldSet != data) {
                oldSet.release();
            }
        } else if (data != null) {
            data.release();
        }
    }

    public final void onCanceled(BaseDataSet data) {
        if (data != null) {
            data.release();
        }
    }

    protected final void onStartLoading() {
        if (this.mDataSet != null) {
            deliverResult(this.mDataSet);
        }
        if (takeContentChanged() || this.mDataSet == null) {
            forceLoad();
        }
    }

    protected final void onStopLoading() {
        cancelLoad();
    }

    protected final void onReset() {
        super.onReset();
        onStopLoading();
        if (this.mDataSet != null) {
            this.mDataSet.release();
            this.mDataSet = null;
        }
    }
}
