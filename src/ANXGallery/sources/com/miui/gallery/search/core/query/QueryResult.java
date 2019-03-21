package com.miui.gallery.search.core.query;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Handler;
import android.os.Looper;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.result.SourceResult;
import com.miui.gallery.search.core.source.Source;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.search.utils.SearchUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class QueryResult {
    private boolean mClosed = false;
    private final DataSetObservable mDataSetObservable = new DataSetObservable();
    private boolean mDone = false;
    private final List<Source> mExpectedSources;
    private boolean mHasResults = false;
    protected final QueryInfo mQuery;
    private final HashMap<String, Integer> mSourcePositions;
    private final Object mSourceResultLock = new Object();
    private final SourceResult[] mSourceResults;

    public QueryResult(QueryInfo query, List<Source> expectedSources) {
        this.mQuery = query;
        this.mExpectedSources = expectedSources;
        this.mSourceResults = new SourceResult[this.mExpectedSources.size()];
        this.mSourcePositions = new HashMap();
        for (int i = 0; i < this.mExpectedSources.size(); i++) {
            this.mSourcePositions.put(((Source) this.mExpectedSources.get(i)).getName(), Integer.valueOf(i));
        }
        SearchLog.d("QueryResult", "new QueryResult [" + hashCode() + "] query \"" + query + "\" expected sources: " + this.mExpectedSources);
        this.mHasResults = false;
    }

    public boolean isDone() {
        return this.mDone || getSourceResultsCount() >= this.mExpectedSources.size();
    }

    private int getSourceResultsCount() {
        int count = 0;
        synchronized (this.mSourceResultLock) {
            for (SourceResult sourceResult : this.mSourceResults) {
                if (sourceResult != null) {
                    count++;
                }
            }
        }
        return count;
    }

    public boolean addSourceResults(List<SourceResult> sourceResults) {
        if (isClosed()) {
            for (SourceResult sourceResult : sourceResults) {
                sourceResult.release();
            }
            return false;
        }
        boolean accepted = false;
        for (SourceResult sourceResult2 : sourceResults) {
            if (sourceResult2.getData() != null && sourceResult2.getData().getCount() > 0) {
                this.mHasResults = true;
            }
            Integer pos = (Integer) this.mSourcePositions.get(sourceResult2.getSource().getName());
            if (pos == null) {
                SearchLog.w("QueryResult", "Got unexpected SourceResult from corpus " + sourceResult2.getSource().getName());
                sourceResult2.release();
            } else {
                synchronized (this.mSourceResultLock) {
                    if (this.mSourceResults[pos.intValue()] == null) {
                        sourceResult2.acquire();
                        this.mSourceResults[pos.intValue()] = sourceResult2;
                        accepted = true;
                    } else if (SearchUtils.compareResultHashCode(this.mSourceResults[pos.intValue()], sourceResult2)) {
                        SearchLog.d("QueryResult", "We ignored later result of query [%s] source %s, for they are identical", this.mQuery, sourceResult2.getSource());
                        sourceResult2.release();
                    } else {
                        this.mSourceResults[pos.intValue()].release();
                        sourceResult2.acquire();
                        this.mSourceResults[pos.intValue()] = sourceResult2;
                        accepted = true;
                    }
                }
            }
        }
        if (!accepted) {
            return accepted;
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            public void run() {
                QueryResult.this.notifyDataSetChanged();
            }
        });
        return accepted;
    }

    public void registerDataSetObserver(DataSetObserver observer) {
        if (this.mClosed) {
            throw new IllegalStateException("registerDataSetObserver() when closed");
        }
        this.mDataSetObservable.registerObserver(observer);
    }

    protected void notifyDataSetChanged() {
        this.mDataSetObservable.notifyChanged();
    }

    public void close() {
        if (this.mClosed) {
            throw new IllegalStateException("Double close()");
        }
        this.mClosed = true;
        this.mDataSetObservable.unregisterAll();
        synchronized (this.mSourceResultLock) {
            for (SourceResult result : this.mSourceResults) {
                if (result != null) {
                    result.release();
                }
            }
            Arrays.fill(this.mSourceResults, null);
        }
    }

    public boolean isClosed() {
        return this.mClosed;
    }

    protected void finalize() {
        if (!this.mClosed) {
            SearchLog.e("QueryResult", "LEAK! Finalized without being closed: QueryResult[" + getQuery() + "]");
            close();
        }
    }

    public QueryInfo getQuery() {
        return this.mQuery;
    }

    public List<SourceResult> getSourceResults() {
        ArrayList<SourceResult> results;
        synchronized (this.mSourceResultLock) {
            results = new ArrayList(this.mSourceResults.length);
            for (int i = 0; i < this.mSourceResults.length; i++) {
                if (this.mSourceResults[i] != null) {
                    results.add(this.mSourceResults[i]);
                }
            }
        }
        return results;
    }

    public String toString() {
        return "QueryResult@" + hashCode() + "{expectedSources=" + this.mExpectedSources + ",getSourceResultsCount()=" + getSourceResultsCount() + "}";
    }
}
