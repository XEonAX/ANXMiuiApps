package com.miui.gallery.search.core.source.local;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.suggestion.Suggestion;
import java.util.List;

public abstract class LocalCacheBackedSuggestionSource<T> extends LocalSingleSectionSuggestionSource implements ContentCacheProvider<T> {
    private ContentCache<T> mCache = new ContentCache(this);

    protected abstract List<Suggestion> handleQuery(T t, String str, QueryInfo queryInfo);

    public LocalCacheBackedSuggestionSource(Context context) {
        super(context);
    }

    public void registerContentObserver(Uri uri, boolean notifyForDescendants, ContentObserver observer) {
        this.mContext.getContentResolver().registerContentObserver(uri, notifyForDescendants, observer);
    }

    public void unregisterContentObserver(ContentObserver observer) {
        this.mContext.getContentResolver().unregisterContentObserver(observer);
    }

    protected List<Suggestion> querySuggestion(String query, QueryInfo queryInfo) {
        return handleQuery(this.mCache.getCache(), query, queryInfo);
    }
}
