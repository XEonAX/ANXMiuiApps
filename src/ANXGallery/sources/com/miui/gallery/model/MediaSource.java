package com.miui.gallery.model;

import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.os.Bundle;
import com.miui.gallery.loader.BaseLoader;
import com.miui.gallery.loader.MediaSetLoader;

public class MediaSource extends PhotoLoaderSource {
    private static UriMatcher sUriMatcher;

    public MediaSource() {
        if (sUriMatcher == null) {
            sUriMatcher = new UriMatcher(-1);
            sUriMatcher.addURI("media", "external/images/media/#", 0);
            sUriMatcher.addURI("media", "external/video/media/#", 1);
            sUriMatcher.addURI("media", "external/file/#", 2);
            sUriMatcher.addURI("media", "internal/images/media/#", 3);
            sUriMatcher.addURI("media", "internal/video/media/#", 4);
            sUriMatcher.addURI("media", "internal/file/#", 5);
        }
    }

    public boolean match(Uri uri, Bundle data) {
        if (uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority())) {
            return true;
        }
        return false;
    }

    public BaseLoader createDataLoader(Context context, Uri uri, Bundle data) {
        switch (sUriMatcher.match(uri)) {
            case 0:
            case 1:
            case 2:
                return new MediaSetLoader(context, uri, data, false);
            case 3:
            case 4:
            case 5:
                return new MediaSetLoader(context, uri, data, true);
            default:
                return null;
        }
    }
}
