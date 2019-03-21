package com.miui.gallery.search.core.query;

import android.database.ContentObserver;
import android.database.DataSetObserver;
import android.os.Handler;
import com.miui.gallery.search.SearchConstants;
import com.miui.gallery.search.core.Consumer;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.QueryInfo.Builder;
import com.miui.gallery.search.core.context.SearchContext;
import com.miui.gallery.search.core.context.TaskExecutor;
import com.miui.gallery.search.core.result.SourceResult;
import com.miui.gallery.search.core.source.Source;
import com.miui.gallery.search.utils.SearchLog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class QueryPackageHelper {

    private static class BatchQueryTask implements ControllableTask<QueryResult> {
        private boolean mIsCancelled = false;
        private Handler mPublishHandler;
        private final QueryInfo mQueryInfo;
        private QueryResult mQueryResult;
        private Consumer<SourceResult> mQueryTaskReceiver = new Consumer<SourceResult>() {
            public boolean consume(SourceResult value) {
                if (BatchQueryTask.this.mIsCancelled) {
                    return false;
                }
                if (value == null) {
                    throw new RuntimeException("Receive a null source result!");
                }
                List<SourceResult> results = new ArrayList();
                results.add(value);
                boolean accepted = BatchQueryTask.this.mQueryResult.addSourceResults(results);
                if (accepted && BatchQueryTask.this.mReceiveSourceUpdates) {
                    value.registerDataSetObserver(new SourceResultDataSetObserver(value));
                    value.registerContentObserver(new SourceResultContentObserver(value));
                }
                Source source = value.getSource();
                if (source == null) {
                    return accepted;
                }
                boolean needReQuery;
                int sourceIndex = BatchQueryTask.this.mSources.indexOf(source);
                if (sourceIndex >= 0) {
                    BatchQueryTask.this.mQueryTasks[sourceIndex] = null;
                }
                if (value.getResultExtras() == null || !value.getResultExtras().getBoolean("need_requery", false)) {
                    needReQuery = false;
                } else {
                    needReQuery = true;
                }
                if (!needReQuery) {
                    return accepted;
                }
                if (BatchQueryTask.this.mIsCancelled) {
                    return false;
                }
                Builder builder = new Builder().cloneFrom(BatchQueryTask.this.mQueryInfo);
                builder.removeParam("use_persistent_response");
                QueryTask<SourceResult> requeryTask = new QueryTask(builder.build(), source, BatchQueryTask.this.mRequeryTaskReceiver, BatchQueryTask.this.mPublishHandler, 1);
                BatchQueryTask.this.mQueryTasks[BatchQueryTask.this.mSources.size() + sourceIndex] = requeryTask;
                BatchQueryTask.this.mTaskExecutor.submit(requeryTask);
                SearchLog.d("QueryPackageHelper", "Submit requery task, source: [%s]", source.getName());
                return accepted;
            }
        };
        private QueryTask[] mQueryTasks;
        private final boolean mReceiveSourceUpdates;
        private Consumer<SourceResult> mRequeryTaskReceiver = new Consumer<SourceResult>() {
            public boolean consume(SourceResult value) {
                boolean accepted = false;
                if (!BatchQueryTask.this.mIsCancelled) {
                    if (value == null) {
                        throw new RuntimeException("Receive a null source result!");
                    }
                    Source source = value.getSource();
                    if (source != null) {
                        int sourceIndex = BatchQueryTask.this.mSources.indexOf(source);
                        if (sourceIndex >= 0) {
                            BatchQueryTask.this.mQueryTasks[BatchQueryTask.this.mSources.size() + sourceIndex] = null;
                        }
                    }
                    if (value.getErrorInfo() == null || !SearchConstants.isErrorStatus(value.getErrorInfo().getErrorStatus())) {
                        List<SourceResult> results = new ArrayList();
                        results.add(value);
                        accepted = BatchQueryTask.this.mQueryResult.addSourceResults(results);
                        if (accepted && BatchQueryTask.this.mReceiveSourceUpdates) {
                            value.registerDataSetObserver(new SourceResultDataSetObserver(value));
                            value.registerContentObserver(new SourceResultContentObserver(value));
                        }
                    }
                }
                return accepted;
            }
        };
        private final List<Source> mSources;
        private final TaskExecutor<QueryTask> mTaskExecutor;

        private class SourceResultContentObserver extends ContentObserver {
            private final WeakReference<SourceResult> mSourceResultWeakReference;

            public SourceResultContentObserver(SourceResult sourceResult) {
                super(BatchQueryTask.this.mPublishHandler);
                this.mSourceResultWeakReference = new WeakReference(sourceResult);
            }

            public void onChange(boolean selfChange) {
                if (this.mSourceResultWeakReference.get() != null && !BatchQueryTask.this.mIsCancelled) {
                    BatchQueryTask.this.onSourceResultChanged((SourceResult) this.mSourceResultWeakReference.get());
                }
            }
        }

        private class SourceResultDataSetObserver extends DataSetObserver {
            private final WeakReference<SourceResult> mSourceResultWeakReference;

            public SourceResultDataSetObserver(SourceResult sourceResult) {
                this.mSourceResultWeakReference = new WeakReference(sourceResult);
            }

            public void onChanged() {
                if (this.mSourceResultWeakReference.get() != null && !BatchQueryTask.this.mIsCancelled) {
                    BatchQueryTask.this.onSourceResultChanged((SourceResult) this.mSourceResultWeakReference.get());
                }
            }

            public void onInvalidated() {
            }
        }

        public BatchQueryTask(final QueryInfo queryInfo, List<Source> sources, TaskExecutor<QueryTask> taskExecutor, boolean receiveSourceUpdates) {
            this.mQueryInfo = queryInfo;
            this.mSources = sources;
            if (this.mSources.size() > 1) {
                Collections.sort(this.mSources, new Comparator<Source>() {
                    public int compare(Source o1, Source o2) {
                        return -SearchConstants.comparePriority(o1.getPriority(queryInfo), o2.getPriority(queryInfo));
                    }
                });
            }
            this.mTaskExecutor = taskExecutor;
            this.mReceiveSourceUpdates = receiveSourceUpdates;
        }

        public void start() {
            if (this.mIsCancelled) {
                throw new IllegalStateException("Call start() after cancel()!");
            }
            this.mPublishHandler = SearchContext.getInstance().acquirePublishHandler();
            this.mQueryTasks = new QueryTask[(this.mSources.size() * 2)];
            this.mQueryResult = new QueryResult(this.mQueryInfo, this.mSources);
            for (int i = 0; i < this.mSources.size(); i++) {
                querySource(i, true);
            }
        }

        public boolean started() {
            return this.mQueryResult != null;
        }

        public void cancel() {
            SearchLog.d("QueryPackageHelper", "Cancel batch query task for query [%s]", this.mQueryInfo);
            this.mIsCancelled = true;
            if (this.mQueryTasks != null) {
                for (QueryTask queryTask : this.mQueryTasks) {
                    this.mTaskExecutor.cancel(queryTask);
                }
            }
            releasePublishHandler();
        }

        protected void finalize() throws Throwable {
            releasePublishHandler();
        }

        private void releasePublishHandler() {
            if (this.mPublishHandler != null) {
                SearchContext.getInstance().releasePublishHandler();
                this.mPublishHandler = null;
            }
        }

        public QueryResult getResult() {
            return this.mQueryResult;
        }

        public boolean isCanceled() {
            return this.mIsCancelled;
        }

        private void querySource(int index, boolean firstTime) {
            QueryTask oldTask = this.mQueryTasks[index];
            if (oldTask != null) {
                this.mTaskExecutor.cancel(oldTask);
            }
            QueryTask<SourceResult> queryTask = new QueryTask(this.mQueryInfo, (Source) this.mSources.get(index), this.mQueryTaskReceiver, this.mPublishHandler, firstTime ? 0 : 1);
            this.mTaskExecutor.submit(queryTask);
            this.mQueryTasks[index] = queryTask;
        }

        private void onSourceResultChanged(SourceResult sourceResult) {
            Source source = sourceResult.getSource();
            if (source != null) {
                int sourceIndex = this.mSources.indexOf(source);
                if (sourceIndex >= 0) {
                    querySource(sourceIndex, false);
                    return;
                }
                return;
            }
            SearchLog.w("QueryPackageHelper", "Couldn't re-query without source! [%s]", sourceResult);
        }
    }

    public static ControllableTask<QueryResult> getQueryResult(QueryInfo queryInfo, boolean receiveSourceUpdates) {
        SearchContext searchContext = SearchContext.getInstance();
        List<Source> matchSources = searchContext.getMatchedSources(queryInfo);
        if (matchSources != null) {
            return new BatchQueryTask(queryInfo, matchSources, searchContext.getQueryTaskExecutor(), receiveSourceUpdates);
        }
        SearchLog.e("QueryPackageHelper", "No matched source for query info %s", queryInfo);
        return null;
    }
}
