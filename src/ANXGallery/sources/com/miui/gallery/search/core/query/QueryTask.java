package com.miui.gallery.search.core.query;

import android.os.Handler;
import com.miui.gallery.search.core.Consumer;
import com.miui.gallery.search.core.ConsumerUtils;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.context.PriorityTaskExecutor.PriorityTask;
import com.miui.gallery.search.core.result.SuggestionResult;
import com.miui.gallery.search.core.source.SuggestionResultProvider;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.threadpool.ThreadPool.JobContext;

public class QueryTask<C extends SuggestionResult> extends PriorityTask {
    private final Consumer<C> mConsumer;
    private final Handler mHandler;
    private final SuggestionResultProvider<C> mProvider;
    private final QueryInfo mQueryInfo;

    public QueryTask(QueryInfo queryInfo, SuggestionResultProvider<C> provider, Consumer<C> consumer, Handler handler, int priority) {
        this.mQueryInfo = queryInfo;
        this.mProvider = provider;
        this.mConsumer = consumer;
        this.mHandler = handler;
        this.mPriority = priority;
    }

    public Void run(JobContext jc) {
        if (!jc.isCancelled()) {
            long currentTime = System.currentTimeMillis();
            C suggestionResult = this.mProvider.getSuggestions(this.mQueryInfo);
            if (!jc.isCancelled()) {
                Object obj;
                ConsumerUtils.consumeAsync(this.mHandler, this.mConsumer, suggestionResult);
                String str = "QueryTask";
                String str2 = "%s cost %sms, result %s";
                String queryTask = toString();
                String valueOf = String.valueOf(System.currentTimeMillis() - currentTime);
                if (suggestionResult == null || suggestionResult.isEmpty() || suggestionResult.getData() == null) {
                    obj = "is empty";
                } else {
                    obj = suggestionResult.getData().getCount() + " items@" + Integer.toHexString(suggestionResult.hashCode());
                }
                SearchLog.d(str, str2, queryTask, valueOf, obj);
            }
        }
        return null;
    }

    public String toString() {
        return "From " + this.mProvider + "[" + this.mQueryInfo + "]";
    }
}
