package com.miui.gallery.provider;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.provider.cache.SearchHistoryManager;
import com.miui.gallery.provider.cache.SearchIconManager;
import com.miui.gallery.search.SearchContract.History;

public class SearchProvider extends ContentProvider {
    private static final UriMatcher sUriMatcher = new UriMatcher(-1);
    private ContentResolver mContentResolver;
    private SearchHistoryManager mSearchHistoryManager = null;
    private SearchIconManager mSearchIconManager = null;

    private class ContentResolver extends GalleryContentResolver {
        private ContentResolver() {
        }

        protected Object matchUri(Uri uri) {
            return Integer.valueOf(SearchProvider.sUriMatcher.match(uri));
        }

        protected void notifyInternal(Uri uri, ContentObserver observer, boolean sync, int syncReason) {
            switch (SearchProvider.sUriMatcher.match(uri)) {
                case 1:
                    SearchProvider.this.getContext().getContentResolver().notifyChange(History.URI, observer, false);
                    return;
                default:
                    return;
            }
        }
    }

    static {
        sUriMatcher.addURI("com.miui.gallery.search", "history", 1);
        sUriMatcher.addURI("com.miui.gallery.search", "icon", 2);
    }

    public boolean onCreate() {
        this.mSearchHistoryManager = new SearchHistoryManager();
        this.mSearchIconManager = new SearchIconManager();
        this.mContentResolver = new ContentResolver();
        return true;
    }

    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        int matchResult = sUriMatcher.match(uri);
        switch (matchResult) {
            case 1:
                Bundle bundle = new Bundle();
                if (uri.getQueryParameter("query_limit") != null) {
                    bundle.putInt("query_limit", Integer.valueOf(uri.getQueryParameter("query_limit")).intValue());
                }
                if (!TextUtils.isEmpty(uri.getQueryParameter("query_text"))) {
                    bundle.putString("query_text", uri.getQueryParameter("query_text"));
                }
                Cursor cursor = this.mSearchHistoryManager.query(projection, selection, selectionArgs, sortOrder, null, bundle);
                if (cursor == null) {
                    return cursor;
                }
                registerNotifyUri(cursor, matchResult);
                return cursor;
            case 2:
                String iconUri = uri.getQueryParameter("icon_uri");
                if (TextUtils.isEmpty(iconUri)) {
                    return null;
                }
                return this.mSearchIconManager.query(Uri.parse(iconUri), projection, null);
            default:
                return null;
        }
    }

    public String getType(Uri uri) {
        return null;
    }

    public Uri insert(Uri uri, ContentValues values) {
        long id = -1;
        switch (sUriMatcher.match(uri)) {
            case 1:
                id = this.mSearchHistoryManager.insert(-1, values);
                break;
        }
        if (id != -1) {
            notifyChange(uri);
        }
        if (id != -1) {
            return ContentUris.withAppendedId(uri, id);
        }
        return null;
    }

    public int delete(Uri uri, String selection, String[] selectionArgs) {
        int count = 0;
        switch (sUriMatcher.match(uri)) {
            case 1:
                count = this.mSearchHistoryManager.delete(selection, selectionArgs);
                break;
        }
        if (count > 0) {
            notifyChange(uri);
        }
        return count;
    }

    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        int count = 0;
        switch (sUriMatcher.match(uri)) {
            case 1:
                count = this.mSearchHistoryManager.update(selection, selectionArgs, values);
                break;
        }
        if (count > 0) {
            notifyChange(uri);
        }
        return count;
    }

    private void notifyChange(Uri uri) {
        this.mContentResolver.notifyInternal(uri, null, false, 0);
    }

    private void registerNotifyUri(Cursor cursor, int matchResult) {
        switch (matchResult) {
            case 1:
                cursor.setNotificationUri(getContext().getContentResolver(), History.URI);
                return;
            default:
                return;
        }
    }

    public void onLowMemory() {
        this.mSearchHistoryManager.releaseCache();
        this.mSearchIconManager.releaseCache();
    }

    public void onTrimMemory(int level) {
        if (level >= 5) {
            this.mSearchHistoryManager.releaseCache();
            this.mSearchIconManager.releaseCache();
        }
    }
}
