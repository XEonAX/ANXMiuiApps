package com.miui.gallery.provider.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.provider.cache.SearchHistoryItem.Generator;
import com.miui.gallery.provider.cache.SearchHistoryItem.QueryFactory;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.util.StringUtils;
import java.util.ArrayList;
import java.util.List;

public class SearchHistoryManager extends CacheManager<SearchHistoryItem> {
    private static final List<SearchHistoryItem> EMPTY_CACHE = new ArrayList(0);
    private static SearchHistoryManager sSearchHistoryManager;

    public SearchHistoryManager() {
        this.mQueryFactory = new QueryFactory();
        this.mCache = EMPTY_CACHE;
        this.mGenerator = new Generator();
    }

    public void releaseCache() {
        this.mCache = EMPTY_CACHE;
    }

    public Cursor query(String[] projection, String selection, String[] selectionArgs, String orderBy, String groupBy, Bundle options) {
        ensureCache();
        if (!(options == null || TextUtils.isEmpty(options.getString("query_text")))) {
            String extraSelection = "(title LIKE ? OR subTitle LIKE ?)";
            String[] extraArgs = new String[]{options.getString("query_text"), options.getString("query_text")};
            selection = selection == null ? extraSelection : "(" + selection + ") AND " + extraSelection;
            selectionArgs = selectionArgs == null ? extraArgs : StringUtils.mergeStringArray(selectionArgs, extraArgs);
        }
        return super.query(projection, selection, selectionArgs, orderBy, groupBy, options);
    }

    public long insert(long id, ContentValues values) {
        long insertId = -1;
        if (values == null || values.size() <= 0) {
            SearchLog.w(".searchProvider.SearchHistoryManager", "Try to insert history with empty content value!");
            return -1;
        }
        SearchHistoryItem historyItem = (SearchHistoryItem) this.mGenerator.from(id, values);
        if (historyItem == null || TextUtils.isEmpty(historyItem.intentActionURI)) {
            SearchLog.w(".searchProvider.SearchHistoryManager", "Try to insert history with no action uri!");
            return -1;
        }
        if (historyItem.timestamp == null) {
            historyItem.timestamp = Long.valueOf(System.currentTimeMillis());
        }
        synchronized (this.mModifyLock) {
            ArrayList<SearchHistoryItem> out = new ArrayList();
            if (SearchHistoryStorageHelper.addHistoryItem(historyItem, out) > 0) {
                this.mCache = out;
                insertId = 0;
            }
        }
        return insertId;
    }

    public int delete(String selection, String[] args) {
        return deleteAll();
    }

    public int update(String selection, String[] args, ContentValues values) {
        SearchLog.w(".searchProvider.SearchHistoryManager", "[Update] operation not supported! ");
        return 0;
    }

    protected Cursor onCreateCursor(String[] projection, List<SearchHistoryItem> result, String selection, String orderBy, Bundle options) {
        if (options != null) {
            int limit = options.getInt("query_limit", -1);
            while (limit >= 0 && limit < result.size()) {
                result.remove(result.size() - 1);
            }
        }
        return new RawCursor(result, projection, this.mQueryFactory.getMapper());
    }

    public int deleteAll() {
        int count;
        synchronized (this.mModifyLock) {
            count = SearchHistoryStorageHelper.clearSavedHistories();
            if (count > 0 && this.mCache != EMPTY_CACHE) {
                this.mCache.clear();
            }
        }
        return count;
    }

    private void ensureCache() {
        if (this.mCache == EMPTY_CACHE) {
            synchronized (this.mModifyLock) {
                load();
            }
        }
    }

    private void load() {
        if (this.mCache == EMPTY_CACHE) {
            List<SearchHistoryItem> storageHistories = SearchHistoryStorageHelper.getSavedHistories();
            if (storageHistories != null) {
                this.mCache = new ArrayList();
                this.mCache.addAll(storageHistories);
            }
        }
    }

    public static SearchHistoryManager getInstance() {
        if (sSearchHistoryManager == null) {
            synchronized (SearchHistoryManager.class) {
                if (sSearchHistoryManager == null) {
                    sSearchHistoryManager = new SearchHistoryManager();
                }
            }
        }
        return sSearchHistoryManager;
    }
}
