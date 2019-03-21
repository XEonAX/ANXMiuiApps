package com.miui.gallery.provider.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.provider.cache.CacheItem.Generator;
import com.miui.gallery.provider.cache.CacheItem.Merger;
import com.miui.gallery.provider.cache.CacheItem.QueryFactory;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;

public abstract class CacheManager<T extends CacheItem> {
    protected List<T> mCache;
    protected Generator<T> mGenerator;
    protected final Object mModifyLock = new Object();
    protected QueryFactory<T> mQueryFactory;

    public Cursor query(String[] projection, String selection, String[] selectionArgs, String orderBy, String groupBy, Bundle options) {
        List<T> result;
        long queryStart = System.currentTimeMillis();
        Filter<T> filter = Filter.from(selection, selectionArgs, this.mQueryFactory);
        synchronized (this.mModifyLock) {
            result = filter(filter);
        }
        if (!TextUtils.isEmpty(groupBy)) {
            result = group(result, groupBy);
        }
        if (!(TextUtils.isEmpty(orderBy) || result.isEmpty())) {
            result = sort(result, orderBy);
        }
        Log.d(".provider.cache.CacheManager", "query cost: %sms", Long.valueOf(System.currentTimeMillis() - queryStart));
        return onCreateCursor(projection, result, selection, orderBy, options);
    }

    protected Cursor onCreateCursor(String[] projection, List<T> result, String selection, String orderBy, Bundle options) {
        return new MemoryCursor(new DataResult(projection, result, this.mQueryFactory.getMapper()), selection);
    }

    public long insert(long id, ContentValues values) {
        T item = this.mGenerator.from(id, values);
        synchronized (this.mModifyLock) {
            if (this.mCache.contains(item)) {
            } else {
                this.mCache.add(item);
            }
        }
        return id;
    }

    public int delete(String selection, String[] args) {
        int count;
        Log.d(".provider.cache.CacheManager", "deleting %s, %s", selection, Arrays.toString(args));
        synchronized (this.mModifyLock) {
            count = internalDelete(selection, args, this.mCache);
        }
        Log.d(".provider.cache.CacheManager", "delete finished");
        return count;
    }

    protected final int internalDelete(String selection, String[] args, List<T> cache) {
        int count = 0;
        for (T item : filter(Filter.from(selection, args, this.mGenerator))) {
            cache.remove(item);
            Log.d(".provider.cache.CacheManager", "deleted %s", (Object) item);
            count++;
        }
        return count;
    }

    protected ContentValues filterLogInfo(ContentValues values) {
        return values;
    }

    public int update(String selection, String[] args, ContentValues values) {
        int count;
        Log.d(".provider.cache.CacheManager", "updating %s, args: %s with ContentValues[%s]", selection, Arrays.toString(args), filterLogInfo(values));
        synchronized (this.mModifyLock) {
            count = internalUpdate(selection, args, values);
        }
        Log.d(".provider.cache.CacheManager", "update finished");
        return count;
    }

    protected final int internalUpdate(String selection, String[] args, ContentValues values) {
        int count = 0;
        Filter<T> filter = Filter.from(selection, args, this.mGenerator);
        synchronized (this.mModifyLock) {
            List<T> items = filter(filter);
        }
        for (T item : items) {
            this.mGenerator.update(item, values);
            Log.d(".provider.cache.CacheManager", "updated %s", (Object) item);
            count++;
        }
        return count;
    }

    protected List<T> filter(Filter<T> filter) {
        long start = System.currentTimeMillis();
        ArrayList<T> result = new ArrayList(this.mCache.size());
        for (CacheItem item : this.mCache) {
            if (filter.filter(item) != null) {
                result.add(item);
            }
        }
        Log.d(".provider.cache.CacheManager", "filter cost: %sms", Long.valueOf(System.currentTimeMillis() - start));
        return result;
    }

    protected List<T> group(List<T> list, String groupBy) {
        long start = System.currentTimeMillis();
        int index = this.mQueryFactory.getMapper().getIndex(groupBy);
        Merger<T> merger = this.mQueryFactory.getMerger(index);
        if (index == -1) {
            throw new IllegalArgumentException(groupBy + " not found.");
        }
        HashMap<Object, T> results = new HashMap((list.size() * 4) / 3);
        for (T item : list) {
            Object key = item.get(index, false);
            CacheItem inResult = (CacheItem) results.get(key);
            if (inResult == null) {
                results.put(key, item);
            } else {
                results.put(key, merger.merge(inResult, item, index));
            }
        }
        List<T> result = new ArrayList(results.values());
        Log.d(".provider.cache.CacheManager", "group cost: %sms", Long.valueOf(System.currentTimeMillis() - start));
        return result;
    }

    private List<T> sort(List<T> result, String orderBy) {
        boolean desc = false;
        long sortStart = System.currentTimeMillis();
        int spacePos = orderBy.indexOf(32);
        String identifier = orderBy.substring(0, spacePos > 0 ? spacePos : orderBy.length());
        int index = this.mQueryFactory.getMapper().getIndex(identifier);
        if (index < 0) {
            throw new IllegalArgumentException(identifier + " not found");
        }
        if (spacePos > 0 && orderBy.substring(spacePos, orderBy.length()).trim().equalsIgnoreCase("desc")) {
            desc = true;
        }
        sort(result, index, desc);
        Log.d(".provider.cache.CacheManager", "sort cost: %sms", Long.valueOf(System.currentTimeMillis() - sortStart));
        return result;
    }

    protected void sort(List<T> result, int index, boolean desc) {
        Comparator<T> sortComparator = this.mQueryFactory.getComparator(index, desc);
        if (sortComparator != null) {
            Collections.sort(result, sortComparator);
        }
    }
}
