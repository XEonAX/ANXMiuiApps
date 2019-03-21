package com.miui.gallery.model;

import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.os.Bundle;
import com.miui.gallery.loader.BaseLoader;
import com.miui.gallery.loader.CloudSetLoader;
import com.miui.gallery.loader.StorageSetLoader;
import java.io.File;

public class LocalSource extends PhotoLoaderSource {
    private static UriMatcher sUriMatcher;

    public LocalSource() {
        if (sUriMatcher == null) {
            sUriMatcher = new UriMatcher(-1);
            sUriMatcher.addURI("com.miui.gallery.cloud.provider", "media", 0);
            sUriMatcher.addURI("com.miui.gallery.cloud.provider", "album_media", 0);
            sUriMatcher.addURI("com.miui.gallery.cloud.provider", "share_album_media/#", 0);
            sUriMatcher.addURI("com.miui.gallery.cloud.provider", "cloud_and_share", 0);
            sUriMatcher.addURI("com.miui.gallery.open", "raw/*", 1);
            sUriMatcher.addURI("com.miui.gallery.cloud.provider", "recent_discovered_media", 0);
        }
    }

    public boolean match(Uri uri, Bundle data) {
        if (uri == null || !"content".equals(uri.getScheme()) || ((!"com.miui.gallery.cloud.provider".equals(uri.getAuthority()) && !"com.miui.gallery.open".equals(uri.getAuthority())) || sUriMatcher.match(uri) == -1)) {
            return false;
        }
        return true;
    }

    public BaseLoader createDataLoader(Context context, Uri uri, Bundle data) {
        switch (sUriMatcher.match(uri)) {
            case 0:
                return new CloudSetLoader(context, uri, data);
            case 1:
                return new StorageSetLoader(context, Uri.fromFile(new File(uri.getLastPathSegment())), data);
            default:
                return null;
        }
    }
}
