package com.miui.gallery.search.core.result;

import android.database.ContentObserver;
import android.database.DataSetObserver;
import android.os.Bundle;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.search.utils.SearchLog;

public class BaseSuggestionResult<S extends SuggestionCursor> implements SuggestionResult<S> {
    private boolean mClosed;
    private final S mData;
    private ErrorInfo mErrorInfo;
    private Bundle mExtras;
    private final QueryInfo mQueryInfo;
    private int mRefCount;

    public BaseSuggestionResult(QueryInfo queryInfo, S suggestions) {
        this(queryInfo, suggestions, null);
    }

    public BaseSuggestionResult(QueryInfo queryInfo, S suggestions, ErrorInfo errorInfo) {
        this.mClosed = false;
        this.mRefCount = 0;
        this.mExtras = Bundle.EMPTY;
        this.mQueryInfo = queryInfo;
        this.mData = suggestions;
        this.mErrorInfo = errorInfo;
    }

    public S getData() {
        if (this.mData == null || this.mData.isClosed()) {
            return null;
        }
        return this.mData;
    }

    public ErrorInfo getErrorInfo() {
        if (!isClosed()) {
            return this.mErrorInfo;
        }
        throw new IllegalStateException("getErrorMessage() when closed");
    }

    public void setErrorInfo(ErrorInfo errorInfo) {
        this.mErrorInfo = errorInfo;
    }

    public void acquire() {
        this.mRefCount++;
    }

    public void release() {
        this.mRefCount--;
        if (this.mRefCount <= 0 && !isClosed()) {
            close();
        }
    }

    public boolean isClosed() {
        return this.mClosed;
    }

    private void close() {
        SearchLog.d("BaseSuggestionResult", "SuggestionResult close() [" + hashCode() + "]");
        if (this.mClosed) {
            SearchLog.e("BaseSuggestionResult", "Double close()");
            return;
        }
        this.mClosed = true;
        try {
            if (this.mData != null && !this.mData.isClosed()) {
                this.mData.close();
            } else if (this.mData != null) {
                SearchLog.w("BaseSuggestionResult", this + "]'s data is already closed before result is closed!");
            }
        } catch (Throwable e) {
            SearchLog.e("BaseSuggestionResult", e);
        }
    }

    public boolean isEmpty() {
        return this.mData == null || this.mData.getCount() <= 0;
    }

    protected void finalize() {
        if (!isClosed()) {
            SearchLog.e("BaseSuggestionResult", "LEAK! Finalized without being closed: BaseSuggestionResult[" + getQueryInfo() + "]");
            close();
        }
    }

    public Bundle getResultExtras() {
        return this.mExtras;
    }

    public void setResultExtras(Bundle extras) {
        if (extras == null) {
            extras = Bundle.EMPTY;
        }
        this.mExtras = extras;
    }

    public QueryInfo getQueryInfo() {
        return this.mQueryInfo;
    }

    public void registerContentObserver(ContentObserver observer) {
        if (getData() != null) {
            this.mData.registerContentObserver(observer);
        }
    }

    public void registerDataSetObserver(DataSetObserver observer) {
        if (getData() != null) {
            this.mData.registerDataSetObserver(observer);
        }
    }
}
