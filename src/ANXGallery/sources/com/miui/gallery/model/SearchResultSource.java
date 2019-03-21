package com.miui.gallery.model;

import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.os.Bundle;
import com.miui.gallery.loader.BaseLoader;
import com.miui.gallery.loader.SearchResultSetLoader;

public class SearchResultSource extends PhotoLoaderSource {
    private static UriMatcher sUriMatcher;

    public SearchResultSource() {
        if (sUriMatcher == null) {
            sUriMatcher = new UriMatcher(0);
            sUriMatcher.addURI("com.miui.gallery.cloud.provider", "searchResultPhoto", 1);
        }
    }

    public boolean match(Uri uri, Bundle data) {
        if (uri == null || !"content".equals(uri.getScheme()) || !"com.miui.gallery.cloud.provider".equals(uri.getAuthority()) || sUriMatcher.match(uri) == 0) {
            return false;
        }
        return true;
    }

    public BaseLoader createDataLoader(Context context, Uri uri, Bundle data) {
        return new SearchResultSetLoader(context, uri, data);
    }
}
