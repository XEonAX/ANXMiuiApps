package com.miui.gallery.search.core.query;

import android.content.AsyncTaskLoader;
import android.content.Context;
import android.database.ContentObserver;
import android.database.DataSetObserver;
import android.os.Bundle;
import android.os.OperationCanceledException;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.result.SuggestionResult;
import com.miui.gallery.search.core.resultprocessor.ResultProcessor;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.threadpool.ThreadManager;

public class QueryLoader<T extends SuggestionResult> extends AsyncTaskLoader<T> {
    private final QueryInfo mQueryInfo;
    private ControllableTask<QueryResult> mQueryTask;
    private boolean mReceiveResultUpdates;
    private boolean mReceiveSourceUpdates;
    private boolean mReportTillDone;
    private T mResult;
    private ContentObserver mResultContentObserver;
    private final ResultProcessor<T> mResultProcessor;
    private DataSetObserver mSourceDataSetObserver;

    public QueryLoader(Context context, QueryInfo queryInfo, ResultProcessor<T> resultProcessor, boolean receiveSourceUpdates, boolean receiveResultUpdates, boolean reportTillDone) {
        super(context);
        this.mQueryInfo = queryInfo;
        this.mResultProcessor = resultProcessor;
        this.mReceiveSourceUpdates = receiveSourceUpdates;
        this.mReceiveResultUpdates = receiveResultUpdates;
        this.mReportTillDone = reportTillDone;
    }

    public QueryLoader(Context context, QueryInfo queryInfo, ResultProcessor<T> resultProcessor) {
        this(context, queryInfo, resultProcessor, false, false, false);
    }

    public QueryInfo getQueryInfo() {
        return this.mQueryInfo;
    }

    protected void onStartLoading() {
        if (this.mQueryTask == null) {
            this.mQueryTask = QueryPackageHelper.getQueryResult(this.mQueryInfo, this.mReceiveSourceUpdates);
        }
        if (this.mQueryTask == null) {
            SearchLog.e("QueryLoader", "No query task was created for query %s", this.mQueryInfo);
        } else if (this.mQueryTask.isCanceled()) {
            throw new RuntimeException("Invalid inner source, query task has been cancelled!");
        } else {
            if (this.mResult != null) {
                deliverResult(this.mResult);
            }
            if (!this.mQueryTask.started()) {
                this.mQueryTask.start();
                ((QueryResult) this.mQueryTask.getResult()).registerDataSetObserver(getSourceDataSetObserver());
            }
            if (takeContentChanged()) {
                forceLoad();
            }
        }
    }

    public T loadInBackground() {
        if (isLoadInBackgroundCanceled()) {
            throw new OperationCanceledException();
        }
        Object obj;
        long current = System.currentTimeMillis();
        T result = this.mResultProcessor.process(((QueryResult) this.mQueryTask.getResult()).getSourceResults());
        if (result != null) {
            boolean resultIsDone = ((QueryResult) this.mQueryTask.getResult()).isDone();
            Bundle bundle = result.getResultExtras();
            if (bundle == Bundle.EMPTY) {
                bundle = new Bundle();
            }
            bundle.putBoolean("is_done", resultIsDone);
            result.setResultExtras(bundle);
        }
        String str = "QueryLoader";
        String str2 = "Load result for {%s} cost %s ms, result %s";
        QueryInfo queryInfo = this.mQueryInfo;
        String valueOf = String.valueOf(System.currentTimeMillis() - current);
        if (result == null) {
            obj = "is null";
        } else if (result.isEmpty() || result.getData() == null) {
            obj = "is empty";
        } else {
            obj = "has " + result.getData().getCount() + "items";
        }
        SearchLog.d(str, str2, queryInfo, valueOf, obj);
        return result;
    }

    private DataSetObserver getSourceDataSetObserver() {
        if (this.mSourceDataSetObserver == null) {
            this.mSourceDataSetObserver = new DataSetObserver() {
                public void onChanged() {
                    if (QueryLoader.this.mReportTillDone && (QueryLoader.this.mQueryTask == null || QueryLoader.this.mQueryTask.getResult() == null || !((QueryResult) QueryLoader.this.mQueryTask.getResult()).isDone())) {
                        SearchLog.e("QueryLoader", "On block query loader update");
                    } else {
                        QueryLoader.this.onContentChanged();
                    }
                }
            };
        }
        return this.mSourceDataSetObserver;
    }

    private ContentObserver getResultContentObserver() {
        if (this.mResultContentObserver == null) {
            this.mResultContentObserver = new ContentObserver(ThreadManager.getMainHandler()) {
                public void onChange(boolean selfChange) {
                    QueryLoader.this.onContentChanged();
                }
            };
        }
        return this.mResultContentObserver;
    }

    public void deliverResult(T data) {
        if (isReset()) {
            onReleaseResources(data);
            return;
        }
        T oldResult = this.mResult;
        this.mResult = data;
        if (!(!this.mReceiveResultUpdates || this.mResult == oldResult || this.mResult == null || this.mResult.isEmpty())) {
            this.mResult.registerContentObserver(getResultContentObserver());
        }
        if (isStarted() && this.mResult != oldResult) {
            super.deliverResult(this.mResult);
        }
        if (oldResult != this.mResult && oldResult != null) {
            onReleaseResources(oldResult);
        }
    }

    protected void onStopLoading() {
        cancelLoad();
    }

    public void onCanceled(T t) {
    }

    protected void onReset() {
        super.onReset();
        onStopLoading();
        if (this.mQueryTask != null) {
            this.mQueryTask.cancel();
            if (!(this.mQueryTask.getResult() == null || ((QueryResult) this.mQueryTask.getResult()).isClosed())) {
                ((QueryResult) this.mQueryTask.getResult()).close();
            }
            this.mQueryTask = null;
        }
        onReleaseResources(this.mResult);
        this.mResult = null;
    }

    private void onReleaseResources(T result) {
        if (result != null && !result.isClosed()) {
            result.release();
        }
    }

    public String toString() {
        return super.toString() + "," + this.mQueryInfo;
    }
}
