package com.miui.gallery.search.core.source.local;

import android.database.ContentObserver;
import android.net.Uri;

public interface ContentCacheProvider<T> {
    Uri getContentUri();

    T loadContent();

    void registerContentObserver(Uri uri, boolean z, ContentObserver contentObserver);

    void unregisterContentObserver(ContentObserver contentObserver);
}
