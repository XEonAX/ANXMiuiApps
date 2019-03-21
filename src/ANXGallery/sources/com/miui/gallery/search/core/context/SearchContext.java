package com.miui.gallery.search.core.context;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.display.SuggestionViewFactory;
import com.miui.gallery.search.core.query.QueryTask;
import com.miui.gallery.search.core.source.Source;
import com.miui.gallery.search.core.source.Sources;
import com.miui.gallery.search.utils.SearchLog;
import java.util.ArrayList;
import java.util.List;

public class SearchContext {
    private static volatile SearchContext sInstance;
    private Context mContext;
    private int mHandlerRef = 0;
    private TaskExecutor mIconLoaderExecutor;
    private Handler mPublishHandler;
    private final Object mPublishLock = new Object();
    private HandlerThread mPublishThread;
    private TaskExecutor<QueryTask> mQueryTaskExecutor;
    private Sources mSources;
    private SuggestionViewFactory mSuggestionViewFactory;

    private SearchContext() {
        init(SearchContextConfigurationImp.createDefault(GalleryApp.sGetAndroidContext()));
    }

    public Handler acquirePublishHandler() {
        Handler handler;
        synchronized (this.mPublishLock) {
            this.mHandlerRef++;
            if (this.mHandlerRef > 0 && this.mPublishHandler == null) {
                SearchLog.d("SearchContext", "On create public thread");
                this.mPublishThread = new HandlerThread("search_publish_thread");
                this.mPublishThread.start();
                this.mPublishHandler = new Handler(this.mPublishThread.getLooper());
            }
            handler = this.mPublishHandler;
        }
        return handler;
    }

    public void releasePublishHandler() {
        synchronized (this.mPublishLock) {
            int i = this.mHandlerRef - 1;
            this.mHandlerRef = i;
            if (i == 0) {
                SearchLog.d("SearchContext", "On quit public thread");
                this.mPublishThread.quit();
                this.mPublishThread = null;
                this.mPublishHandler = null;
            }
            if (this.mHandlerRef < 0) {
                throw new RuntimeException("Invalid publish handler reference");
            }
        }
    }

    public static SearchContext getInstance() {
        if (sInstance == null) {
            synchronized (SearchContext.class) {
                if (sInstance == null) {
                    sInstance = new SearchContext();
                }
            }
        }
        return sInstance;
    }

    public void init(SearchContextConfiguration configuration) {
        this.mContext = configuration.getContext();
        this.mSources = configuration.getSources();
        this.mSources.update();
        this.mQueryTaskExecutor = configuration.getQueryTaskExecutor();
        this.mIconLoaderExecutor = configuration.getIconLoaderExecutor();
        this.mSuggestionViewFactory = configuration.getSuggestionViewFactory();
    }

    public Sources getSources() {
        return this.mSources;
    }

    public List<Source> getSourceList() {
        if (this.mSources != null) {
            return new ArrayList(getSources().getSources());
        }
        return new ArrayList();
    }

    public TaskExecutor getIconLoaderExecutor() {
        return this.mIconLoaderExecutor;
    }

    public TaskExecutor<QueryTask> getQueryTaskExecutor() {
        return this.mQueryTaskExecutor;
    }

    public SuggestionViewFactory getSuggestionViewFactory() {
        return this.mSuggestionViewFactory;
    }

    public List<Source> getMatchedSources(QueryInfo queryInfo) {
        return getMatchedSources(queryInfo, getSourceList());
    }

    public List<Source> getMatchedSources(QueryInfo queryInfo, List<Source> sourcesToQuery) {
        List<Source> matchedSources = new ArrayList();
        for (Source source : sourcesToQuery) {
            if (source.match(queryInfo)) {
                matchedSources.add(source);
            }
        }
        return matchedSources.isEmpty() ? null : matchedSources;
    }
}
